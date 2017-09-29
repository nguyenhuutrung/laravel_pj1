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

Route::get('/home', 'HomeController@index')->middleware('CheckAdminEdu');;

Route::get('/admin/home', function () {
    return view('admin.home');
})->middleware('CheckAdmin');

Route::get('/errors/404', function () {
    return view('errors.404');
});