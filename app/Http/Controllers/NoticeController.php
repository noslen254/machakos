<?php

namespace App\Http\Controllers;

use App\Exports\Notices;
use App\GroupMails;
use App\groupsms;
use Illuminate\Http\Request;
use RealRashid\SweetAlert\Facades\Alert;
use Maatwebsite\Excel\Facades\Excel;
use App\User;
use App\ActivityLog;
use App\Group;
use App\Client;
use Auth;
use DB;
use PDF;
use Mail;
use Gate;
use URL;
use Pnlinh\InfobipSms\Facades\InfobipSms;
use function GuzzleHttp\Promise\all;

class NoticeController extends Controller
{

public function index(){
    //create a model and migration for notices
    //add new notice
    // the table should have group_id, subject,message,platform(ssm or email)
    $cGroup=Group::all();
    $communications = GroupMails::orderBy('created_at','DESC')->paginate(10);
	return view('communication.notice',compact('communications','cGroup'));
}


public function searchNotice(){
    $search = request('search');
    if ($search!=''){
        $communications = GroupMails::where('filter','Like','%'.$search.'%')
                                ->orWhere('subject','Like','%'.$search.'%')
                                ->orWhere('message','Like','%'.$search.'%')
                                ->orWhere('mode','Like','%'.$search.'%')
                                ->orWhere('category','Like','%'.$search.'%')
                                ->orderBy('created_at','Desc')->paginate(10);
        if (count($communications) > 0){
            return view('communication.notice',compact('communications'))
                        ->with('count',(request()->input('page',1) -1) *10);
        }
        else{
            Alert::info('No results found');
            return redirect('/notices');
        }
    }
    else{
        return redirect('notices');
    }
}
    public function addNewNotice(Request $request){
    $recipient = 0;
        $data=request()->validate([
          'subject'=>['required'],
          'group_id'=>['required'],
          'message'=>['required'],
          // 'attachment'=>['image','mimes:jpeg,png,jpg,gif,svg','max:2048'],
          'smsMode'=>['required_without_all:emailMode'],
          'emailMode'=>['required_without_all:smsMode'],
        ]);
        foreach (($filter = $request->input(array('group_id'))) as $roles){
            ($roles);
        }
        //$attachment = $request->input('attachment');
        $subject = $request->input('subject');
        $message = $request->input('message');
        $category = $request->input('emailMode');
    //check if message selected
    if(isset($data['emailMode'])){
    $emailData=array('subject'=>$data['subject'],  'messagebody'=>$data['message']);
    $viewMessage=[
     'subject'=>$data['subject'],
     'message'=>$data['message'],
    ];
    view()->share(compact('viewMessage'));

    $sendMail= Mail::send('noticeMails.notice',$emailData,function($message) use ($data){
    //$url=request('attachment')->store('Attachments', 'public');
    //$attachmentURL="http://localhost/machakos/public/storage/".$url;
      //looping through the groups
      foreach($data['group_id'] as $group){
         foreach (Client::where('group_id',$group)->get() as $member) {
            $message->to($member->email);
            $message->subject($data['subject']);
            //$message->attach($attachmentURL);
            $message->from(env('MAIL_USERNAME'));
         }
       }
    });
    if ($sendMail){
        Alert::Warning('Failed','Mail Has Not been send');
        return redirect()->back();
    }
    else{
        $save = DB::table('group_mails')->insert([
            'group_id'=>$roles,
            'subject'=>$subject,
            'message'=>$message,
            'category'=>$category,
            'mode'=>'email',
            //'attachment'=>$attachment=request('attachment')->store('Attachments','public')
        ]);
        Alert::success('Success','Mail Has been send');
        return redirect('/notices');
    }

    }
    if(isset($data['smsMode'])){
      foreach($data['group_id'] as $group){
         foreach (Client::where('group_id',$group)->get() as $member) {
            InfobipSms::send($member->phone, $data['message']);
            groupsms::create($data);
            Alert::success('Success','SMS as Been Send');
            return redirect('/notices');
         }
       }
    }

    //saving message sent

}

public function deleteNotice($id){

// delete the notice and all its related details
    if (Gate::allows('isAdmin')){
        abort('404');
    }
    $delete = GroupMails::findOrFail($id)->delete();
    Alert::success('Success','Notice Has Been removed');
    return redirect('/notices');
}


public function viewNotice(GroupMails $id){

// get all notice data
//	$group=count(DB::select('SELECT *FROM clients WHERE group_id=?',[$id]));
//	$failedEmails=count(DB::select('SELECT *FROM failed_mails WHERE group=?',[$id]));
//	$failedSMS=count(DB::select('SELECT *FROM failed_sms WHERE group=?',[$id]));
//	$notices=DB::select('SELECT * FROM group_mails WHERE `group_id`=?',[$id]);
//	$sms=DB::select('SELECT * FROM groupsms WHERE `group`=?',[$id]);
//	$sentEmails=count(DB::select('SELECT * FROM group_mails WHERE `group`=?',[$id]));
//	$sentSms=count(DB::select('SELECT * FROM groupsms WHERE `group`=?',[$id]));
//	$data=array('notices'=>$notices,'sms'=>$sms,'sentSms'=>$sentSms,'sentEmails'=>$sentEmails,'failedSMS'=>$failedSMS,'group'=>$group,'failedEmails'=>$failedEmails);
// simplify the process by using relationships
    $cGroup = Group::get();
return view('communication.viewNotice',compact('id','cGroup'));

}
public function exportExcel(){
    if (Gate::allows('isAdmin')){
        abort('404');
    }
    $dataCount = count(
        DB::table('group_mails')
            ->select('group_mails.subject','group_mails.message','group_mails.mode','group_mails.category','group_mails.created_at')
            ->orderBy('created_at','DESC')
            ->get()
    );
    if ($dataCount > 0){
        return Excel::download(new Notices(),'notices.xlsx');
    }
    else{
        Alert::warning('Failed','No Records found');
        return redirect('/notices');
    }
}
public function exportCSV(){
    if (Gate::allows('isAdmin')){
        abort(404);
    }
    $dataCount =count(
        DB::table('group_mails')
            ->select('group_mails.subject','group_mails.message','group_mails.mode','group_mails.category','group_mails.created_at')
            ->orderBy('created_at','DESC')
            ->get()
    );
    if ($dataCount > 0){
        return Excel::download(new Notices(),'notices.csv');
    }
    else{
        Alert::warning('Failed','No records Found');
        return redirect('/notices');
    }

}
    public function noticesPDF(){
        if (Gate::allows('isAdmin')){
            abort(404);
        }
        $notices = DB::table('group_mails')
            ->select('group_mails.filter','group_mails.subject','group_mails.message','group_mails.mode','group_mails.category','group_mails.created_at')
            ->orderBy('created_at','DESC')
            ->get();
        view()->share(['notices'=>$notices]);
        $pdf = PDF::loadView('downloads.noticePDF')->setpaper('a4','landscape');
        return $pdf->download('notices.pdf');
    }


}



