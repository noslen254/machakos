<?php

namespace App\Http\Controllers;


use App\Advertisement;
use App\Client;
use App\FirstTee;
use App\Game;
use App\Group;
use App\GroupMails;
use App\groupsms;
use App\SIngleNotice;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use RealRashid\SweetAlert\Facades\Alert;
use App\User;
use App\Welcome;
use Auth;
use DateTime;
use Gate;
use DB;
use App\Charts\DataCharts;
use test\Mockery\Stubs\Animal;


class HomeController extends Controller
{
/**
 * Create a new controller instance.
 *
 * @return void
 */
public function __construct()
{
    $this->middleware('auth');
}

/**
 * Show the application dashboard.
 *
 * @return \Illuminate\Contracts\Support\Renderable
 */

public function index(){

if(Gate::allows('isApplicant')){
   return redirect('/newRedirect');
}

//    $clients = Client::get()->pluck('id','firstName');
//    $clients = collect([]);
    $clients = (Client::orderBy('created_at')->count());
    $users =  User::orderBy('created_at')->count();
    $groups = Group::orderBy('created_at')->count();
//        dd($clients);
        //->pluck('id','group_id');
    $clientsCount = new DataCharts();
    $clientsCount -> labels(['Users']);
    $clientsCount -> dataset('Members','bar',[$clients])
                ->backgroundColor('#adcc52');
    $clientsCount->dataset('System Users','bar',[$users])
                ->backgroundColor('#339966');
    $clientsCount->dataset('Groups','bar',[$groups])
                ->backgroundColor('#d6c285');


    //Fetching Recent activities from activity log
    $activity = DB::select('SELECT * FROM activity_logs ORDER BY  created_at DESC LIMIT 2');
    //Communication
    $previous_week = strtotime("0 day");
    $start_week = (strtotime("last sunday",$previous_week));
    $end_week = (strtotime("next saturday",$start_week));
    $start_week1 = date("Y-m-d",$start_week);
    $end_week1 = date("Y-m-d",$end_week);
    //previous
    $previous_week = strtotime("-1 week");
    $start_week = (strtotime("last sunday",$previous_week));
    $end_week = (strtotime("next saturday",$start_week));
    $start_week2 = date("Y-m-d",$start_week);
    $end_week2 = date("Y-m-d",$end_week);
    //previous-1
    $previous_week = strtotime("-2 week");
    $start_week = strtotime("last sunday",$previous_week);
    $end_week = strtotime("next saturday",$start_week);
    $start_week3 = date("Y-m-d",$start_week);
    $end_week3 = date("Y-m-d",$end_week);
    //
    $previous_week = strtotime("-3 week");
    $start_week = strtotime("last sunday",$previous_week);
    $end_week = strtotime("next saturday",$start_week);
    $start_week4 = date("Y-m-d",$start_week);
    $end_week4 = date("Y-m-d",$end_week);


    $todays = Advertisement::whereBetween('created_at',[$start_week1,$end_week1])->count();
    $yesterday = Advertisement::whereBetween('created_at',[$start_week2,$end_week2])->count();
    $users_2 = Advertisement::whereBetween('created_at',[$start_week3,$end_week3])->count();
    $users = Advertisement::whereBetween('created_at',[$start_week4,$end_week4])->count();
    //
    $week1 = GroupMails::whereBetween('created_at',[$start_week1,$end_week1])->count();
    $week2 = GroupMails::whereBetween('created_at',[$start_week2,$end_week2])->count();
    $week3 = GroupMails::whereBetween('created_at',[$start_week3,$end_week3])->count();
    $week4 = GroupMails::whereBetween('created_at',[$start_week4,$end_week4])->count();
    //
    $single = SIngleNotice::whereBetween('created_at',[$start_week1,$end_week1])->count();
    $single1 = SIngleNotice::whereBetween('created_at',[$start_week2,$end_week2])->count();
    $single2 = SIngleNotice::whereBetween('created_at',[$start_week3,$end_week3])->count();
    $single3 = SIngleNotice::whereBetween('created_at',[$start_week4,$end_week4])->count();
    //
    $sms = groupsms::whereBetween('created_at',[$start_week1,$end_week1]);
    $sms1 = groupsms::whereBetween('created_at',[$start_week2,$end_week2]);
    $sms2 = groupsms::whereBetween('created_at',[$start_week3,$end_week3]);
    $sms3 = groupsms::whereBetween('created_at',[$start_week4,$end_week4]);

    $mailsCount = new DataCharts();
    $mailsCount -> labels(['3 weeks Ago','2 Weeks Ago','1 Week Ago','This Week']);
    $mailsCount->dataset('Mails','line',[$week4,$week3,$week2,$week1])
                ->color('#ff408c')
                ->backgroundColor('#ff408c')
                ->fill(false);

    $mailsCount->dataset('Posters','line',[$users,$users_2,$yesterday,$todays])
        ->color('#1975ff')
        ->backgroundColor('#1975ff')
        ->fill(false);

    $mailsCount->dataset('Single','line',[$single,$single1,$single2,$single3])
        ->color('indigo')
        ->backgroundColor('indigo')
        ->fill(false);

    $mailsCount->dataset('SMS','line',[$sms,$sms1,$sms2,$sms3])
        ->color('pink')
        ->backgroundColor('pink')
        ->fill(false);

    ////Games Played
    $games = FirstTee::whereBetween('created_at',[$start_week1,$end_week1])->count();
    $games1 = FirstTee::whereBetween('created_at',[$start_week2,$end_week2])->count();
    $games2 = FirstTee::whereBetween('created_at',[$start_week3,$end_week3])->count();
    $games3 = FirstTee::whereBetween('created_at',[$start_week4,$end_week4])->count();
    //
    $tees = Game::whereBetween('created_at',[$start_week1,$end_week1])->count();
    $tees1 = Game::whereBetween('created_at',[$start_week2,$end_week2])->count();
    $tees2 = Game::whereBetween('created_at',[$start_week3,$end_week3])->count();
    $tees3 = Game::whereBetween('created_at',[$start_week4,$end_week4])->count();
    //
    $gamesCount = new DataCharts();
    $gamesCount->labels(['3 weeks Ago','2 Weeks Ago','1 Week Ago','This Week']);
    $gamesCount->dataset('Games','bar',[$games3,$games2,$games1,$games])
        ->color('#8cd18c')
        ->backgroundColor('#8cd18c')
        ->fill(false)
        ->options([
            'animation'=>[
                'duration'=>800,
                'lazy'=>true,
                'easing'=> 'easeOutBounce'
            ]
        ]);


    $gamesCount->dataset('Tournaments','bar',[$tees3,$tees2,$tees1,$tees])
        ->color('#d6eb66')
        ->backgroundColor('#d6eb66')
        ->fill(false);

    $user = Client::whereBetween('created_at',[$start_week1,$end_week1])->count();
    $user2 = Client::whereBetween('created_at',[$start_week2,$end_week2])->count();
    $user3 = Client::whereBetween('created_at',[$start_week3,$end_week3])->count();
    $user4 = Client::whereBetween('created_at',[$start_week4,$end_week4])->count();

    $usersCount = new DataCharts();
    $usersCount->labels(['3 Weeks','2 weeks Ago', 'Last Week','This week']);
    $usersCount->dataset('User Registration','line',[$user4,$user3,$user2,$user])
                ->color('indigo')
                ->backgroundColor('indigo')
                ->fill(false);
    $recentS = Client::orderBy('id','desc')->limit(4)->get();

    $count = Client::orderBy('id')->count();

return view('home',compact('clientsCount','mailsCount','activity','gamesCount','usersCount','recentS','count'));

}

public function newRedirect(){

return view('newUser');
}



public function welcomeMessage(){

$users =Welcome::all();

return view('newUserWelcome',['users'=>$users]);
}










 // Alert::alert('Title', 'Message', 'Type');

 // Alert::success('Success Title', 'Success Message');

 // Alert::info('Info Title', 'Info Message');

 // Alert::warning('Warning Title', 'Warning Message');

 // Alert::error('Error Title', 'Error Message');

 // Alert::question('Question Title', 'Question Message');

 // Alert::image('Image Title!','Image Description','Image URL','Image Width','Image Height');

 // Alert::html('Html Title', 'Html Code', 'Type');

 // Alert::toast('Toast Message', 'Toast Type');

}
