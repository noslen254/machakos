<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class FirstTee extends Model
{
    //
    protected $fillable =['tee_id','client_id','game_id','time_id','phone','player1','player2','player3'];

    public function game(){
        return $this->belongsTo(Game::class);
    }
    public function client(){
        return $this->belongsTo(Client::class);
    }
    public function tee(){
        return $this->belongsTo(Tee::class);
    }
    public function time(){
        return $this->belongsTo(Time::class);
    }
}
