<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\CapaianController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\KinerjaController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\LogoutController;
use App\Http\Controllers\SasaranController;
use App\Http\Controllers\TargetController;
use App\Http\Controllers\UserController;
use App\Models\Kinerja;
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



Route::resource('sasarans',SasaranController::class);
Route::resource('kinerjas',KinerjaController::class);
Route::resource('targets',TargetController::class);
Route::resource('capaians',CapaianController::class);
Route::resource('users',UserController::class);
Route::resource('dashboards',DashboardController::class);



Route::middleware(['auth'])->group(function () {
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');
    Route::get('/kinerjaexport', [KinerjaController::class, 'KinerjaExport'])->name('kinerjaexport');
    Route::get('/targetexport', [TargetController::class, 'targetExport'])->name('targetexport');
    Route::get('/capaianexport', [CapaianController::class, 'CapaianExport'])->name('capaianexport');
});

Route::group(['middleware' => 'dekan'], function () {
    Route::get('/kinerjas', [KinerjaController::class, 'index'])->name('kinerjas.index');
    Route::get('/sasarans', [SasaranController::class, 'index'])->name('sasarans.index');
});

Route::group(['middleware' => 'operator'], function () {
    Route::get('/targets', [TargetController::class, 'index'])->name('targets.index');
    Route::get('/capaians', [CapaianController::class, 'index'])->name('capaians.index');
});

Route::group(['middleware' => 'admin'], function () {
    Route::get('/targetexport', [TargetController::class, 'targetExport'])->name('targetexport');
    Route::get('/users', [UserController::class, 'index'])->name('users.index');
});