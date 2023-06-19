<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Penilaian extends Model
{
    public $guard = "penilaian";
    use HasFactory;
    public $timestamps=false;
    // public $penilaianID=false;
    // public $akunPembeliID=false;
    // public $menuID=false;

    public function menu(){
        return $this->belongsTo('App\Models\Menu');
    }

    public function akunpembeli(){
        return $this->hasMany('App\Models\AkunPembeli');
    }
}
