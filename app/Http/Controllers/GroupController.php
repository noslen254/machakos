<?php

namespace App\Http\Controllers;

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

class GroupController extends Controller
{


public function index(){

  $users=Group::orderBy('created_at','desc')->get();
  return view('groups.index',compact('users'));
}
public function addNewGroup(){
$create=Group::create($this->groupInput());

if($create){

	//Record activity
	$userId=Auth::user()->id;
	$userName=Auth::user()->name;
	$email=Auth::user()->email;
	$task="Created a Group";

	$activity= new ActivityLog;
	$activity->user_id=$userId;
	$activity->name=$userName;
	$activity->email=$email;
	$activity->activity=$task;
	$activity->save();


     Alert::success('Success','Group successfully created');
	return redirect('/groups');
}else{

    Alert::error('Error','Sorry, Something went wrong');
	return redirect('/groups');
}

}


public function updateGroup(){

	$update=Group::where('id',request('id'))
	              ->update($this->groupInput());

    if($update){

		//Record activity
		$userId=Auth::user()->id;
		$userName=Auth::user()->name;
		$email=Auth::user()->email;
		$task="Updated a Group";

		$activity= new ActivityLog;
		$activity->user_id=$userId;
		$activity->name=$userName;
		$activity->email=$email;
		$activity->activity=$task;
		$activity->save();

        Alert::success('Success','Group successfully updated');
        return redirect('/groups');
    }else{
        Alert::error('Error','Sorry, Something went wrong');
        return redirect('/groups');
    }

}


private function groupInput(){
	return request()->validate(['name'=>['required']]);
}



public function deleteGroup($group){

   return $group;

}
public function viewGroup($group){
$users=Client::where('group_id',$group)->orderBy('created_at','desc')->paginate(10);
$category=Group::find($group);
$cGroup=Group::all();
return view('clients.index',compact('users','category','cGroup'))
           ->with('count', (request()->input('page',1) -1)*10);
}

}
