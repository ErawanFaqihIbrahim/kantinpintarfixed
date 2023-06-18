<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class PembeliController extends Controller
{
    public function showSaldo()
    {
        $dataAkunPembeli = DB::table('akunpembelis')->get();
        $dataKedai = DB::table('kedais')->get();
        $saldoTerbaru = session('saldoJumlah'); // Ambil saldo terbaru dari session

        return view('akunpembeli.homepagepembeli', ['dataAkunPembeli' => $dataAkunPembeli, 'dataKedai' => $dataKedai, 'saldoTerbaru' => $saldoTerbaru]);
    }
}
