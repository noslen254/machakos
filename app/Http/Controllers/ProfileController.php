<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Validator;
use App\User;
use App\ActivityLog;
use Auth;




class ProfileController extends Controller
{



public function profile(){

 return view('profile.profile');
}



public function updateProfile(Request $request){

$userId=Auth::user()->id;

$validator = Validator::make($request->all(), [
    'email'  =>  'required|unique:users,email,'.$userId,
]);


if ($validator->fails()) {
    return redirect('/profile')->with('reject','Email Address should be unique');          
}



$update=User::where('id',$userId)
        ->update([
        	'name'=>$request->name,
        	'lastName'=>$request->lastName,
        	'email'=>$request->email,
        	'phone'=>$request->phone,
        ]);	


if($update){

   //Record activity
   $userName=Auth::user()->name;
   $email=Auth::user()->email;
   $task="Updated profile";

   $activity= new ActivityLog;
   $activity->user_id=$userId;
   $activity->name=$userName;
   $activity->email=$email;
   $activity->activity=$task;
   $activity->save();

  Alert::success('Success', 'Profile successfully updated');
  return redirect('/profile');
}else{

  Alert::warning('Error', 'Sorry, Somethieng went wrong');
  return redirect('/profile');
}

    
}



public function changePassword(Request $request){

	$validatedData = $request->validate([
	    'oldpass' => 'required|min:6',
	    'password' => 'required|string|min:6',
	    'password_confirmation' => 'required|same:password',
	],[
	    'oldpass.required' => 'Old password is required',
	    'oldpass.min' => 'Old password needs to have at least 6 characters',
	    'password.required' => 'Password is required',
	    'password.min' => 'Password needs to have at least 6 characters',
	    'password_confirmation.required' => 'Password confirmation did not match.'
	]);

	$current_password = \Auth::User()->password;           
	if(\Hash::check($request->input('oldpass'), $current_password))
	{          
	  $user_id = \Auth::User()->id;                       
	  $obj_user = User::find($user_id);
	  $obj_user->password = \Hash::make($request->input('password'));
	  $obj_user->save(); 



	   //Record activity
	   $userId=Auth::user()->id;
	   $userName=Auth::user()->name;
	   $email=Auth::user()->email;
	   $task="Updated password";

	   $activity= new ActivityLog;
	   $activity->user_id=$userId;
	   $activity->name=$userName;
	   $activity->email=$email;
	   $activity->activity=$task;
	   $activity->save();

	 return redirect('/profile')->with('response','Password successfully changed');  
	}
	else{           
	  return redirect('/profile')->with('reject','Incorrect old Password.');  
	} 
 }




public function updateProfilePicture(Request $request){


//server side validation
$this->validate($request,[
'picture'=>'required |image|mimes:jpeg,png,jpg,gif,svg|max:2048'
]);


$userId=Auth::user()->id;    

$url = request('picture')->store('users', 'public');

$update=User::where('id',$userId)
       ->update(['image'=>$url]);

if($update){


//Record activity
$userId=Auth::user()->id;
$userName=Auth::user()->name;
$email=Auth::user()->email;
$task="Updated password";

$activity= new ActivityLog;
$activity->user_id=$userId;
$activity->name=$userName;
$activity->email=$email;
$activity->activity=$task;
$activity->save();

Alert::success('Success', 'Profile image successfully updated');
return redirect('/profile');
}else{
Alert::warning('Error', 'Sorry, something went wrong');
return redirect('/profile');
}
}





















}
