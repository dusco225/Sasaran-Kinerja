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
            (string) $target->id,
            $target->sasaran,
            $target->kinerja,
            $target->tahunan,
            $target->I,
            $target->II,
            $target->III,
            $target->IV,
            $target->created_at,
            $target->updated_at,
        ];
    }

    public function headings(): array
    {
        return [
            'ID',
            'Sasaran',
            'Kinerja',
            'Tahunan',
            'I',
            'II',
            'III',
            'IV',
            'Created At',
            'Updated At',
        ];
    }
}
