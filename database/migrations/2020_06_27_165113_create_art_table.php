<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateArtTable extends Migration
{
    public function up()
    {
        Schema::create('art', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('nik', 4)->unique();
            $table->string('namaart');
            $table->date('tl');
            $table->enum('jk', ['L', 'P']);
            $table->BigInteger('idbagian')->unsigned();
            $table->String('foto')->nullable();
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('art');
    }
}
