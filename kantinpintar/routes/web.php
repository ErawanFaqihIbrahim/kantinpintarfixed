<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\SaldoController;
use App\Http\Controllers\PembeliController;
use App\Http\Controllers\KedaiController;
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

// landing page
Route::get('/', function () {
    return view('landingpage');
});

// masuk sbg
Route::get('/masuksbg', function () {
    return view('masuksebagai');
});

// homepage pembeli
Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth:akunpembeli', 'verified'])->name('dashboard');

// tampil laman isi ulang saldo
Route::get('/redeemvoucher1', function () {
    return view('akunpembeli.redeemvoucher1');
})->middleware(['auth:akunpembeli', 'verified'])->name('redeemvoucher1');

// post isi ulang saldo
Route::post('/redeemvoucher1', [
    SaldoController::class, 'showUpdateSaldo'
])->middleware(['auth:akunpembeli', 'verified'])->name('postredeemvoucher1');

// denah pembeli
Route::get('/akunpembeli/denah', function () {
    return view('akunpembeli.denah');
})->middleware(['auth:akunpembeli', 'verified'])->name('denah');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';

Route::get('/akunpembeli/dashboard', [
    PembeliController::class, 'showSaldo'
])->middleware(['auth:akunpembeli', 'verified'])->name('akunpembeli.dashboard');

Route::middleware('auth:akunpembeli')->group(function () {
    Route::get('/akunpembeli/profile', [ProfileController::class, 'edit'])->name('akunpembeli.profile.edit');
    Route::patch('/akunpembeli/profile', [ProfileController::class, 'update'])->name('akunpembeli.profile.update');
    Route::delete('/akunpembeli/profile', [ProfileController::class, 'destroy'])->name('akunpembeli.profile.destroy');
});

require __DIR__.'/akunpembeliauth.php';

Route::get('/akunpenjual/dashboard', function () {
    return view('akunpenjual.dashboard');
})->middleware(['auth:akunpenjual', 'verified'])->name('akunpenjual.dashboard');

// daftar kedai
Route::get('/akunpenjual/mystore', [
    KedaiController::class, 'daftar'
])->middleware(['auth:akunpenjual', 'verified'])->name('mystore');

Route::post('/akunpenjual/actionregisterKedai', [
    KedaiController::class, 'actionregisterKedai'
])->middleware(['auth:akunpenjual', 'verified'])->name('actionregisterKedai');

Route::middleware('auth:akunpenjual')->group(function () {
    Route::get('/akunpenjual/profile', [ProfileController::class, 'edit'])->name('akunpenjual.profile.edit');
    Route::patch('/akunpenjual/profile', [ProfileController::class, 'update'])->name('akunpenjual.profile.update');
    Route::delete('/akunpenjual/profile', [ProfileController::class, 'destroy'])->name('akunpenjual.profile.destroy');
});

require __DIR__.'/akunpenjualauth.php';
