<?php

namespace App\Http\Controllers;

use App\Models\Capaian;
use App\Models\Kinerja;
use App\Models\Sasaran;
use App\Models\ViewKinerja;
use App\Models\ViewCapaian;
use Illuminate\Http\Request;
use App\Exports\CapaianExport;
use Maatwebsite\Excel\Facades\Excel;

class CapaianController extends Controller
{
    public function index()
    {
        $capaians = Capaian::all();
        return view('capaians.index', compact('capaians'));
    }
    public function CapaianExport()
    {
        return Excel::download(new CapaianExport, 'Capaian.xlsx');
    }

    public function create()
    {     $nilai = request()->input('nilai');
    
        if ($nilai) {
            $kinerjas = ViewKinerja::where('sasaran_id', $nilai)->get();
            return response()->json(['data' => $kinerjas]);
            // $sasarans = Sasaran::all();
            // return view('kinerjas.create', compact('sasarans'));

        } else {
            $sasarans = Sasaran::all();
            return view('capaians.create', compact('sasarans'));

        }
    }

    public function store(Request $request)
    {
        $request->validate([
            'sasaran_id' => 'required',
            'kinerja_id' => 'required',
            'tahunan' => 'nullable',
            'I' => 'nullable',
            'II' => 'nullable',
            'III' => 'nullable',
            'IV' => 'nullable',
        ]);

        Capaian::create($request->all());

        return redirect()->route('capaians.index')
            ->with('success', 'Data Kinerja berhasil ditambahkan!');
    }

    public function show(Capaian $capaian)
    {
        
    }

    public function edit(Capaian $capaian)
    {
        $sasarans = Sasaran::all();
        $kinerjas = Kinerja::all();   
        return view('capaians.edit', compact('capaian','sasarans','kinerjas'));
    }

    public function update(Request $request, Capaian $capaian)
    {
        $request->validate([
            'sasaran_id' => 'required',
            'kinerja_id' => 'required',
            'tahunan' => 'nullable',
            'I' => 'nullable',
            'II' => 'nullable',
            'III' => 'nullable',
            'IV' => 'nullable',
        ]);

        $capaian->update($request->all());

        return redirect()->route('capaians.index')
        ->with('success', 'Data capaian berhasil diperbarui! ');
    }

    public function destroy(Capaian $capaian)
    {
        $capaian->delete();

        return redirect()->route('capaians.index')
            ->with('success', 'Data capaian berhasil dihapus!');
    }
    

}