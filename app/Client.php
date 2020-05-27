<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Client extends Model
{

 protected $fillable=['group_id','firstName','middleName','lastName',
                       'phone','email','location','workPlace'];



public function group(){
	return $this->belongsTo(Group::class);
}
public function mail(){
    return $this->hasMany(SingleMail::class);
}
public function tee(){
    return $this->hasMany(FirstTee::class);
}
public function adverts(){
    return $this->hasMany(Advertisement::class);
}
public function mails(){
    return $this->hasMany(GroupMails::class);
}
public function notice(){
    return $this->belongsTo(SIngleNotice::class);
}


}
