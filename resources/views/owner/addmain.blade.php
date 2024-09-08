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

    <title>Add Hero Section</title>
@extends('owner.back')
@section('content')
 <!-- Content wrapper -->
 <div class="content-wrapper">
  <!-- Content -->

  <div class="container-xxl flex-grow-1 container-p-y">
    <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light"></span> ADD Hero PRODUCT</h4>

    <!-- Basic Layout & Basic with Icons -->
    <div class="row">
      <!-- Basic Layout -->
      <div class="col-xxl">
        <div class="card mb-4">
         
          <div class="card-body">
            <form method="post" action="{{route('owner.post.main')}}" enctype="multipart/form-data">
              @csrf
              <div class="row mb-3">
                <label class="col-sm-2 col-form-label" for="basic-default-name">Product Name</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" name="product_name1" id="basic-default-name" placeholder="Product Name" />
                </div>
              </div>
              <div class="row mb-3">
                <label class="col-sm-2 col-form-label" for="basic-default-name">Product Sub Name</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" name="product_name2" id="basic-default-name" placeholder="Product Name" />
                </div>
              </div>
              <div class="row mb-3">
                <label class="col-sm-2 col-form-label" for="basic-default-name">Product 1st Details</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" name="product_details1" id="basic-default-name" placeholder="Product Name" />
                </div>
              </div>
              <div class="row mb-3">
                <label class="col-sm-2 col-form-label" for="basic-default-name">Product 2nd Details</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" name="product_details2" id="basic-default-name" placeholder="Product Description" />
                </div>
              </div>
                
                  <div class="row mb-3">
                    <label for="formFile" class="form-label">Upload 1st Image</label>
                    <input class="form-control" name="product_image1" type="file" id="formFile">
                  </div>
                   
                
                    <div class="row mb-3">
                      <label for="formFile" class="form-label">Upload 2nd Image</label>
                      <input class="form-control" name="product_image2" type="file" id="formFile">
                    </div>
                     
              <div class="row justify-content-end">
                <div class="col-sm-12">
                  <button type="submit" class="btn btn-primary">Send</button>
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