<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/
Route::get('/', function () {
		return view('home/home');
});
/**
 * get index
 */
Route::get('/home', function () {
		return view('home/index');
});
/**
 * get menu 
 */
Route::get('/menu','MainControler@getMenu');
/**
 * get single
 */
Route::get('/single',function(){
		return view('home/single');
});
