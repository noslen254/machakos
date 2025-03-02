<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use App\User;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::create([
                      'name'=>'Hudson',
                      'lastName'=>'Ngeti',
                      'email'=>'ngetihudson@gmail.com',
                      'password'=>Hash::make('secret')
                    ]);
    }
}
