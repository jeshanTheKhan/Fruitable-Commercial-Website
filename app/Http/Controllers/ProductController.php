<?php

namespace App\Http\Controllers;

use App\Models\product;
use App\Models\catagory;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Image;

class ProductController extends Controller
{
    //
    public function index(){
        $show=catagory::all();
        return view('back.addproduct',compact('show'));
    }
    public function add(Request $req)
    {
        $store = new product();
        $store->product_name = $req->product_name;
        $store->product_description = $req->product_details;
        $store->product_brand = $req->product_brand;
        $store->product_catagory = $req->product_catagory;
        // 
        $store->product_price = $req->product_price;
        if ($req->file('product_image')) {
            $image = $req->file('product_image');
            $image_ext = $req->product_name . '.' . $image->getClientOriginalExtension();
            Image::make($image)->resize(300, 300)->save('storage/back/img/' . $image_ext);
            $store->product_image = $image_ext;
        }
        $store->save();
        return redirect()->to('/Product-Table-Page');
    }
    public function show(Request $req)
    {
        $show = product::all();
        return view('Back.allproduct', compact('show'));
    }
    
}
