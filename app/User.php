<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'middleName', 'lastName','phone','email','image','password'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];



    protected static function boot(){
        parent::boot();
        static::created(function($user){
         $user->role()->create([
          'user_id'=>$user->id,
          'role'=>1,
         ]);
        }
        );

    }



   public function role(){
    
    return $this->hasOne(Role::class);
   }


   public function activityLog(){
    
    return $this->hasMany(ActivityLog::class);
   }

}
