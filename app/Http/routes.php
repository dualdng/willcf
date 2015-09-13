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
Route::get('/','Home\MainController@getIndex');
/**
 * get index
 */
Route::get('/home', function () {
		return view('home/index');
});
/**
 * get menu 
 */
Route::get('/menu/{category}','Home\MainController@getMenu');
/**
 * get single
 */
Route::get('/single/{id}','Home\MainController@getSingle');
/**
 * get shopping cart
 */
Route::get('cart','Home\MainController@getCart');
/**
 * store cart cookie
 */
Route::post('setCartCookie','Home\MainController@setCartCookie');
/**
 * checkout
 */
Route::get('checkout','Home\MainController@getCheckout');
Route::post('checkout','Home\MainController@postCheckout');
/**
 * get navbar
 */
Route::get('nav','Home\MainController@getNav');
/**
 * listlocation
 */

Route::post('listLocation','Home\MainController@listLocation');
/**
 *  background
 */
Route::get('back','BackController@getBack');
//get category
Route::get('category','BackController@getCategory');
Route::post('category','BackController@postCategory');
//get food
Route::get('food','BackController@getFood');
Route::post('food','BackController@postFood');
//get foodbook
Route::get('cookbook','BackController@getCookbook');
Route::post('cookbook','BackController@postCookbook');
//get bookdetail
Route::get('bookdetail','BackController@getBookdetail');
Route::post('bookdetail','BackController@postBookdetail');

/**
 * 加入购物车
 */
/**
 * auth
 */
// Authentication routes...
Route::get('auth/login', 'Auth\MainController@getLogin');
Route::post('auth/login', 'Auth\MainController@postLogin');
Route::get('auth/logout', 'Auth\MainController@logout');
// Registration routes...
Route::get('auth/register', 'Auth\MainController@getRegister');
Route::post('auth/register', 'Auth\MainController@postRegister');
Route::get('auth/verify', 'Auth\MainController@verify');
Route::get('auth/verifyPhone', 'Auth\MainController@verifyPhone');
//send sms
Route::get('auth/sendSms','Auth\MainController@sendSms');
