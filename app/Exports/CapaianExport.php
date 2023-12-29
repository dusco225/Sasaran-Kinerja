<?php

namespace App\Exports;

use App\Models\ViewCapaian;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithMapping;

class CapaianExport implements FromCollection, WithHeadings, WithMapping, ShouldAutoSize
{
    public function collection()
    {
        return ViewCapaian::all();
    }

    public function map($capaian): array
    {
        return [
            $capaian->sasaran,
            $capaian->kinerja,
            $capaian->tahunan,
            $capaian->I,
            $capaian->II,
            $capaian->III,
            $capaian->IV,
        ];
    }

    public function headings(): array
    {
        return [
            'Sasaran',
            'Kinerja',
            'Tahunan',
            'I',
            'II',
            'III',
            'IV',
        ];
    }
}
