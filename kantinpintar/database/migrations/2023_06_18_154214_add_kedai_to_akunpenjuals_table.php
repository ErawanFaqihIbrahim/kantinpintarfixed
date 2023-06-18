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
        Schema::table('akunpenjuals', function (Blueprint $table) {
            $table->string('kedaiNama')->nullable();
            $table->string('kedaiBuka')->nullable();
            $table->string('kedaiTutup')->nullable();
            $table->string('kedaiLogo')->nullable();
            $table->string('kedaiKeterangan')->nullable();
            $table->boolean('is_daftar')->default(false);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('akunpenjuals', function (Blueprint $table) {
            $table->dropColumn('kedaiNama');
            $table->dropColumn('kedaiBuka');
            $table->dropColumn('kedaiTutup');
            $table->dropColumn('kedaiLogo');
            $table->dropColumn('kedaiKeterangan');
            $table->dropColumn('is_daftar');
        });
    }
};
