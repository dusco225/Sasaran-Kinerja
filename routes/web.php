<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\KinerjaController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\LogoutController;
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
//

Route::get('/login',[LoginController::class,'halamanlogin']);
Route::post('/login',[LoginController::class,'authenticate']);
Route::get('/logout',[LogoutController::class,'logout'])->name('logout');


Route::resource('kinerjas',KinerjaController::class);
Route::get('/kinerjas', [KinerjaController::class, 'index'])->name('kinerjas.index');
// Route::post('/kinerjas', [KinerjaController::class, 'create'])->name('kinerjas.create');

Route::resource('sasarans',SasaranController::class);
Route::get('/sasarans', [SasaranController::class, 'index'])->name('sasarans.index');


Route::get('/', function () {
    return redirect('/sasarans');
});

