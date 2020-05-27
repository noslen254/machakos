<?php

namespace App\Exports;

use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class tournaments implements FromCollection,WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        //
        return $tournaments = DB::table('first_tees')
                            ->join('tees','tees.id','first_tees.tee_id')
                            ->join('clients','clients.id','first_tees.client_id')
                            ->join('games','games.id','first_tees.game_id')
                            ->join('times','times.id','first_tees.time_id')
                            ->select('tees.tee','clients.firstName','clients.middleName','clients.lastName','games.tournament','times.name','first_tees.phone','first_tees.player1','first_tees.player2','first_tees.player3')
                            ->get();
    }

    /**
     * @inheritDoc
     */
    public function headings(): array
    {
        // TODO: Implement headings() method.
        return [
            'Tee',
            'First Name',
            'MiddleName',
            'Last Name',
            'Tournament',
            'Time',
            'Phone',
            'Players'

        ];
    }
}
