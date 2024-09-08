<?php

namespace App\Http\Controllers;
use App\Models\catagory;
use App\Models\product;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ShopController extends Controller
{
    //
    public function index(){
        $product=product::all();
        $catagory=catagory::all();
        return view('front.shop',compact('product','catagory'));
    }
}
