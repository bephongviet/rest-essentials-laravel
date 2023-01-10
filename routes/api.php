<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/


Route::post('user/register', 'App\Http\Controllers\UserController@register');
Route::post('user/verify', 'App\Http\Controllers\UserController@verify');
Route::post('user/authenticate', 'App\Http\Controllers\UserController@authenticate');
Route::post('user/password', 'App\Http\Controllers\UserController@updatePassword');
Route::post('user/login', 'App\Http\Controllers\UserController@login');
Route::get('login', 'App\Http\Controllers\UserController@login');

//Route::get('/user/{id}', 'App\Http\Controllers\UserController@getUser');
Route::get('/user/{id}', 'App\Http\Controllers\UserController@getUser')->middleware('auth:api');
Route::put('/user/change-password', 'App\Http\Controllers\UserController@changePassword')->middleware('auth:api');