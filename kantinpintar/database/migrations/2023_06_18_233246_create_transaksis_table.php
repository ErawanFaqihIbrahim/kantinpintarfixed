<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('transaksis', function (Blueprint $table) {
            $table->id('transaksiID');
            $table->timestamps();
            $table->unsignedBigInteger('akunPembeliID');
            $table->unsignedBigInteger('pesananID');
            $table->unsignedBigInteger('akunPenjualID');

            $table->foreign('akunPembeliID')->references('id')->on('akunpembelis');
            $table->foreign('pesananID')->references('pesananID')->on('pesanans');
            $table->foreign('akunPenjualID')->references('id')->on('akunpenjuals');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('transaksis');
    }
};
