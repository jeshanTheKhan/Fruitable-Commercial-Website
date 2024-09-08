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
                <h1 class="mb-4">Orders</h1>
                <form action="#" method="post">
                    @csrf
                    <div class="row g-5">
                        <div class="col-md-12 col-lg-12 col-xl-12">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th scope="col">Serial Number</th>
                                            <th scope="col">Name</th>
                                            <th scope="col">Email</th>
                                            <th scope="col">Phone</th>
                                            <th scope="col">Total price</th>
                                            <th scope="col">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @php($sl=1)
                                        @foreach($orders as $cart)
                                        <tr>
                                            <td class="py-5">{{$sl++}}
                                                
</td>
                                            <td class="py-5">{{$cart->First_Name}}</td>
                                            <td class="py-5">${{$cart->Email}}</td>
                                            <td class="py-5">{{$cart->Phone}}</td>
                                            <td class="py-5">{{$cart->total}}</td>
                                            <!--  -->
                                            <td class="py-5"><a href="{{route('order.details',$cart->order_id)}}" class="btn border border-secondary rounded-pill px-3 text-primary">Details</a></td>
                                        </tr>
                                        @endforeach()
                                        

                                    </tbody>
                                </table>
                            </div>

                            <div class="row g-4 text-center align-items-center justify-content-center pt-4">
                                <button type="button" class="btn border-secondary py-3 px-4 text-uppercase w-100 text-primary">Place Order</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- Checkout Page End -->


      

@endsection()