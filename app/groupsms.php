<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class groupsms extends Model
{
    //
    public function groups(){
        return $this->belongsTo(Group::class);
    }
    public function clients(){
        return $this->hasMany(Client::class);
    }
}
