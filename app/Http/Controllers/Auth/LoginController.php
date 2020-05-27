<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use App\ActivityLog;
use Auth;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */



    //Added by Hudson Ngeti
    public function sendLoginResponse(Request $request){

       //Record activity
       $userId=Auth::user()->id;
       $userName=Auth::user()->name;
       $email=Auth::user()->email;
       $task="Logged In";

       $activity= new ActivityLog;
       $activity->user_id=$userId;
       $activity->name=$userName;
       $activity->email=$email;
       $activity->activity=$task;
       $activity->save();

    $request->session()->regenerate();

    $this->clearLoginAttempts($request);

    return $this->authenticated($request, $this->guard()->user())
            ?: redirect()->intended($this->redirectPath());

    }


    //Added by Hudson Ngeti
    public function logout(Request $request)
    {

       //Record activity
       $userId=Auth::user()->id;
       $userName=Auth::user()->name;
       $email=Auth::user()->email;
       $task="Logged Out";

       $activity= new ActivityLog;
       $activity->user_id=$userId;
       $activity->name=$userName;
       $activity->email=$email;
       $activity->activity=$task;
       $activity->save();

       $this->guard()->logout();
       $request->session()->invalidate();
       return $this->loggedOut($request) ?: redirect('/');
    }






    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
}
