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
        Schema::create('kedais', function (Blueprint $table) {
            $table->id();
            $table->string('kedaiNama')->nullable();
            $table->string('kedaiBuka')->nullable();
            $table->string('kedaiTutup')->nullable();
            $table->string('kedaiLogo')->nullable();
            $table->string('kedaiKeterangan')->nullable();
            $table->unsignedBigInteger('akunPenjualID');

            $table->foreign('akunPenjualID')->references('id')->on('akunpenjuals')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('kedais');
    }
};
