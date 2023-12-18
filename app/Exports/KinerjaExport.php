<?php

namespace App\Exports;

use App\Models\kinerja;
use Maatwebsite\Excel\Concerns\FromCollection;

class KinerjaExport implements FromCollection
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return kinerja::all();
    }
}
