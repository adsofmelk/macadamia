<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();
Route::get('ultimosvisitantes','VisitanteController@ultimosVisitantes');
Route::resource('visitante','VisitanteController');

Route::post('getpad','SignatureController@getPad');
Route::resource('signature','SignatureController');

Route::get('/home', 'HomeController@index')->name('home');
