<?php

namespace App\Providers;

// -*- Add as GateContract
use Illuminate\Contracts\Auth\Access\Gate as GateContract;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;

//use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */


    protected $policies = [
        'App\Model' => 'App\Policies\ModelPolicy',
    ];





    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot(GateContract $gate)
    {
        

        $this->registerPolicies($gate);

        $gate->define('isApplicant', function($user){
            return $user->role->role ==1;
        });

        $gate->define('isEmployer', function($user){
            return $user->role->role ==2;
        });


        $gate->define('isAdmin', function($user){
            return $user->role->role ==3;
        });


        $gate->define('isSuper', function($user){
            return $user->role->role ==4;
        });

        Schema::defaultStringLength(191);

    }
}
