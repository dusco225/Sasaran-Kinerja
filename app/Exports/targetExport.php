<?php

namespace App\Exports;

use App\Models\target;
use Maatwebsite\Excel\Concerns\FromCollection;

class targetExport implements FromCollection
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return target::all();
    }
}
