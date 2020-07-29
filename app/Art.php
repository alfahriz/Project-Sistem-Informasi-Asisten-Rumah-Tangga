<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Art extends Model
{
    protected $table = 'art';
    protected $fillable=['nik', 'namaart', 'tl','jk', 'idbagian', 'foto',];
    protected $dates=['tl'];

    public function getNamaArtAttribute($namaart){
    	return ucwords($namaart);
    }

    public function setNamaArtAttribute($namaart){
    	$this->attributes["namaart"] = strtolower($namaart);
    }

    public function telefon(){
        return $this->hasOne('App\Telefon', 'idtelefon');
    }

    public function bagian(){
        return $this->belongsTo('App\Bagian', 'idbagian');
    }

    public function fasilitas(){
        return $this->belongsToMany('App\Fasilitas', 'fasilitasart', 'idfasilitasart', 'idfasilitas')->withTimeStamps();
    }

    public function getFasilitasArtAttribute($namaart){
        return $this->fasilitas->pluck('idfasilitas')->toArray();
    }
}