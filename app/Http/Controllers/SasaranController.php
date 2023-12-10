<?php

namespace App\Http\Controllers;

use App\Models\sasaran;
use App\Http\Requests\StoresasaranRequest;
use App\Http\Requests\UpdatesasaranRequest;

class SasaranController extends Controller
{

    public function index()
    {
        $sasarans = Sasaran::all();
        return view('sasarans.index', compact('sasarans'));
    }

    public function admin()
    {
        $sasarans = Sasaran::all();
        return view('sasarans.admin', compact('sasarans'));
    }

    public function create()
    {
        return view('sasarans.create');
    }

    public function store(StoresasaranRequest $request)
    {
        // Validasi input
        $request->validate([
            'sasaran' => 'required',
        ]);

        // Simpan data ke database
        Sasaran::create($request->all());

        return redirect()->route('sasarans.index')
            ->with('success', 'Data Sasaran berhasil ditambahkan!');
    }

    public function edit(sasaran $sasaran)
    {
        return view('sasarans.edit', compact('sasaran'));
    }

    public function update(UpdatesasaranRequest $request, sasaran $sasaran)
    {
         // Validasi input
         $request->validate([
            'sasaran' => 'required',
        ]);

        // Perbarui data di database
        $sasaran->update($request->all());

        return redirect()->route('sasarans.index')
            ->with('success', 'Data Sasaran berhasil diperbarui!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(sasaran $sasaran)
    {
         // Hapus data dari database
         $sasaran->delete();

         return redirect()->route('sasarans.index')
             ->with('success', 'Data Sasaran berhasil dihapus!');
    }

}
