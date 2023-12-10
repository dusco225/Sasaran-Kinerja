<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\KinerjaController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\SasaranController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/login',[LoginController::class,'halamanlogin'])->name('login');
Route::post('/postlogin',[LoginController::class,'postlogin'])->name('postlogin');
Route::get('/logout',[LoginController::class,'logout'])->name('logout');

Route::resource('kinerjas',KinerjaController::class);
Route::get('/kinerjas', [KinerjaController::class, 'index'])->name('kinerjas.index');

Route::resource('sasarans',SasaranController::class);
Route::get('/sasarans', [SasaranController::class, 'index'])->name('sasarans.index');

Route::resource('admin',AdminController::class);
Route::get('/admin', [AdminController::class, 'halamanadmin'])->name('admin.admin1');

Route::resource('user',UserController::class);
Route::get('/user', [UserController::class, 'halamanuser'])->name('sasarans.user');

Route::get('/', function () {
    return redirect('/sasarans');
});

Route::middleware(['auth'])->group(function(){
   
});