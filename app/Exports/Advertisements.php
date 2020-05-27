<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use DB;

class Advertisements implements FromCollection,WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        //
        return $advertisements = DB::table('advertisements')
                                ->join('groups','groups.id','advertisements.group_id')
                                ->select('advertisements.subject','advertisements.message','advertisements.category','groups.name')
                                ->get();

    }

    /**
     * @inheritDoc
     */
    public function headings(): array
    {
        // TODO: Implement headings() method.
        return [
            'subject',
            'Message',
            'Category',
            'Group'
        ];
    }
}
