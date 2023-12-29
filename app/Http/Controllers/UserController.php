<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\User;

class UserController extends Controller
{
    public function index()
    {
        $users = User::where('jabatan', '!=', 'admin')->get();
        return view('users.index', compact('users'));
    }

    public function create()
    {
        return view('users.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'jabatan' => 'required|in:Dekan,Wakil Dekan,Operator,Admin',
            'role' => 'required|in:dekan,operator,admin',
            'email' => 'required|email|unique:users',
            'password' => 'required|min:8',
        ]);

        $password = $request->has('password') ? bcrypt($request->password) : null;

        User::create([
            'name' => $request->name,
            'jabatan' => $request->jabatan,
            'role' => $request->role,
            'email' => $request->email,
            'password' => $password,
        ]);

        return redirect()->route('users.index')
            ->with('success', 'Data pengguna berhasil ditambahkan!');
    }

    public function show(User $user)
    {
        
    }

    public function edit(User $user)
    {
        return view('users.edit', compact('user'));
    }

    public function update(Request $request, User $user)
    {
        $request->validate([
            'name' => 'required',
            'jabatan' => 'required|in:Dekan,Wakil Dekan,Operator,Admin',
            'role' => 'required|in:dekan,operator,admin',
            'email' => 'required|email|unique:users,email,'.$user->id,
            'password' => 'nullable|min:8',
        ]);

        $password = $request->has('password') ? bcrypt($request->password) : $user->password;

        $user->update([
            'name' => $request->name,
            'jabatan' => $request->jabatan,
            'role' => $request->role,
            'email' => $request->email,
            'password' => $password,
        ]);

        return redirect()->route('users.index')
            ->with('success', 'Data pengguna berhasil diperbarui!');
    }

    public function destroy(User $user)
    { 
        $user->delete();

        return redirect()->route('users.index')
            ->with('success', 'User deleted successfully');
    }

}
