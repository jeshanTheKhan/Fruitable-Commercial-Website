<?php

namespace App\Http\Controllers;
use App\Models\catagory;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class OwnerCatagoryController extends Controller
{
    //
    public function index(){
        return view('owner.addcatagory');
    }
    public function add(Request $req){
        $store=new catagory();
        $store->cat_name=$req->catagory_name;
        $store->save();
        return redirect()->to('/Owner-Catagory-Table-Page');
    }

    public function show(Request $req){
        $show=catagory::all();
        return view('owner.allcatagory',compact('show'));
    }
    public function edit($id){
        $check=catagory::find($id);
        return view('owner.ownercatagoryedit',compact('check'));
    }
    public function update(Request $req){
        
        $store= catagory::find($req->id);
        $store->cat_name=$req->catagory_name;
        $store->save();
        return redirect()->to('Owner-Catagory-Table-Page');
        
    }
    public function del($id){
        
        $store= catagory::find($id);
        $store->delete();
        return redirect()->back();
        
    }
}
