<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\PostController;


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

Route::get('/posts', [PostController::class, 'index'])->name('post.index');
    Route::get('/home/index', [HomeController::class, 'index']);
    Route::get('/home/loginForm', [HomeController::class, 'loginForm']);
    Route::post('/media/upload', [HomeController::class, 'upload']);
  
    // Show login form
    Route::get('/login', [AuthController::class, 'loginForm'])->name('login.form');
    
    // Handle login request
    Route::post('/login', [AuthController::class, 'login'])->name('auth.login');
    
    // Handle logout
    Route::get('/logout', [AuthController::class, 'logout'])->name('auth.logout');
    
    // Home page (protected route)
    Route::get('/home/mediatampil', [HomeController::class, 'index'])->name('home.index');
 
    Route::get('/media', [HomeController::class, 'index']); // Untuk menampilkan media feed
   Route::post('/media/like/{media_id}', [HomeController::class, 'like'])->name('media.like'); // Untuk menambahkan like
    Route::post('/media/comment/{media_id}', [HomeController::class, 'comment'])->name('media.comment'); // Untuk menambahkan komentar





Route::get('/home/media', [HomeController::class, 'media'])->name('media.index');
Route::post('/media/upload', [HomeController::class, 'upload'])->name('media.upload');
Route::post('/home/edit-description/{id}', [HomeController::class, 'editDescription'])->name('media.edit.description');
Route::delete('/home/delete-media/{id}', [HomeController::class, 'deleteMedia'])->name('media.delete');
Route::post('/home/share/{id}', [HomeController::class, 'shareMedia'])->name('media.share');
// Route untuk menampilkan form edit data dengan metode GET
Route::get('/home/edit_data', [HomeController::class, 'editDataForm'])->name('editDataForm');

// Route untuk menangani aksi edit data dengan metode POST
Route::post('/home/edit_data', [HomeController::class, 'aksi_edit_data'])->name('aksi_edit_data');
Route::post('/home/data/update', [HomeController::class, 'updateData'])->name('data.update');
Route::get('/login', [HomeController::class, 'showLoginForm'])->name('login');
Route::post('/login', [HomeController::class, 'login']);

Route::get('/register', [HomeController::class, 'showRegisterForm'])->name('register');
Route::post('/register', [HomeController::class, 'register']);

Route::get('/dashboard', function () {
    return 'Anda telah berhasil login!';
})->middleware('auth')->name('dashboard');

Route::post('/logout', [HomeController::class, 'logout'])->name('logout');

