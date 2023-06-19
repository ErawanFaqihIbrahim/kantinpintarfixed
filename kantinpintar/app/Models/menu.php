<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class menu extends Model
{
    use HasFactory;

    protected $guard = 'menu';

    public $timestamp = false;

    protected $fillable = [
        'menuID',
        'menuNama',
        'menuGambar',
        'menuHarga',
        'menuDeskripsi',
        'penjualID'
    ];

    protected $primaryKey = 'menuID';
}
