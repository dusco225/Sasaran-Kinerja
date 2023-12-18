<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\KinerjaController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\LogoutController;
use App\Http\Controllers\SasaranController;
use App\Http\Controllers\TargetController;
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
Route::get('/', function () {
    return view('/welcome');
});


Route::get('/login',[LoginController::class,'halamanlogin'])->name('login');
Route::post('/login',[LoginController::class,'authenticate']);
Route::get('/logout',[LogoutController::class,'logout'])->name('logout');

Route::resource('kinerjas',KinerjaController::class);


Route::resource('targets',TargetController::class);


Route::resource('sasarans',SasaranController::class);

Route::middleware(['auth'])->group(function () {
    Route::get('/kinerjas', [KinerjaController::class, 'index'])->name('kinerjas.index');
    Route::get('/sasarans', [SasaranController::class, 'index'])->name('sasarans.index');
    Route::get('/targets', [TargetController::class, 'index'])->name('targets.index');
    Route::get('/kinerjaexport', [KinerjaController::class, 'KinerjaExport'])->name('kinerjaexport');
});
