<?php

namespace App\Exports;

use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class Notices implements FromCollection, WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        //
        return $notices = DB::table('group_mails')
            ->select('group_mails.filter','group_mails.subject','group_mails.message','group_mails.mode','group_mails.category','group_mails.created_at')
            ->orderBy('created_at','DESC')
            ->get();
    }

    /**
     * @inheritDoc
     */
    public function headings(): array
    {
        // TODO: Implement headings() method.
        return [
            'Subject',
            'Message',
            'Mode',
            'Category',
            'Sent On'
        ];
    }
}
