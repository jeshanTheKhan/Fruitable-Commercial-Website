<?php

namespace App\Http\Controllers;
use App\Models\catagory;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class CatagoryController extends Controller
{
    //
    public function index(){
        return view('Back.addcatagory');
    }
    public function add(Request $req){
        $store=new catagory();
        $store->cat_name=$req->catagory_name;
        $store->save();
        return redirect()->to('/Catagory-Table-Page');
    }

    public function show(Request $req){
        $show=catagory::all();
        return view('Back.allcatagory',compact('show'));
    }
    
}
