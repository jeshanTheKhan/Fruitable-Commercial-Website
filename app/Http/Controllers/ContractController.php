<?php

namespace App\Http\Controllers;
use App\Models\contract;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ContractController extends Controller
{
    //
    public function index(){
        return view('front.contract');
    }
    public function add(Request $req)
    {
        
        $store = new contract();
        $store->name = $req->c_name;
        $store->email = $req->c_email;
        $store->message = $req->c_message;
        
        $store->save();
        return redirect()->back();
    }
}
