<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Group extends Model
{

protected $fillable=['name'];


public function clients(){

	return $this->hasMany(Client::class);
}
public function mails(){
    return $this->hasMany(GroupMails::class);
}


}
