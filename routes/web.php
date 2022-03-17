<?php
use Illuminate\Support\Facades\Auth;
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
//route for my state,lg function
Route::get('auth.register','App\Http\Controllers\MainController@getStates');
Route::get('/getLocalgovernments/{id}','App\Http\Controllers\MainController@getLocalgovernments');
Route::get('/getWards/{id}','App\Http\Controllers\MainController@getWards');
Route::get('/getPollingunits/{id}','App\Http\Controllers\MainController@getPollingunits');

// setting route for home page
Route::get('/register' ,[MainController::class, 'State']);

Route::get('/' ,[HomeController::class, 'index']);

Route::get('/home' ,[HomeController::class, 'redirect']);

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');
