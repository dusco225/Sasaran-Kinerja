<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Capaian;
use App\Models\Kinerja;
use App\Models\Sasaran;
use App\Models\ViewCapaian;
use App\Models\ViewKinerja;
use Illuminate\Http\Request;
use App\Exports\CapaianExport;
use Illuminate\Support\Facades\Auth;
use Maatwebsite\Excel\Facades\Excel;

class CapaianController extends Controller
{
    public function index(Request $request)
    {
         // Dapatkan informasi pengguna yang sedang login
    $user = Auth::user();

    if ($user->role == 'admin' ) {
        // Jika pengguna adalah admin atau dekan, ambil semua capaian
        $capaians = Capaian::query();

        $filterUser = $request->input('filter_user');
        if ($filterUser) {
            $capaians->where('user_id', $filterUser);
        }

    } else {
        // Jika bukan admin atau dekan, saring data Capaian berdasarkan user_id yang sesuai
        $capaians = Capaian::where('user_id', $user->id);
    }

    $capaians = $capaians->get();

    $allUsers = ($user->role == 'admin') ? User::all() : null;

    return view('capaians.index', compact('capaians', 'user', 'allUsers'));
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
 // Dapatkan informasi pengguna yang sedang login
 $user = Auth::user();

 // Tambahkan user_id ke data sebelum disimpan
 $data = $request->all();
 $data['user_id'] = $user->id;

 Capaian::create($data);

 return redirect()->route('capaians.index')
     ->with('success', 'Data Kinerja berhasil ditambahkan!');
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