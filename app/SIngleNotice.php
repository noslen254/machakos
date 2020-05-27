<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SIngleNotice extends Model
{
    protected $fillable= ['client_id','email','subject','message'];

    public function clients(){
        return $this->belongsTo(Client::class);
    }
}
