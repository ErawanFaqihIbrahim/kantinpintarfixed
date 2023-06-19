<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\akunpenjual;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Models\Pesanan;
use App\Models\Menu;
use App\Models\ListPesanan;

class menuController extends Controller
{
    public function showMenu($id)
    {
        $namaKedai = akunpenjual::find($id); // Gantikan $id dengan ID kedai yang sesuai
        $dataMenu = DB::table('menus')->where('penjualID', $namaKedai->penjualID)->get();
        return view('akunpembeli.menupembeli', ['dataMenu' => $dataMenu, 'namaKedai' => $namaKedai]);
    }

    // public function showMenu($kedaiID)
    // {

    //     $kedaiID = 6;

    //     $latest = Pesanan::latest('pesananID')->first();
    //     $pesananID = $latest->pesananID;

    //     $dataMenu = Menu::where('kedaiID', $kedaiID)->get();

    //     $namaKedai = DB::table('menu')
    //         ->join('kedai', 'menu.kedaiID', '=', 'kedai.kedaiID')
    //         ->where('kedai.kedaiID', $kedaiID)
    //         ->first();

    //     $cektransaksi = DB::table('transaksi')->where('pesananID', $latest->pesananID)->get();
    //     if (count($cektransaksi) != 0) {
    //         $jumlah = 0;
    //         $total = 0;
    //     } else {
    //         $jumlah = ListPesanan::where('pesananID', $pesananID)->sum('pesananJumlah');
    //         $total = ListPesanan::where('pesananID', $pesananID)->sum('pesananHarga');
    //     }

    //     return view('menupembeli', [
    //         'dataMenu' => $dataMenu,
    //         'jumlah' => $jumlah,
    //         'total' => $total,
    //         'namaKedai' => $namaKedai
    //     ]);

    // }

    public function showDetailMenu($menuID)
    {
        $detailMenu = Menu::find($menuID);
        return view('akunpembeli.detailmenu', ['detailMenu' => $detailMenu]);
    }

    //upload menu penjual
    public function showFormMenu()
    {
        $idPenjual = Auth::guard('akunpenjual')->id(); // Mengambil ID penjual yang sedang login
        $penjualID = akunpenjual::find($idPenjual)->penjualID; // Mengambil penjualID berdasarkan ID penjual

        return view('akunpenjual.uploadmenu', ['penjualID' => $penjualID]);
    }

    public function uploadMenu(Request $req)
    {
        $idPenjual = Auth::guard('akunpenjual')->id(); // Mengambil ID penjual yang sedang login

        $file = $req->file('menuGambar');

        if ($file) {
            // File diunggah, lakukan proses penyimpanan
            $tujuan = 'image';
            $namaFile = $file->getClientOriginalName();

            $datauploadmenu = new Menu;
            $datauploadmenu->menuNama = $req->menuNama;
            $datauploadmenu->menuHarga = $req->menuHarga;
            $datauploadmenu->menuGambar = $namaFile;
            $datauploadmenu->menuDeskripsi = $req->menuDeskripsi;
            $datauploadmenu->penjualID = $idPenjual;

            $file->move($tujuan, $namaFile);

            $datauploadmenu->save();

            return redirect('menukedai');
        } else {
            // File tidak diunggah, berikan nilai default atau abaikan atribut menuGambar
            $datauploadmenu = new Menu;
            $datauploadmenu->menuNama = $req->menuNama;
            $datauploadmenu->menuHarga = $req->menuHarga;
            $datauploadmenu->menuDeskripsi = $req->menuDeskripsi;
            $datauploadmenu->penjualID = $idPenjual;

            $datauploadmenu->save();

            return redirect('menukedai');
        }
    }

    public $showMenu;

    //kayakny hide n show dihilangin(?) klo udh di hide mereka shownya lagi gimana
    public function showMenuKedai()
    {
        $penjualID = Auth::guard('akunpenjual')->id(); // Mendapatkan ID penjual yang sedang login
        $jumlahmenupenjual = Menu::where('penjualID', $penjualID)->count();
        $menupenjual = Menu::where('penjualID', $penjualID)->get();
        return view('akunpenjual.menukedai', ['menupenjual' => $menupenjual, 'jumlahmenupenjual' => $jumlahmenupenjual]);
    }

    public function editMenu($menuID)
    {
        $dataMenu = Menu::find($menuID);
        return view('akunpenjual.editmenu', ['dataMenu' => $dataMenu]);
    }

    public function updateMenu(Request $req, $menuID)
    {
        $penjualID = Auth::guard('akunpenjual')->id(); // Mendapatkan ID penjual yang sedang login

        $datauploadmenu = Menu::find($menuID);
        $datauploadmenu->menuNama = $req->menuNama;
        $datauploadmenu->menuHarga = $req->menuHarga;
        $datauploadmenu->menuDeskripsi = $req->menuDeskripsi;
        $datauploadmenu->penjualID = $penjualID;

        $file = $req->file('menuGambar');

        if ($file) {
            $tujuan = 'image';
            $datauploadmenu->menuGambar = $file->getClientOriginalName();
            $file->move($tujuan, $file->getClientOriginalName());
        }

        $datauploadmenu->update();

        return redirect('menukedai');
    }
}
