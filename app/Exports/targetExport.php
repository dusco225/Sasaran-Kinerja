<?php

namespace App\Exports;

use App\Models\ViewTarget;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithMapping;

class TargetExport implements FromCollection, WithHeadings, WithMapping, ShouldAutoSize
{
    public function collection()
    {
        return ViewTarget::all();
    }

    public function map($target): array
    {
        return [
            $target->sasaran,
            $target->kinerja,
            $target->tahunan,
            $target->I,
            $target->II,
            $target->III,
            $target->IV,
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
