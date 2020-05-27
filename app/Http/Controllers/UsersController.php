<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Validator;
use Maatwebsite\Excel\Facades\Excel;
use App\User;
use App\ActivityLog;
use App\Exports\Admins;
use App\Role;
use Auth;
use Gate;
use DB;
use PDF;

class UsersController extends Controller
{


public function users(){
  if(Gate::allows('isAdmin')){
     abort(404);
  }
  $users=DB::table('users')
            ->join('roles','roles.user_id','users.id')
            ->where('roles.role',3)
            ->orWhere('roles.role',4)
            ->select('users.*','roles.role')
            ->orderBy('users.created_at','desc')
            ->get();

  return view('admin.users',['users'=>$users]);
}



public function addAdmin(Request $request){
  if(Gate::allows('isAdmin')){
     abort(404);
  }

$validator = Validator::make($request->all(), [
    'email'  =>  'required|unique:users,email',
]);


if ($validator->fails()) {
    Alert::warning('Error', 'Email address must be unique');
    return redirect('/users');
}




$password="$2y$10$7qmNLRgUzr.OXSneWfnUSepEclO3yOVulu4B8ESb29ievpgCg1Zrm";

$admin= new User;
$admin->name=$request->name;
$admin->lastName=$request->lastName;
$admin->email=$request->email;
$admin->phone=$request->phone;
$admin->password=$password;
$admin->save();

$adminID=$admin->id;

$role=new Role;
$role->user_id=$adminID;
$role->role=$request->role;
$role->save();

if ($adminID) {

	//Record activity
	$userId=Auth::user()->id;
	$userName=Auth::user()->name;
	$email=Auth::user()->email;
	$task="Created admin";

	$activity= new ActivityLog;
	$activity->user_id=$userId;
	$activity->name=$userName;
	$activity->email=$email;
	$activity->activity=$task;
	$activity->save();

Alert::success('Success', 'Admin successfully created');
return redirect('/users');
}else{

Alert::warning('Error', 'Sorry, Something went wrong');
return redirect('/users');
}

}



public function updateAdmin(Request $request){
  if(Gate::allows('isAdmin')){
     abort(404);
  }

$id=$request->input('id');

$validator = Validator::make($request->all(), [
    'email'  =>  'required|unique:users,email,'.$id,
]);


if ($validator->fails()) {
    Alert::warning('Error', 'Email address must be unique');
    return redirect('/users');
}



$admin=User::findOrFail($id);
$admin->name=$request->name;
$admin->lastName=$request->lastName;
$admin->email=$request->email;
$admin->phone=$request->phone;
$admin->role->role=$request->role;
$admin->push();


   //Record activity
   $userId=Auth::user()->id;
   $userName=Auth::user()->name;
   $email=Auth::user()->email;
   $task="Updated admin";

   $activity= new ActivityLog;
   $activity->user_id=$userId;
   $activity->name=$userName;
   $activity->email=$email;
   $activity->activity=$task;
   $activity->save();


Alert::success('Success', 'Admin successfully updated');
return redirect('/users');

}







public function deleteUser($user){
  if(Gate::allows('isAdmin')){
     abort(404);
  }

 $delete=User::findOrFail($user)->delete();
  if($delete){

   //Record activity
   $userId=Auth::user()->id;
   $userName=Auth::user()->name;
   $email=Auth::user()->email;
   $task="Deleted admin";

   $activity= new ActivityLog;
   $activity->user_id=$userId;
   $activity->name=$userName;
   $activity->email=$email;
   $activity->activity=$task;
   $activity->save();

   Alert::success('Success', 'Admin successfully deleted');

  }else{

   Alert::error('Error', 'Sorry, Something went wrong');

  }

 return redirect('/users');
}




public function usersPDF(){
  if(Gate::allows('isAdmin')){
     abort(404);
  }

$users=DB::table('users')
        ->join('roles','roles.user_id','users.id')
        ->where('roles.role',3)
        ->orWhere('roles.role',4)
        ->select('users.*','roles.role')
        ->orderBy('users.created_at','desc')
        ->get();
        view()->share(['users'=>$users]);
 $pdf = PDF::loadView('downloads.adminsPDF')->setPaper('a4','landscape');
 return $pdf->download('users.pdf');


}


public function adminsCSV(){
  if(Gate::allows('isAdmin')){
     abort(404);
  }
    $datacount=count(
	                  DB::table('users')
				        ->join('roles','roles.user_id','users.id')
				        ->where('roles.role',3)
				        ->orWhere('roles.role',4)
				        ->select('users.name','users.lastName','users.phone','users.email',
				        	     'roles.role','users.created_at')
				        ->orderBy('users.created_at','desc')
				        ->get()
                        );
    if($datacount > 0){
        return Excel::download(new Admins, 'admins.csv');
    }else{
       Alert::warning('Failed','No record to download');
       return redirect()->back();
    }

}




public function usersExcel(){
  if(Gate::allows('isAdmin')){
     abort(404);
  }
    $datacount=count(
	                  DB::table('users')
				        ->join('roles','roles.user_id','users.id')
				        ->where('roles.role',3)
				        ->orWhere('roles.role',4)
				        ->select('users.name','users.lastName','users.phone','users.email',
				        	     'roles.role','users.created_at')
				        ->orderBy('users.created_at','desc')
				        ->get()
                        );
    if($datacount > 0){
        return Excel::download(new Admins, 'admins.xlsx');
    }else{
       Alert::warning('Failed','No record to download');
       return redirect()->back();
    }

}
public function viewUser(User $user){
  if(Gate::allows('isAdmin')){
     abort(404);
  }

//Only admins and super admins
if($user->role->role=="3"){

  return view('admin.viewAdmin',['user'=>$user]);
}elseif ($user->role->role=="4") {

  return view('admin.viewAdmin',['user'=>$user]);
}else{
  abort(404);
}
}
public function updateAdmin1(Request $request){
  if(Gate::allows('isAdmin')){
     abort(404);
  }

$id=$request->input('id');

$validator = Validator::make($request->all(), [
    'email'  =>  'required|unique:users,email,'.$id,
]);


if ($validator->fails()) {
    Alert::warning('Error', 'Email address must be unique');
    return redirect("/viewUser/$id");
}



$admin=User::findOrFail($id);
$admin->name=$request->name;
$admin->lastName=$request->lastName;
$admin->email=$request->email;
$admin->phone=$request->phone;
$admin->role->role=$request->role;
$admin->push();


   //Record activity
   $userId=Auth::user()->id;
   $userName=Auth::user()->name;
   $email=Auth::user()->email;
   $task="Updated admin";

   $activity= new ActivityLog;
   $activity->user_id=$userId;
   $activity->name=$userName;
   $activity->email=$email;
   $activity->activity=$task;
   $activity->save();


Alert::success('Success', 'Admin successfully updated');

return redirect("/viewUser/$id");

}




public function clearAdmninLog($user){
  if(Gate::allows('isAdmin')){
     abort(404);
  }

$delete=ActivityLog::where('user_id',$user)->delete();

if($delete){

Alert::success('Success', 'Activity log successfully cleared');

return redirect("/viewUser/$user");
}else{

Alert::info('Info', 'No activity log found');

return redirect("/viewUser/$user");

}


}

}
