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
        Schema::create('capaians', function (Blueprint $table) {
            $table->id();
            $table->integer('sasaran_id');
            $table->integer('kinerja_id');
            $table->string('tahunan')->nullable();
            $table->string('I')->nullable();
            $table->string('II')->nullable();
            $table->string('III')->nullable();
            $table->string('IV')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('capaians');
    }
};
