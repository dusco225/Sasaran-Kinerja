<?php

namespace App\Exports;

use App\Models\ViewCapaian;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithMapping;
use Illuminate\Support\Facades\Auth;

class CapaianExport implements FromCollection, WithHeadings, WithMapping, ShouldAutoSize
{
    public function collection()
    {
        // Dapatkan informasi pengguna yang sedang login
        $user = Auth::user();

        // Ambil nilai filter dari permintaan
        $filterUserId = request()->input('filter_user');

        // Lakukan pemrosesan berdasarkan nilai filter
        // ...
        // Saring data berdasarkan user_id jika bukan admin
        if ($user->role != 'admin') {
            return ViewCapaian::where('user_id', $user->id)->get();
        }

        // Jika admin dan ada filter_user, saring berdasarkan filter_user
        if ($user->role == 'admin' && $filterUserId) {
            return ViewCapaian::where('user_id', $filterUserId)->get();
        }

        // Jika admin tanpa filter_user, ambil semua data
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
