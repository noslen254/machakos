<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Advertisement extends Model
{
    //
    protected $table = 'advertisements';

    protected $fillable = ['group_id','recipient','subject','message','image','category'];

    public function client(){
        return $this->hasMany(Client::class);
    }
    public function group(){
        return $this->belongsTo(Group::class);
    }
}
