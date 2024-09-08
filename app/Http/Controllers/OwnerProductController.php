<?php

namespace App\Http\Controllers;

use App\Models\product;
use App\Models\catagory;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Image;

class OwnerProductController extends Controller
{
    //
    public function index(){
        $show=catagory::all();
        return view('owner.addproduct',compact('show'));
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
        return redirect()->to('/Owner-Product-Table');
    }
    public function show(Request $req)
    {
        $show = product::all();
        return view('owner.allproduct', compact('show'));
    }
    public function edit($id){
        $show=catagory::all();
        $check=product::find($id);
        return view('owner.ownerproductedit',compact('check','show'));
    }
    public function update(Request $req){
        
        $store= product::find($req->id);
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
        return redirect()->to('/Owner-Product-Table');
        
    }
    public function del($id){
        
        $store= product::find($id);
        $store->delete();
        return redirect()->back();
        
    }
}
