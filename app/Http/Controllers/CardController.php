<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Cart;
use App\Models\product;
use App\Models\Customer;
use App\Models\Order;
use App\Models\Orderdetail;
use DB;

class CardController extends Controller
{
    //
    public function index(){
        return view('front.card');
    }

    //add cart
    public function addCart($id){
        $product = product::find($id);
        Cart::add(['id' => $product->id, 'name' => $product->product_name, 'qty' => 1, 'price' => $product->product_price, 'weight' => 1]);
        return redirect()->back();
    }

    //checkout
    public function checkOut(){
        $carts = Cart::content();
        return view('front.checkout',compact('carts'));
    }

    public function placeOrder(Request $req){
        $customer = Customer::first();
        $carts = Cart::content();

        $order = new Order();
        $order->customer_id = $customer->customer_id;
        $order->total = Cart::total();
        $order->shipping_address = $req->address;
        $order->First_Name = $req->f_name;
        $order->Last_Name = $req->l_name;
        $order->Town = $req->town;
        $order->Country = $req->country;
        $order->Zipcode = $req->postcode;
        $order->Phone = $req->mobile;
        $order->Email = $req->email;
        $order->order_date = date('d-m-Y');
        $order->save();

        $order_id = $order->order_id;
        foreach($carts as $cart){
            $order_detail = new Orderdetail();
            $order_detail->product_id = $cart->id;
            $order_detail->order_id = $order_id;
            $order_detail->qty = $cart->qty;
            $order_detail->rate = $cart->price;
            $order_detail->save();
        }
        Cart::destroy();
        return redirect()->to('/user-orders');
    }

    //user orders
    public function customerOrders(){

        $orders = DB::table('orders')
            ->get();

        return view('front.all_orders',compact('orders'));
    }
    // orderdetails
    public function orderdetails($id){
        $order = DB::table('orders')
        ->where('order_id',$id)
        ->first();

        $products = DB::table('orderdetails')
            ->where('order_id',$id)
            ->join('product', 'product.id', '=', 'orderdetails.product_id')
            ->select('orderdetails.*','product.*')
            ->get();

        return view('front.order_details',compact('products','order'));
    }
}
