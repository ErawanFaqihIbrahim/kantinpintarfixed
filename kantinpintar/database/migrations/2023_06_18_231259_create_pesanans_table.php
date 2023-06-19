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
        Schema::create('pesanans', function (Blueprint $table) {
            $table->id('pesananID');
            $table->integer('pesananJumlah');
            $table->integer('pesananHarga');
            $table->unsignedBigInteger('akunPembeliID');

            $table->foreign('akunPembeliID')->references('id')->on('akunpembelis');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pesanans');
    }
};
