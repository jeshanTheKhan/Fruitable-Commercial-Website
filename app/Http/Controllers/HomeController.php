<?php

namespace App\Http\Controllers;
use App\Models\catagory;
use App\Models\testimonial;
use App\Models\product;
use App\Models\main;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    //
    public function index(){
        $main=main::first();
        $testimonial=testimonial::all();
        $catagory=catagory::all();
        $product=product::all();
        $vegetables=product::where('product_catagory','Vegetables')->get();
        return view('welcome',compact('product','vegetables','catagory','testimonial','main'));
    }
}
