<?php
namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use DB;
class Admins implements FromCollection, WithHeadings
{
    public function collection()
    {

        return $users=DB::table('users')
                ->join('roles','roles.user_id','users.id') 
                ->where('roles.role',3)
                ->orWhere('roles.role',4)
                ->select('users.name','users.lastName','users.phone','users.email','roles.role',
                         'users.created_at')
                ->orderBy('users.created_at','desc')
                ->get();




    }

    public function headings(): array
    {
        return [
            'First Name',
            'Last Name',
            'Mobile',
            'Email',
            'Role (3-Admin 4-SuperAdmin)',
            'Created At'
        ];
    }

}