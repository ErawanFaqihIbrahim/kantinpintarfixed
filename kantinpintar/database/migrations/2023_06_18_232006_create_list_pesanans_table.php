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
        Schema::create('list_pesanans', function (Blueprint $table) {
            $table->id();

            $table->unsignedBigInteger('pesananID');
            $table->unsignedBigInteger('menuID');

            $table->foreign('pesananID')->references('pesananID')->on('pesanans');
            $table->foreign('menuID')->references('menuID')->on('menus');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('list_pesanans');
    }
};
