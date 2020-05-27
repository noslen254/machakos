<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class GroupMails extends Model
{
    //
    protected $table = 'group_mails';

    protected  $fillable = ['filter','recipient','message','subject','category','mode'];

        public function clients(){
            return $this->belongsTo(Client::class);
        }
    public function group(){
        return $this->belongsTo(Group::class);
    }

}
