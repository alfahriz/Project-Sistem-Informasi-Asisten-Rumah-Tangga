<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Bagian extends Model
{
    protected $table = 'bagian';
	protected $primaryKey = 'idbgn';
    protected $fillable = ['idbgn','namabagian'];

    public function art(){
    	return $this->hasMany('App\Art', 'idbagian');
    }
}
