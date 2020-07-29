<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBagianTable extends Migration
{
    public function up()
    {
        Schema::create('bagian', function (Blueprint $table) {
            $table->BigIncrements('idbgn');
            $table->string('namabagian', 20);
            $table->timestamps();
        });

        Schema::table('art', function (Blueprint $table) {
            $table->foreign('idbagian')->references('idbgn')->on('bagian')->onDelete('cascade')->onUpdate('cascade');
        });
    }

    public function down()
    {
        Schema::dropIfExists('bagian');
    }
}
