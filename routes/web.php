<?php
Route::get('/', 'HomeController@index');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::resource('cuenta', 'ListaCuentasController');
Route::resource('beneficiado', 'ListaBeneficadosController');