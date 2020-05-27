<?php

namespace App\Http\Controllers;

use App\Exports\CLients;
use App\FirstTee;
use App\SingleMail;
use App\SingleNotice;
use Illuminate\Http\Request;
use Pnlinh\InfobipSms\Facades\InfobipSms;
use RealRashid\SweetAlert\Facades\Alert;
use Maatwebsite\Excel\Facades\Excel;
use App\User;
use App\ActivityLog;
use App\Client;
use App\Group;
use Auth;
use DB;
use PDF;
use Gate;
use Mail;

class MembersConroller extends Controller
{

public function index(){
$users=Client::orderBy('created_at','desc')->paginate(10);
$cGroup=Group::all();
return view('clients.index',compact('users','cGroup'))->with('count', (request()->input('page',1) -1)*10);
}
public function addClient(){
    $data =request()->validate([
        'firstName'=>['required','min:3'],
        'middleName'=>['required','min:3'],
        'lastName'=>['required','min:3'],
        'email'=>['required','unique:clients','email'],
        'phone'=>'regex:/(2547)[0-9]{8}/|string|numeric|digits:12|unique:clients|nullable',
        'location'=>['required'],
        'workPlace'=>['required'],
        'group_id'=>['required']
    ]);
    Client::create($data);
    Alert::success('Success','Member Has Been Added');
    return redirect('members');
}


public function sortGroup(){
$users=Client::where('group_id',request('filter'))->orderBy('created_at','desc')->paginate(10);
$category=Group::find(request('filter'));
$cGroup=Group::all();
return view('clients.index',compact('users','cGroup','category'))
            ->with('count', (request()->input('page',1) -1)*10);
}
public function viewClient(Client $client){
    $groups = Group::all();
    $mails = SIngleNotice::get();
    $notices = DB::select('SELECT * FROM single_notices');
    $tees = FirstTee::get();
    return view('clients.viewClient',compact('client','groups','mails','tees','notices'));
}
public function update(Request $request, $user){
    if (Gate::allows('isAdmin')){
        abort('404');
    }
    $data = request()->validate([
        'firstName'=>['required','min:2','max:20'],
        'middleName'=>['required','min:2','max:20'],
        'lastName'=>['required','min:2','max:20'],
        'email'=>['required','email'],
        'phone'=>['required'],
        'location'=>['required'],
        'workPlace'=>['required'],
        'group_id'=>['required']
    ]);
    Client::find($user)->update($data);
    Alert::success('Success','Member Has Been Updated');
    return redirect('/members');
}

public function updateViewClient(Request $request, $client ){
    if (Gate::allows('isAdmin')){
        abort(404);
    }
    $data = request()->validate([
        'firstName'=>['min:2','max:20'],
        'middleName'=>['required','min:2','max:20'],
        'lastName'=>['required','min:2','max:20'],
        'email'=>['required','email'],
        'phone'=>['required'],
        'location'=>['required'],
        'workPlace'=>['required'],
        'group_id'=>['required']
    ]);
    Client::find($client)->update($data);
    Alert::success('Success','Member Has Been Updated');
    return redirect()->back();
}


public function searchClient(){
$search=request('search');
if($search!=''){

$users=Client::where('firstName','Like','%'.$search.'%')
             ->orWhere('middleName','Like','%'.$search.'%')
             ->orWhere('lastName','Like','%'.$search.'%')
             ->orWhere('phone','Like','%'.$search.'%')
             ->orWhere('email','Like','%'.$search.'%')
            ->orWhere('group_id','Like','%'.$search.'%')
             ->orderBy('created_at','desc')->paginate(10);
$cGroup=Group::all();

if(count($users)>0){
return view('clients.index',compact('users','cGroup'))
            ->with('count', (request()->input('page',1) -1)*10);
}else{
    Alert::info('Info','No results found');
	return redirect('/members');
}
}else{
	return redirect('/members');
}

}

public function exportExcel(){
    if (Gate::allows('isAdmin')){
        abort('404');
    }
    $dataCount = count(
        DB::table('clients')
            ->join('groups','groups.id','clients.group_id')
            ->select('clients.firstName','clients.lastName','clients.phone','clients.email','groups.name','clients.created_at')
            ->orderBy('clients.created_at','desc')
            ->get()
    );
    if ($dataCount > 0){
        return Excel::download(new CLients(),'clients.xlsx');
    }
    else{
        Alert::warning('Failed','No Records Found');
        return redirect('/members');
    }
}
public function exportCSV(){
    if (Gate::allows('isAdmin')){
        abort('404');
    }
    $dataCount = count(
        DB::table('clients')
            ->join('groups','groups.id','clients.group_id')
            ->select('clients.firstName','clients.lastName','clients.phone','clients.email','groups.name','clients.created_at')
            ->orderBy('clients.created_at','desc')
            ->get()
    );
    if ($dataCount > 0){
        return Excel::download(new CLients(),'clients.csv');
    }
    else{
        Alert::warning('Failed','No records Found');
        return redirect('/members');
    }
}
public function addNotice(Request $request){
    $data = request()->validate([
        'email'=>['required','email'],
        'subject'=>['required'],
        'message'=>['required'],
    ]);
    $filter = $request->input(array('client_id'));
    $email=$request->input('email');
    $subject = $request->input('subject');
    $message = $request->input('message');
    //
    $emailData = array('subject'=>$data['subject'],'message'=>$data['message']);
    $viewMessage = [
        'email'=>$data['email'],
        'subject'=>$data['subject'],
        'message'=>$data['message']
    ];
    view()->share(compact('viewMessage'));
    $sendMail = Mail::send('noticeMails.notice',$emailData,function ($message) use ($data){
//        foreach ($data['email'] as $email){
        $email = $data['email'];
        $subject = $data['subject'];
            foreach (Client::where('email',$email)->get() as $member){
//                dd($member);
                $message->to($member->email);
                $message->subject($subject);
                $message->from(env('MAIL_USERNAME'));
            }
//        }
    });
    if ($sendMail){
        Alert::warning('Failed','Failed to send mail');
        return redirect()->back();
    }
    else{
        $save = DB::table('s_ingle_notices')->insert([
            'client_id'=>$filter,
            'email'=>$email,
            'subject'=>$subject,
            'message'=>$message,
            'created_at'=>date(now())
        ]);
        Alert::success('Success','Mail has been send successfully');
        return redirect('/members');
    }
}
    public function addMessage(){
    $data = request()->validate([
        'phone'=>['required'],
        'message'=>['required']
    ]);
    $smsData = array('phone'=>$data['phone'],'message'=>$data['message']);
    $viewMessage = [
        'phone'=>$data['phone'],
        'message'=>$data['message']
    ];
    view()->share(compact('viewMessage'));
    $phone=$data['phone'];
    foreach (Client::where('phone',$phone)->get() as $member){
        InfobipSms::send($member->phone,$data['message']);
        Alert::success('Success','SMS Has Been Sent');
        return redirect('members');
    }
    }

    public function clientsPDF(){
        if (Gate::allows('isAdmin')){
            abort(404);
        }
        $clients=DB::table('clients')
            ->join('groups','groups.id','clients.group_id')
            ->select('clients.group_id','clients.firstName','clients.middleName','clients.lastName','clients.phone','clients.email','groups.name','clients.location', 'clients.workPlace','clients.created_at')
            ->orderBy('clients.created_at','desc')
            ->get();
        view()->share(['clients'=>$clients]);
        $pdf = PDF::loadView('downloads.membersPDF')->setPaper('a4','landscape');
        return $pdf->download('members.pdf');
    }
}
