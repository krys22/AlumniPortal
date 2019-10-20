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

Route::get('/home', 'HomeController@index');



Route::group(['middleware'=>'auth'], function (){

    Route::resource('users', 'UserController');

    Route::get('/chat','ChatController@index')->name('chats.index');

    Route::get('/messages','MessageController@index')->name('messages.index');

    Route::post('/send_message','MessageController@send_message')->name('send.message');

    Route::get('/documents','DocumentController@index')->name('documents.index');

    Route::post('/documents/store','DocumentController@store')->name('documents.store');

    Route::post('/documents/store','DocumentController@storeSingle')->name('documents.store.single');
});
