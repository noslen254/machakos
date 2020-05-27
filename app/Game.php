<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Game extends Model
{
    //
    protected  $fillable =['tournament','description','date_time','image'];

    public function firstTee(){
        return $this->hasMany(FirstTee::class);
    }
    public function tee(){
        return $this->belongsTo(FirstTee::class);
    }
}
