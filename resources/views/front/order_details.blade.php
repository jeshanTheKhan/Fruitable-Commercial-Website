@extends('front.back')
@section('content')

     <!-- Single Page Header start -->
     <div class="container-fluid page-header py-5">
            <h1 class="text-center text-white display-6">Checkout</h1>
            <ol class="breadcrumb justify-content-center mb-0">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item"><a href="#">Pages</a></li>
                <li class="breadcrumb-item active text-white">Checkout</li>
            </ol>
        </div>
        <!-- Single Page Header End -->


        <!-- Checkout Page Start -->
        <div class="container-fluid py-5">
            <div class="container py-5">
                <h1 class="mb-4">Order Details</h1>
                <div class="row mb-5">
                    <div class="col-md-12">
                        <table class="table">
                            <tr>
                                <td>Invoice ID : #{{$order->order_id}}</td>
                            </tr>
                            <tr>
                                <td>Client Name : {{$order->First_Name}} {{$order->Last_Name}}</td>
                            </tr>
                            <tr>
                                <td>E-mail : {{$order->Email}}</td>
                            </tr>
                            <tr>
                                <td>Phone : {{$order->Phone}} </td>
                            </tr>
                            <tr>
                                <td>Shipping Address : {{$order->shipping_address}} </td>
                            </tr>
                        </table>
                    </div>
                </div>
                    <div class="row g-5">
                        <div class="col-md-12 col-lg-12 col-xl-12">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th scope="col">Serial Number</th>
                                            <th scope="col">Product Name</th>
                                            <th scope="col">Qty</th>
                                            <th scope="col">Rate</th>
                                            <th scope="col">Total Price</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @php($sl=1)
                                        @foreach($products as $cart)
                                        <tr>
                                            <td class="py-5">{{$sl++}}
                                                
</td>
                                            <td class="py-5">{{$cart->product_name}}</td>
                                            <td class="py-5">{{$cart->qty}}</td>
                                            <td class="py-5">{{$cart->rate}}</td>
                                            <td class="py-5">{{$cart->qty*$cart->rate}}</td>
                                        </tr>
                                        @endforeach()
                                        

                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>
            </div>
        </div>
        <!-- Checkout Page End -->


      

@endsection()