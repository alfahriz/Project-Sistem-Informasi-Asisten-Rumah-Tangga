<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Fasilitas extends Model
{
    protected $table = 'fasilitas';
    protected $primaryKey = 'idfasilitas';
    protected $fillable = ['namafasilitas'];

    public function art(){
    	return $this->belongsToMany('App\Art', 'fasilitasart', 'idfasilitas', 'idfasilitasart');
    }
}
