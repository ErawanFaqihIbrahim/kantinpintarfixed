<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\akunpenjual;
use Illuminate\Support\Facades\DB;


class jadwalController extends Controller
{
    public function showJadwal($id)
    {
        $jadwalKedai = akunpenjual::find($id);
        $showRating = DB::table('penilaians')
        ->avg('penilaianRating');
        return view('akunpembeli.jadwalkedai', ['jadwalKedai' => $jadwalKedai, 'showRating' => $showRating]);
    }

}
