<?php

namespace App\Http\Controllers;

use App\Client;
use App\Exports\Games;
use App\Exports\tournaments;
use App\FirstTee;
use App\Game;
use App\Tee;
use App\Time;
use Illuminate\Http\Request;
use RealRashid\SweetAlert\Facades\Alert;
use Gate;
use DB;
use Excel;

class GameController extends Controller
{
    //
    public function index(){
        $games = Game::all();
        return view('games.games',compact('games'));
    }
    public function add(Request $request){
        $data = array(
            'tournament'=>$request->tournament,
            'description'=>$request->description,
            'date_time'=>$request->date_time,
            'image'=>$request->image->store('games','public')
        );
        Game::create($data);
        Alert::success('Success','Tournament Has Been added');
        return redirect('/games');
    }
    public function view(Game $game){
        $games = Game::get();
        $tees = Tee::all();
        $times = Time::all();
        $clients = Client::get();
        return view('games.viewGame',compact('games','game','clients','tees','times'));
    }
    public function exportExcel(){
        if(Gate::allows('isAdmin')){
            abort(404);
        }
        $dataCount = count(
            DB::table('games')
                ->select('games.tournament','games.description','games.date_time')
                ->get()
        );
        if ($dataCount > 0){
            return Excel::download(new Games(),'games.xlsx');
        }
        else{
            Alert::warning('Failed','No records Found');
            return redirect('/games');
        }
    }
    public function exportCSV(){
        if (Gate::allows('isAdmin')){
            abort(404);
        }
        $dataCount = count(
            DB::table('games')
                ->select('games.tournament','games.description','games.date_time')
                ->get()
        );
        if ($dataCount > 0){
            return Excel::download(new Games(),'games.csv');
        }
        else{
            Alert::warning('Failed','No records found');
            return redirect('/games');
        }
    }
    public function update(Request $request,$id){
        $data = array(
            'tournament'=>$request->tournament,
            'description'=>$request->description,
            'date_time'=>$request->date_time,
            'image'=>$request->image->store('games','public')
        );
        Game::find($id)->update($data);
        Alert::success('Success','Game has been Updated');
        return redirect('/games');
    }

    public function deleteGame($id){
        if (Gate::allows('isAdmin')){
            abort(404);
        }
        $deleteGame = Game::findOrFail($id)->delete();
        Alert::success('Success','Game has been deleted');
        return redirect('/games');
    }
    public function bookedGames(){
        $games = Game::all();
        $tees = FirstTee::all();
        return view('games.bookedGames',compact('games','tees'));
    }
}
