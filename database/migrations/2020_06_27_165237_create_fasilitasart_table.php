<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFasilitasartTable extends Migration
{
    public function up()
    {
        Schema::create('fasilitasart', function (Blueprint $table) {
            $table->bigInteger('idfasilitasart')->unsigned()->index();
            $table->bigInteger('idfasilitas')->unsigned()->index();
            $table->timestamps();

            $table->primary(['idfasilitasart', 'idfasilitas']);

            $table->foreign('idfasilitasart')->references('id')->on('art')->onDelete('cascade')->onUpdate('cascade');

            $table->foreign('idfasilitas')->references('idfasilitas')->on('fasilitas')->onDelete('cascade')->onUpdate('cascade');
        });
    }

    public function down()
    {
        Schema::dropIfExists('fasilitasart');
    }
}
