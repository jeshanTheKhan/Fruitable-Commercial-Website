<?php

namespace App\Http\Controllers;

use App\Models\main;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Image;

class OwnerMainController extends Controller
{
    //
    public function index(Request $req)
    {
       
        
        return view('owner.addmain');
    }
    public function add(Request $req)
    {
        $store = new main();
        $store->main_name = $req->product_name1;
        $store->mane_name2 = $req->product_name2;
        $store->main1_description = $req->product_details1;
        $store->main2_description = $req->product_details2;
        if ($req->file('product_image1')) {
            $image1 = $req->file('product_image1');
            $image_ext1 = $req->product_name1 . '.' . $image1->getClientOriginalExtension();
            Image::make($image1)->resize(300, 300)->save('storage/back/img/' . $image_ext1);
            $store->main_image1 = $image_ext1;
        }

        if ($req->file('product_image2')) {
            $image2 = $req->file('product_image2');
            $image_ext2 = $req->product_name2 . '.' . $image2->getClientOriginalExtension();
            Image::make($image2)->resize(300, 300)->save('storage/back/img/' . $image_ext2);
            $store->main_image2 = $image_ext2;
        }
        $store->save();
        return redirect()->to('/Owner-Hero-Table-Page');
    }
    public function show(Request $req)
    {
        $show = main::all();
        return view('owner.allmain', compact('show'));
    }
    public function del($id){
        $check=main::find($id);
        $check->delete();
        return redirect()->back();
    }
}
