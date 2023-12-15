<?php

namespace App\Http\Controllers;

use App\Models\Kinerja;
use App\Models\ViewKinerja;
use App\Models\ViewTarget;
use App\Models\Sasaran;
use App\Models\target;
use Illuminate\Http\Request;

class TargetController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $targets = Target::all();
        return view('targets.index', compact('targets'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {     $nilai = request()->input('nilai');
    
        if ($nilai) {
            $kinerjas = ViewKinerja::where('sasaran_id', $nilai)->get();
            return response()->json(['data' => $kinerjas]); 
        } 
            $sasarans = Sasaran::all();
            return view('targets.create', compact('sasarans'));

        
    
    }

    /**
     * Store a newly created resource in storage.
     */
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

        Target::create($request->all());

        return redirect()->route('targets.index')
            ->with('success', 'Data Kinerja berhasil ditambahkan!');
    }

    /**
     * Display the specified resource.
     */
    public function show(target $target)
    {
        
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(target $target)
    {
        $target = ViewTarget::all();
        $sasarans = Sasaran::all();
        $kinerjas = Kinerja::all();   
        return view('targets.edit', compact('target','sasarans','kinerjas'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, target $target)
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

        $target->update($request->all());

        return redirect()->route('targets.index')
        ->with('success', 'Data Target berhasil diperbarui! ');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(target $target)
    {
        $target->delete();

        return redirect()->route('targets.index')
            ->with('success', 'Data Target berhasil dihapus!');
    }
    
}
