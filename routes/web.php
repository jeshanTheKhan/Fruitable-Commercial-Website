<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\CatagoryController;
use App\Http\Controllers\OwnerCatagoryController;
use App\Http\Controllers\OwnerProductController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\MainController;
use App\Http\Controllers\OwnerMainController;
use App\Http\Controllers\ShopController;
use App\Http\Controllers\CardController;
use App\Http\Controllers\CheckoutController;
use App\Http\Controllers\TestimonialController;
use App\Http\Controllers\ContractController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\OwnerTestimonialController;
use Illuminate\Support\Facades\Route;



// Shop Kepper

Route::get('/Catagory-Index', [CatagoryController::class, 'index'])->name('shop.catagory');
Route::post('/Catagory-Form-submit', [CatagoryController::class, 'add'])->name('shop.add.catagory');
Route::get('/Catagory-Table-Page', [CatagoryController::class, 'show'])->name('shop.all.catagory');
Route::get('/Product-Index', [ProductController::class, 'index'])->name('shop.product');
Route::post('/Product-Form-Submit', [ProductController::class, 'add'])->name('shop.add.product');
Route::get('/Product-Table-Page', [ProductController::class, 'show'])->name('shop.all.product');
Route::get('/Main-Index', [MainController::class, 'index'])->name('shop.main');
Route::post('/Main-Form-Submit', [MainController::class, 'add'])->name('shop.add.main');
Route::get('/Main-Table-Page', [MainController::class, 'show'])->name('shop.all.main');

Route::get('logout', [AdminController::class, 'destroy'])
    ->name('owner.logout');
Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

// Route::middleware('auth')->group(function () {
//     Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
//     Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
//     Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
// });


require __DIR__ . '/auth.php';







// Owner
Route::get('logout', [AdminController::class, 'destroy'])
->name('user.logout');
Route::get('/ownerdashboard', function () {
    return view('ownerdashboard');
})->middleware(['auth', 'verified'])->name('ownerdashboard');
Route::get('/Owner-Catagory-Index', [OwnerCatagoryController::class, 'index'])->name('owner.add.catagory');
Route::post('/Owner-Catagory-Form-submit', [OwnerCatagoryController::class, 'add'])->name('owner.post.catagory');
Route::get('/Owner-Catagory-Table-Page', [OwnerCatagoryController::class, 'show'])->name('owner.all.catagory');
Route::get('Owner-catagory-edit/{id}',[OwnerCatagoryController::class,'edit'])->name('owner.catagory.edit');
Route::get('Owner-catagory-del/{id}',[OwnerCatagoryController::class,'del'])->name('owner.catagory.del');
Route::post('/Owner-Catagory-Form-Update', [OwnerCatagoryController::class, 'update'])->name('owner.update.catagory');
Route::get('/Owner-Product-Index', [OwnerProductController::class, 'index'])->name('owner.add.product');
Route::post('/Owner-Product-Form-Submit', [OwnerProductController::class, 'add'])->name('owner.post.product'); 
Route::get('Owner-Product-edit/{id}',[OwnerProductController::class,'edit'])->name('owner.product.edit');
Route::get('Owner-Product-del/{id}',[OwnerProductController::class,'del'])->name('owner.product.del');
Route::post('Owner-Product-Form-Update',[OwnerProductController::class,'update'])->name('owner.product.update');
Route::get('/Owner-Product-Table', [OwnerProductController::class, 'show'])->name('owner.all.product');
Route::get('/Owner-Hero-Index', [OwnerMainController::class, 'index'])->name('owner.add.main');
Route::post('/Owner-Hero-Form-Submit', [OwnerMainController::class, 'add'])->name('owner.post.main');
Route::get('Owner-Hero-del/{id}',[OwnerMainController::class,'del'])->name('owner.main.del');
Route::get('/Owner-Hero-Table-Page', [OwnerMainController::class, 'show'])->name('owner.all.main');
Route::get('/Owner-Testimonial', [OwnerTestimonialController::class, 'index'])->name('owner.add.testimonial');
Route::post('/Owner-Testimonial-Form-Submit', [OwnerTestimonialController::class, 'add'])->name('owner.post.testimonial');


// Front
Route::get('/', [HomeController::class, 'index'])->name('home.shop');
Route::get('/Shop-Data-Index', [ShopController::class, 'index'])->name('shop.data');
Route::get('/Card-Index', [CardController::class, 'index'])->name('card.shop');
Route::get('/Ceheckout-Index', [CheckoutController::class, 'index'])->name('chackout.shop');
Route::get('/Testimonial-Index', [TestimonialController::class, 'index'])->name('testimonial.shop');
Route::get('/Contract-Index', [ContractController::class, 'index'])->name('contact.shop');
Route::post('/Contract-Form', [ContractController::class, 'add'])->name('contract.post');

//cart
Route::get('/cart-add/{id}', [CardController::class, 'addCart'])->name('add.cart');
Route::get('/check-out', [CardController::class, 'checkOut'])->name('check.out');
Route::get('/user-orders', [CardController::class, 'customerOrders'])->name('user.orders');
// 
Route::post('/Place-Order', [CardController::class, 'placeOrder'])->name('checkout.post');
// 
Route::get('/Order-Details/{id}', [CardController::class, 'orderdetails'])->name('order.details');
