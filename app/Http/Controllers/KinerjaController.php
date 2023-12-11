<?php

namespace App\Http\Controllers;

use App\Models\ViewKinerja;
use App\Models\Kinerja;
use App\Models\sasaran;
use Illuminate\Http\Request;

class KinerjaController extends Controller
{
    public function index()
    {
        $kinerjas = ViewKinerja::all();
        return view ('kinerjas.index', compact('kinerjas'));
    }
    public function create()
    {
        // $nilai = 17;
        $nilai = request()->input('nilai');
    
        if ($nilai) {
            $kinerjas = ViewKinerja::where('sasaran_id', $nilai)->get();
            return response()->json(['data' => $kinerjas]);
            // $sasarans = Sasaran::all();
            // return view('kinerjas.create', compact('sasarans'));

        } else {
            $sasarans = Sasaran::all();
            return view('kinerjas.create', compact('sasarans'));

        }
        
    
    }
    

   public function store(Request $request)
{
    // Validasi input
    $request->validate([
        'sasaran' => 'required',
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
