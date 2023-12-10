<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function halamanlogin(){
        return view("login/login");
    }

    // Di dalam metode login pada AuthController atau kontroler kustom Anda
public function postlogin(Request $request)
{
    $credentials = $request->only('email', 'password');

    if (Auth::attempt($credentials)) {
        // Pengguna terdaftar, lanjutkan dengan proses login
        return redirect()->intended('/sasarans');
    }

    // ID atau password tidak valid
    return back()->withErrors(['email' => 'email atau password tidak valid']);
}

    // public function postlogin(Request $request){
    //     if(Auth::attempt($request->only('email','password'))){
    //         return redirect('/sasarans');
    //     }
    //     return redirect('/');
    // }

    public function logout(){
        Auth::logout();
        return redirect('/login');
    }

    public function authenticate(Request $request){
        $request->validate([
            'email' => 'required|email:dns',
            'password' => 'required',
        ]);
    }
}
