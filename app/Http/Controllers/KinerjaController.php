<?php

namespace App\Http\Controllers;

use App\Models\ViewKinerja;
use App\Models\kinerja;
use App\Models\sasaran;
use Illuminate\Http\Request;

class KinerjaController extends Controller
{
    public function index()
    {
        $kinerjas = ViewKinerja::all();
        $sasarans = Sasaran::all();
        // $kinerjas = ViewKinerja::all();
        return view('kinerjas.index', compact('kinerjas'));
        return view('kinerjas.index', compact('sasarans'));
    }

    public function create()
    {
        $sasarans = Sasaran::all();
        return view('kinerjas.create', compact('sasarans'));
    }

   public function store(Request $request)
{
    // Validasi input
    $request->validate([
        'sasaran_id' => 'required',
        'kinerja' => 'required',
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

    public function update(Request $request, Kinerja $kinerja,)
    {
        // Validasi input
        $request->validate([
            'kinerja' => 'required',
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
