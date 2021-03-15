<?php

use Illuminate\Support\Facades\Route;
use App\User;
use App\Notifications\InviteColaboratorNotification;
use App\Notifications\GenericNotification;
use Illuminate\Support\Facades\Notification;
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
Route::get('/', 'ProductController@index');
Route::get('password/reset', 'Auth\ForgotPasswordController@showLinkRequestForm')->name('password.request');
Route::post('password/email', 'UserController@validatePasswordRequest')->name('password.email');
Route::get('passwordapi/reset/{token}', 'Auth\ResetPasswordController@showResetForm')->name('password.reset2');
Route::post('reset_password_without_token', 'UserController@validatePasswordRequest');
Route::post('reset_password_with_token', 'UserController@resetPassword');

Auth::routes([
    "register" => false
]);

Route::group([
    'middleware'=>['auth'] ],
    function(){
        Route::get('productos','ProductController@index')->name('productos.index');
        Route::post('productos/save','ProductController@save');
        Route::post('productos/save_edit/{product}','ProductController@save_edit');
        Route::delete('productos/delete/{product}','ProductController@delete');
        Route::get('/producto/getJson/', 'ProductController@getJson');
        Route::get('/producto/edit/{product}', 'ProductController@edit');
        Route::get('productos/create', function () {
            return view('products.create');
        });

     });
