<?php

use Illuminate\Support\Facades\Route;
//include homecontroller in web.php
use App\Http\Controllers\HomeController;

use App\Http\Controllers\MainController;

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

// Route::get('/', function () {
//     return view('welcome');
// });
// Route::get('/user',[\App\Http\Controllers\UserController::class,'user']);

Route::get('/register','App\Http\Controllers\MainController@State' );
// Route::get('/welcome','App\Http\Controllers\HomeController@redirect,');
Route::get('/getLocalGovernments/{id}','App\Http\Controllers\MainController@getStates');
Route::get('/getWards/{id}','App\Http\Controllers\MainController@getWards');
Route::get('/getPollingUnits/{id}','App\Http\Controllers\MainController@getPollingUnits');

// setting route for home page

Route::get('/' ,[HomeController::class, 'index']);

Route::get('/home' ,[HomeController::class, 'redirect']);

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');
