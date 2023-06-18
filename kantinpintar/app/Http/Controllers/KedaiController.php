<?php

namespace App\Http\Controllers;

use app\Models\akunpenjual;
use App\Models\kedai;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

class KedaiController extends Controller
{

    public function showKedai()
    {
        $dataKedai = DB::table('kedai')->get();

        return view('homepage1', ['dataKedai' => $dataKedai]);
    }

    public function index()
    {
        if (Auth::check()) {
            return redirect('daftarkedai');
        } else {
            return view('daftarkedai2');
        }
    }

    public function daftar()
    {
        if (Auth::check()) {
            $user = Auth::user();
            if ($user->is_daftar) {
                return view('akunpenjual.editkedai');
            } else {
                return view('akunpenjual.daftarkedai');
            }
        } else {
            return view('daftarkedai2');
        }
    }

    public function actionregisterKedai(Request $request)
    {
        $penjualID = Auth::guard('akunpenjual')->id(); // Mendapatkan ID penjual yang sedang login

        $user = new Kedai;
        $user->kedaiNama = $request->kedaiNama;
        $user->kedaiKeterangan = $request->kedaiKeterangan;
        $user->kedaiBuka = $request->kedaiBuka;
        $user->kedaiTutup = $request->kedaiTutup;
        // $user->kedaiLogo = $file->getClientOriginalName();
        $user->akunPenjualID = $penjualID; // Memasukkan ID penjual ke dalam kolom akunPenjualID

        $user->save();

        // Update nilai is_daftar menjadi true pada model AkunPenjual yang sedang login
        $penjual = AkunPenjual::find($penjualID);
        $penjual->is_daftar = true;
        $penjual->save();

        return view('/akunpenjual.dashboard');
    }

    public function updateKedai(Request $request)
    {

        $kedaiID = $request->id;
        $user = Kedai::find($kedaiID);
        $user->kedaiNama = $request->NamaKedai;
        $user->kedaiKeterangan = $request->kedaiKeterangan;
        $user->kedaiBuka = $request->kedaiBuka;
        $user->kedaiTutup = $request->kedaiTutup;
        // $user->kedaiID = $kedaiID;

        $file = $request->file('kedaiLogo');

        if ($file) {
            $tujuan = 'image';
            $user->kedaiLogo = $file->getClientOriginalName();
            $file->move($tujuan, $file->getClientOriginalName());
        }

        $user->update();

        return redirect('homepage2');
    }
}
