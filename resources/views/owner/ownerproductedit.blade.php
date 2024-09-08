<html
  lang="en"
  class="light-style layout-menu-fixed"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="storage/back/assets/"
  data-template="vertical-menu-template-free"
>
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
    />

    <title>Edit Product Section</title>
@extends('owner.back')
@section('content')
 <!-- Content wrapper -->
 <div class="content-wrapper">
  <!-- Content -->

  <div class="container-xxl flex-grow-1 container-p-y">
    <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light"></span> Edit PRODUCT</h4>

    <!-- Basic Layout & Basic with Icons -->
    <div class="row">
      <!-- Basic Layout -->
      <div class="col-xxl">
        <div class="card mb-4">
         
          <div class="card-body">
            <form method="post" action="{{route('owner.product.update')}}" enctype="multipart/form-data">
              @csrf
              <div class="row mb-3">
                <label class="col-sm-2 col-form-label" for="basic-default-name">Product Name</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" value="{{$check->product_name}}" name="product_name" id="basic-default-name" placeholder="Product Name" />
                </div>
              </div>
              <div class="row mb-3">
                <label class="col-sm-2 col-form-label" for="basic-default-name">Product Details</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" value="{{$check->product_description}}" name="product_details" id="basic-default-name" placeholder="Product Description" />
                </div>
              </div>
              <div class="row mb-3">
                <label class="col-sm-2 col-form-label" for="basic-default-name">Product Brand</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" value="{{$check->product_brand}}" name="product_brand" id="basic-default-name" placeholder="Product Brand" />
                </div>
              </div>
              <div class="row mb-3">
                <label class="col-sm-2 col-form-label" for="basic-default-name">Product Price</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" value="{{$check->product_price}}" name="product_price" id="basic-default-name" placeholder="$0.00" />
                </div>
              </div>
              <div class="row mb-3">
                <label class="col-sm-2 col-form-label" for="basic-default-name">Product Catagory</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" value="{{$check->product_catagory}}" name="product_catagory" id="basic-default-name" placeholder="$0.00" />
                </div>
              </div>
              
                <div class="card-body">
                  <div class="mb-3">
                    <label for="formFile" class="form-label">Upload Image</label>
                    <input class="form-control" value="{{$check->product_image}}" name="product_image" type="file" id="formFile">
                  </div>
                </div>        
                <input type="hidden" name="id" value="{{$check->id}}">    
              <div class="row justify-content-end">
                <div class="col-sm-12">
                  <button type="submit" class="btn btn-primary">Update</button>
                </div>
</div>
            </form>
          </div>
        </div>
      </div>
      
    </div>
  </div>
  <!-- / Content -->

 

  <div class="content-backdrop fade"></div>
</div>
<!-- Content wrapper -->
</div>
<!-- / Layout page -->
</div>

<!-- Overlay -->
<div class="layout-overlay layout-menu-toggle"></div>
</div>
<!-- / Layout wrapper -->


@endsection()