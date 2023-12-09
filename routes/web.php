<?php

use App\Http\Controllers\KinerjaController;
use App\Http\Controllers\SasaranController;
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

Route::resource('kinerjas',KinerjaController::class);
Route::get('/kinerjas', [KinerjaController::class, 'index'])->name('kinerjas.index');

Route::resource('sasarans',SasaranController::class);
Route::get('/sasarans', [SasaranController::class, 'index'])->name('sasarans.index');

Route::get('/', function () {
    return view('/','sasarans');
});



