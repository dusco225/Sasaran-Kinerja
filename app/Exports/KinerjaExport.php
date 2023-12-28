<?php

namespace App\Exports;

use App\Models\ViewKinerja;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithMapping;

class KinerjaExport implements FromCollection, WithHeadings, WithMapping, ShouldAutoSize
{
    public function collection()
    {
        return ViewKinerja::all();
    }

    public function map($kinerja): array
    {
        return [
            (string) $kinerja->id,
            $kinerja->sasaran,
            $kinerja->kinerja,
        ];
    }

    public function headings(): array
    {
        return [
            'ID',
            'Sasaran',
            'Kinerja',
        ];
    }
}
