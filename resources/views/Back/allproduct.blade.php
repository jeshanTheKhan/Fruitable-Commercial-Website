<html lang="en" class="light-style layout-menu-fixed" dir="ltr" data-theme="theme-default"
    data-assets-path="storage/back/assets/" data-template="vertical-menu-template-free">

<head>
    <meta charset="utf-8" />
    <meta name="viewport"
        content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

    <title>Product Table Section</title>
    @extends('Back.back')
    @section('content')
        <!-- Content wrapper -->
        <div class="content-wrapper">
            <!-- Content -->
            <div class="container-xxl flex-grow-1 container-p-y">
                <div class="card">
                    <h5 class="card-header">Bordered Table</h5>
                    <div class="card-body">
                        <div class="table-responsive text-nowrap">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>Serial</th>
                                        <th>Product Name</th>
                                        <th>Product Image</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php($sl=1)
                                    @foreach($show as $show)
                                    <tr>
                                        <td>
                                            <i class="fab fa-angular fa-lg text-danger me-3"></i> <strong>{{$sl++}}
                                                </strong>
                                        </td>
                                        <td>{{$show->product_name}}</td>
                                        <td><img src="{{asset('storage/back/img/'.$show->product_image)}}" width="50" height="50"></td>
                                        
                                        <td><span class="badge bg-label-primary me-1">Active</span></td>
                                        
                                    </tr>
@endforeach()
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endsection()
