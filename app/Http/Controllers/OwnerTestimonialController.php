<?php

namespace App\Http\Controllers;
use App\Models\testimonial;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Image;

class OwnerTestimonialController extends Controller
{
    //
    public function index(){
        return view('owner.testimonial');
    }
    public function add(Request $req)
    {
        $store = new testimonial();
        $store->client_name = $req->client_name;
        $store->profession = $req->client_profession;
        $store->description = $req->client_des;
        if ($req->file('client_image')) {
            $image = $req->file('client_image');
            $image_ext = $req->client_name.'.'.$image->getClientOriginalExtension();
            Image::make($image)->resize(300, 300)->save('storage/back/img/'.$image_ext);
            $store->image = $image_ext;
        }
        $store->save();
        return redirect()->back();
    }
}
