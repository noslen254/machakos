<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Time extends Model
{
    //
    public function firstTee(){
        return $this->hasMany(FirstTee::class);
    }
}
