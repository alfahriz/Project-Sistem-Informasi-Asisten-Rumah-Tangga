<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTelefonTable extends Migration
{
    public function up()
    {
        Schema::create('telefon', function (Blueprint $table) {
            $table->Biginteger('idtelefon')->unsigned()->primary('idtelefon');
            $table->string('notelefon')->unique();
            $table->timestamps();

            $table->foreign('idtelefon')->references('id')->on('art')->onDelete('cascade')->onUpdate('cascade');
        });
    }

    public function down()
    {
        Schema::dropIfExists('telefon');
    }
}
