<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithHeadings;
use DB;

class CLients implements FromCollection, WithHeadings, shouldAutoSize
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        //
        return $clients=DB::table('clients')
            ->join('groups','groups.id','clients.group_id')
            ->select('clients.firstName','clients.middleName','clients.lastName','clients.phone','clients.email','groups.name','clients.location', 'clients.workPlace','clients.created_at')
            ->orderBy('clients.created_at','desc')
            ->get();
    }

    /**
     * @inheritDoc
     */
    public function headings(): array
    {
        // TODO: Implement headings() method.
        return [
            'First Name',
            'Middle Name',
            'Last Name',
            'Mobile',
            'Email',
            'Group',
            'Location',
            'Profession',
            'Created At'
        ];
    }
}
