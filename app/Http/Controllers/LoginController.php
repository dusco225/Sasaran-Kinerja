<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function halamanlogin(){
        return view('login.login',[
                'title' => 'Login',
                'active' => 'login'
        ]);
    }
    public function authenticate(Request $request)
    {
        $credentials = $request->validate([
            'email' => 'required|email:dns',
            'password' => 'required'
        ]);
        if (Auth::attempt($credentials)) {
                $request->session()->regenerate();
                return redirect()->intended('/dashboard');
        }
        return back()->with('loginError', 'Login Failed!!!!!');
    }
}
// public function halamanlogin(){
    //     return view("login/login");
    // }

    // Di dalam metode login pada AuthController atau kontroler kustom Anda
// public function postlogin(Request $request)
// {
//     $credentials = $request->only('email', 'password');

//     if (Auth::attempt($credentials)) {
//         // Pengguna terdaftar, lanjutkan dengan proses login
//         return redirect()->intended('/sasarans');
//     }

    // ID atau password tidak valid
//     return back()->withErrors(['email' => 'Email atau Password tidak valid']);
// }
//     public function logout(){
//         Auth::logout();
//         return redirect('/login');
//     }

    // public function authenticate(Request $request){
    //     $request->validate([
    //         'email' => 'required|email:dns',
    //         'password' => 'required',
    //     ]);
    // }