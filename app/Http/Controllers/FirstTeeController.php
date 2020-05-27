<?php

namespace App\Http\Controllers;

use App\Client;
use App\Exports\tournaments;
use App\FirstTee;
use App\Game;
use App\Tee;
use App\Time;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use RealRashid\SweetAlert\Facades\Alert;
use Gate;
use Excel;
use PDF;

class FirstTeeController extends Controller
{
    //

    public function add(Request $request){
        $data= request()->validate([
            'tee_id'=>['required'],
            'client_id'=>['required'],
            'game_id'=>['required'],
            'time_id'=>['required'],
            'phone'=>'regex:/(2547)[0-9]{8}/|string|numeric|digits:12|nullable',
            'player1'=>['required'],
            'player2'=>['required'],
            'player3'=>['required']
        ]);
        $time_id=$request->input('time_id');
//        $client_id=$request->input('client_id');
        $tee=$request->input('tee_id');
        $game_id=$request->input('game_id');
        //$phone=$request->phone;
        //Checking
        $counter = DB::table('first_tees')->where('game_id',$game_id)->where('tee_id',$tee)->where('time_id',$time_id)->count();
//        dd($time_id,$client_id,$tee,$game_id,$counter);
        if($counter > 0){
            Alert::info('Sorry!!!','That Slot Has Already Been Taken');
            return $this->loginCheck();
        }
        else{
            FirstTee::create($data);
            Alert::success('Success','Game Booked');
//            return redirect('/games');
            return $this->loginCheck();
        }
    }

    //check login
    public function loginCheck(){
        if (Auth::check()){
            return redirect('/games');
        }
        else{
            return redirect('/events');
        }
    }


    public function gameExcel(Request $request){
        if(Gate::allows('isAdmin')){
            abort('404');
        }
        $dataCount = count(
            DB::table('first_tees')
                    ->join('tees','tees.id','first_tees.tee_id')
                    ->join('clients','clients.id','first_tees.client_id')
                    ->join('games','games.id','first_tees.game_id')
                    ->join('times','times.id','first_tees.time_id')
                    ->select('tees.tee','clients.firstName','clients.middleName','clients.lastName','games.tournament','times.name','first_tees.phone','first_tees.player1','first_tees.player2','first_tees.player3')
                    ->get()
        );
        if ($dataCount > 0){
            return Excel::download(new tournaments(),'game.xlsx');
        }
        else{
            Alert::warning('Failed!!','No Data');
            return redirect('bookedGames');
        }
        $games = $request->game_id;
        if (isset($games)){

        }
    }
    public function gameCSV(){
        if (Gate::allows('isAdmin')){
            abort(404);
        }
        $dataCount = count(
            DB::table('first_tees')
                ->join('tees','tees.id','first_tees.tee_id')
                ->join('clients','clients.id','first_tees.client_id')
                ->join('games','games.id','first_tees.game_id')
                ->join('times','times.id','first_tees.time_id')
                ->select('tees.tee','clients.firstName','clients.middleName','clients.lastName','games.tournament','times.name','first_tees.phone','first_tees.player1','first_tees.player2','first_tees.player3')
                ->get()
        );
        if ($dataCount > 0){
            return Excel::download(new tournaments(),'game.csv');
        }
        else{
            Alert::warning('Failed!!','No Data');
            return redirect('/bookedGames');
        }

    }

    public function gamePDF(){
        if (Gate::allows('isAdmin')){
            abort(404);
        }
        $games = Game::all();
        $tee = FirstTee::all();
        $tees = DB::table('first_tees')
            ->join('tees','tees.id','first_tees.tee_id')
            ->join('clients','clients.id','first_tees.client_id')
            ->join('games','games.id','first_tees.game_id')
            ->select('tees.tee','clients.firstName','clients.middleName','clients.lastName','games.tournament','first_tees.date_time','first_tees.phone','first_tees.player1','first_tees.player2','first_tees.player3')
            ->get();
        view()->share(['tees'=>$tees,'games'=>$games,'tee',$tee]);
        $pdf = PDF::loadView('downloads.teePDF')->setPaper('a4','landscape');
        return $pdf->download('tees.pdf');
    }
    public function gameSort(){
        $tees = FirstTee::where('game_id',request('filter'))->orderBy('created_at','DESC')->paginate(10);
//        dd($tees);
        $category = Game::find(request('filter'));
        $games  = Game::all();
        return view('games.bookedGames',compact('tees','category','games'))
                ->with('count',(request()->input('page', 1)-1)*10);
    }
    public function search(){
        $search = request('search');
        if ($search!= ''){
            $tees = FirstTee::where('tee_id','Like','%'.$search.'%')
                            ->orWhere('game_id','Like','%'.$search.'%')
                            ->orWhere('client_id','Like','%'.$search.'%')
                            ->orWhere('date_time','Like','%'.$search.'%')
                            ->orWhere('phone','Like','%'.$search.'%')
                            ->orWhere('player1','Like','%'.$search.'%')
                            ->orWhere('player2','Like','%'.$search.'%')
                            ->orWhere('player3','Like','%'.$search.'%')
                            ->orderBy('created_at','DESC')->paginate(10);
            $games = Game::all();
            if(count($tees) > 0){
                return view('games.bookedGames',compact('tees','games'))
                            ->with('count',(request()->input('page', 1)-1)*10);
            }
            else{
                Alert::warning('Failed!','No records found matching your input');
                return redirect('/bookedGames');
            }
        }
        else{
            return redirect('/bookedGames');
        }
    }
    public function view(Game $game){
        $times = Time::all();
        $games = Game::all();
        $tees = Tee::all();
        $clients = Client::all();
        return view('games.bookig',compact('game','games','tees','clients','times'));
    }
    public function testingRoute(){
//        $game = FirstTee::where('game_id',$request->input('filter'));
//        dd($game);
        $tees = FirstTee::where('game_id',request('filter'))->orderBy('created_at','DESC')->paginate(10);
        dd($tees);
        $tees = DB::table('first_tees')
            ->join('tees','tees.id','first_tees.tee_id')
            ->join('clients','clients.id','first_tees.client_id')
            ->join('games','games.id','first_tees.game_id')
            ->join('times','times.id','first_tees.time_id')
            ->where('game_id',['2'])
            ->select('tees.tee','clients.firstName','clients.middleName','clients.lastName','games.tournament','times.name','first_tees.phone','first_tees.player1','first_tees.player2','first_tees.player3')
            ->get();
        dd($tees);
        view()->share(compact('tees'));
        $pdf = PDF::loadView('downloads.teePDF')->setPaper('a4','landscape');
        return $pdf->download('tees.pdf');

    }
}
