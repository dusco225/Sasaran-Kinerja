<?php

namespace App\Http\Controllers;

use App\Models\kinerja;
use Illuminate\Http\Request;

class KinerjaController extends Controller
{
    public function index()
    {
        $kinerjas = Kinerja::all();
        return view('kinerjas.index', compact('kinerjas'));
    }

    public function create()
    {
        return view('kinerjas.create');
    }

   public function store(Request $request)
{
    // Validasi input
    $request->validate([
        'indikator_kinerja' => 'required',
        'sasaran' => 'required',
    ]);

    // Simpan data ke database
    Kinerja::create($request->all());

    return redirect()->route('kinerjas.index')
        ->with('success', 'Data Kinerja berhasil ditambahkan!');
}


    public function edit(Kinerja $kinerja)
    {
        return view('kinerjas.edit', compact('kinerja'));
    }

    public function update(Request $request, Kinerja $kinerja)
    {
        // Validasi input
        $request->validate([
            'indikator_kinerja' => 'required',
            'sasaran' => 'required',
        ]);

        // Perbarui data di database
        $kinerja->update($request->all());

        return redirect()->route('kinerjas.index')
            ->with('success', 'Data Kinerja berhasil diperbarui!');
    }

    public function destroy(Kinerja $kinerja)
    {
        // Hapus data dari database
        $kinerja->delete();

        return redirect()->route('kinerjas.index')
            ->with('success', 'Data Kinerja berhasil dihapus!');
    }
}
