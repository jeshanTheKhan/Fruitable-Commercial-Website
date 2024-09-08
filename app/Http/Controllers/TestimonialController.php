<?php

namespace App\Http\Controllers;
use App\Models\testimonial;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class TestimonialController extends Controller
{
    //
    public function index(){
        $data=testimonial::all();
        return view('front.testimonial',compact('data'));
    }
}
