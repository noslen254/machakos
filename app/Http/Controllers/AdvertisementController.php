<?php

namespace App\Http\Controllers;

use App\Advertisement;
use App\Client;
use App\Exports\Advertisements;
use App\Group;
use App\Mail\PosterMail;
use Illuminate\Http\Request;
use Illuminate\Mail\Mailable;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Storage;
use RealRashid\SweetAlert\Facades\Alert;
use Mail;
use Gate;
use Excel;
use PDF;
use URL;

class AdvertisementController extends Controller
{
    //
    public function index(){
        $groups = Group::all();
        $adverts = Advertisement::orderBy('created_at','desc')->paginate(10);
        return view('communication.adverts',compact('groups','adverts'));
    }
    public function send(Request $request){
        $data = request()->validate([
            'group_id'=>['required'],
//            'recipient'=>['required'],
            'subject'=>['required'],
            'message'=>['required'],
            'image'=>['required','image','mimes:jpeg,png,jpg,gif,svg','max:2048'],
//            'category'=>['required']
        ]);
        foreach (($groupId = $request->input(array('group_id'))) as $roles){
            ($roles);
        }
        $subject = $request->input('subject');
        $message=$request->input('message');
        $image = $request->input('image');
        $emailData = array('subject'=>$data['subject'],'message'=>$data['message'],'image'=>$data['image']);
        $viewMessage = [
            'subject'=>$data['subject'],
            'message'=>$data['message'],
            'image'=>$data['image']
        ];
        view()->share(compact('viewMessage'));
        $url = $request->file('image');
        DB::table('advertisements')->insert([
            'group_id'=>$roles,
            'subject'=>$subject,
            'message'=>$message,
            'image'=>$image=request('image')->store('adverts','public'),
            'category'=>'Poster',
            'created_at'=>date(now())
        ]);
        $sendEmail = \Mail::send('noticeMails.adverts',$emailData,function ($message) use($data,$url){
//            $url = request('image')->store('adverts','public');
//            $imageUrl = "http://localhost/machakos/public/storage/".$url;
            foreach ($data['group_id'] as $group){
                foreach (Client::where('group_id',$group)->get() as $member){
                    $message->to($member->email);
                    $message->subject($data['subject']);
//                    $message->attach(
//                        $url->getRealPath(),array(
//                            'as'=>$url->getClientOriginalName(),
//                            'mime'=>$url->getMimeType()
//                        )
//                    );
                    $message->from(env('MAIL_USERNAME'));
                }
            }
        });
        if ($sendEmail){
            Alert::warning('Failed','Failed To send Mail');
            return redirect('/advertisements');
        }
        else{
            Alert::success('Success','Mail Has Been Sent');
            return redirect('/advertisements');
        }
    }
    public function exportExcel(){
        if (Gate::allows('isAdmin')){
            abort(404);
        }
        $dataCount = count(
            DB::table('advertisements')
                ->join('groups','groups.id','advertisements.group_id')
                ->select('advertisements.subject','advertisements.message','advertisements.category','groups.name')
                ->get()
        );
        if ($dataCount > 0){
            return Excel::download(new Advertisements(),'adverts.xlsx');
        }
        else{
            Alert::warning('Failed','No records Found');
            return redirect('/advertisements');
        }
    }
    public function exportCSV(){
        if (Gate::allows('isAdmin')){
            abort(404);
        }
        $dataCount = count(
            DB::table('advertisements')
                ->join('groups','groups.id','advertisements.group_id')
                ->select('advertisements.subject','advertisements.message','advertisements.category','groups.name')
                ->get()
        );
        if ($dataCount > 0){
            return Excel::download(new Advertisements(),'adverts.csv');
        }
        else{
            Alert::warning('Failed','No Records Found');
            return redirect('/advertisements');
        }
    }
    public function searchAdvert(){
        $search = request('search');
        if ($search!=''){
            $adverts = Advertisement::where('subject','Like','%'.$search.'%')
                                    ->orWhere('message','Like','%'.$search.'%')
                                    ->orWhere('category','Like','%'.$search.'%')
                                    ->orderBy('created_at')->paginate(10);

            $groups = Group::all();
            if(count($adverts) > 0){
                return view('communication.adverts',compact('adverts','groups'))
                            ->with('count',(request()->input('page',1) -1)*10);
            }
            else{
                Alert::info('Sorry!!','No records Found');
                return redirect('/advertisements');
            }
        }
        else{
            return redirect('/advertisements');
        }
    }
    public function viewAdvert(Advertisement $advertisement){
        $groups = Group::all();
        return view('communication.viewAdvert',compact('advertisement','groups'));
    }
    public function deleteAdvert($id){
        if (Gate::allows('isAdmin')){
            abort(404);
        }
        $delete = Advertisement::findOrFail($id)->delete();
        Alert::success('Success','Advertisement has been Deleted');
        return redirect('/advertisements');

    }
    public function exportPDF(){
        if (Gate::allows('isAdmin')){
            abort(404);
        }
        $group = Group::all();
        $advertisements = DB::table('advertisements')
            ->join('groups','groups.id','advertisements.group_id')
            ->select('advertisements.subject','advertisements.message','advertisements.category','groups.name','advertisements.created_at')
            ->get();
        view()->share(['advertisements'=>$advertisements,'groups'=>$group]);
        $pdf = PDF::loadView('downloads.advertsPDF')->setPaper('a4','landscape');
        return $pdf->download('adverts.pdf');
    }
}
