<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ActivityLog extends Model
{



protected $fillable=['user_id','name','email','activity'];


public function user(){
	return $this->belongsTo(User::class);
}



}
