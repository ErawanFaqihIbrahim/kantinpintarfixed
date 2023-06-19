<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class pesanan extends Model
{
    use HasFactory;
    public $timestamps = false;

    protected $guard = 'pesanan';


        protected $fillable = [
            'akunPembeliID'

        ];

        protected $primaryKey =
            'pesananID'
        ;

}
