<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;

class AreaChartController extends Controller
{
    //
    public function chartInt(){

        $user = User::all()->count();
        $five= date('Y-m-d');
        $four=date('Y-m-d',strtotime("-1 days"));
        $three=date('Y-m-d',strtotime("-2 days"));
        $two=date('Y-m-d',strtotime("-3 days"));
        $one=date('Y-m-d',strtotime("-4 days"));

        $finances = \Lava::DataTable();

        $finances->addDateColumn('Year')
            ->addNumberColumn('Users')
            ->addNumberColumn('Orders')
            ->addRow(['5-2-2020', $user,]);

        \Lava::ColumnChart('Finances', $finances, [
            'title' => 'User',
            'titleTextStyle' => [
                'color'    => '#eb6b2c',
                'fontSize' => 14
            ]
        ]);

        return view('charts');
    }
}
