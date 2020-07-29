<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Bagian;
use App\Fasilitas;

class FormArtServiceProvider extends ServiceProvider
{
    public function boot()
    {
        view()->composer('form', function($view) {
            $view->with('bagianlist', Bagian::pluck('namabagian', 'idbgn'));
            $view->with('fasilitaslist', Fasilitas::pluck('namafasilitas', 'idfasilitas'));
        });
        view()->composer('formed', function($view) {
            $view->with('bagianlist', Bagian::pluck('namabagian', 'idbgn'));
            $view->with('fasilitaslist', Fasilitas::pluck('namafasilitas', 'idfasilitas'));
        });
    }

    public function register()
    {
        //
    }
}