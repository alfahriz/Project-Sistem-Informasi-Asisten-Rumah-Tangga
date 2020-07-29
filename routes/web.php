<?php

Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');

Route::get('/', 'artController@homepage');
Route::get('about', 'artController@about');
Route::get('art', 'artController@index');
Route::get('art/create', 'artController@create');
Route::get('art/{art}', 'artController@show');
Route::post('art', 'artController@store');
Route::get('art/edit/{art}', 'artController@edit');
Route::patch('art/{art}/update', 'artController@update');
Route::get('art/{art}/delete', 'artController@delete');

?>