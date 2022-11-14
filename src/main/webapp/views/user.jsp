<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/lib/mdb4/css/bootstrap.min.css">
    <link rel="stylesheet" href="/lib/mdb4/css/mdb.min.css">
    <link rel="stylesheet" type="text/css" href="/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/lib/fa6/fontawesome-free-6.2.0-web/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="/css/owl.theme.default.min.css">
    <link rel="stylesheet" type="text/css" href="/css/hover-min.css">
    <link rel="stylesheet" href="/lib/mdb4/css/addons/datatables.min.css">
    <link rel="stylesheet" type="text/css" href="/css/product.css">
    <link rel="stylesheet" type="text/css" href="/css/custom.css">
  </head>

  <body>

    <div class="modal fade" id="modalChangePass" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
      aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header text-center">
            <h4 class="modal-title w-100 font-weight-bold text-uppercase ">đổi mật khẩu tài khoản</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body mx-3">
            <div class="md-form mb-5">
              <i class="fas fa-envelope prefix grey-text text-danger"></i>
              <input type="email" id="modal-email" class="form-control validate">
              <label data-error="wrong" data-success="right" for="modal-email">Email</label>
            </div>
            <div class="md-form mb-5">
              <i class="fas fa-lock prefix grey-text text-danger"></i>
              <input type="email" id="modal-password" class="form-control validate">
              <label data-error="wrong" data-success="right" for="modal-password">Mật khẩu</label>
            </div>

            <div class="md-form mb-4">
              <i class="fas fa-repeat prefix grey-text text-danger"></i>
              <input type="password" id="defaultForm-pass" class="form-control validate">
              <label data-error="wrong" data-success="right" for="defaultForm-pass">Nhập lại mật khẩu</label>

            </div>
            <div class="d-flex justify-content-between">
              <!-- Material checked -->
              <!-- Material checked -->
              <div class="form-check p-0">
                <input type="checkbox" class="form-check-input" id="materialChecked2" checked>
                <label class="form-check-label" for="materialChecked2">Ghi nhớ mật khẩu</label>
              </div>
              <a href="/views/resetpass.jsp" class="text-danger">Quên mật khẩu</a>
            </div>
          </div>
          <div class="modal-footer d-flex justify-content-between">
            <span> Đăng nhập tài khoản khác? <a href="/index.jsp" class="text-danger">Thoát</a></span>
            <button class="btn btn-danger waves-effect ">Thay đổi</button>
          </div>
        </div>
      </div>
    </div>

    <jsp:include page="/layout/header.jsp"/>

    <main>
      <div class="container">
        <jsp:include page="/layout/breadcrumb.jsp"/>
        <section class="my-5">

          <div class="d-flex justify-content-between align-items-center">
            <ul class="nav nav-tabs" id="myTabProductList" role="tablist">
              <li class="nav-item mr-2">

                <a class="nav-link text-dark bg-light active" style="font-size: 15px;" id="" data-toggle="tab" href="#panel21"
                  role="tab" aria-controls="panel21-tab" aria-selected="false">Thông tin người
                  dùng</a>
              </li>
              <li class="nav-item mr-2">

                <a class="nav-link text-dark bg-light" style="font-size: 15px;"  data-toggle="tab" href="#panel22"
                  role="tab" aria-controls="panel22-tab" aria-selected="false">lịch sử mua hàng</a>
              </li>

              <li class="nav-item mr-2">
                <a class="nav-link text-dark bg-light" style="font-size: 15px;"  data-toggle="tab" href="#panel23"
                  role="tab" aria-controls="panel23-tab" aria-selected="false">Danh sách yêu thích</a>
              </li>
            </ul>

            <div class="">
              <a href="" class="float-right"> | Thoát</a>
              <a href="#" data-toggle="modal" data-target="#modalChangePass" class="float-right">Đổi mật khẩu |</a>
            </div>
          </div>





          <div class="tab-content p-0" id="pills-tabContent">
            <div class="tab-pane fade show active" id="panel21" aria-labelledby="panel21-tab">


              <div class="card">
                <div class="card-header   ">
                  <h5 class="my-2 h5 d-inline-block">Trần Hữu Dân - 0377162712</h5>
                </div>
                <div class="card-body">


                  <div class="my-4 row w-100 mx-auto">
                    <div class="col-12">
                      <div class="form-check form-check-inline">
                      <input type="radio" class="form-check-input" id="materialInline1"
                        name="inlineMaterialRadiosExample" checked>
                      <label class="form-check-label" for="materialInline1">Nam </label>
                    </div>

                    <!-- Material inline 2 -->
                    <div class="form-check form-check-inline">
                      <input type="radio" class="form-check-input" id="materialInline2"
                        name="inlineMaterialRadiosExample">
                      <label class="form-check-label" for="materialInline2">Nữ</label>
                    </div>
                    </div>
                  </div>
                  <div class="row my-4 w-100 mx-auto">
                    <div class="col-6">
                      <!-- Material input -->
                      <div class="md-form m-0">
                        <i class="fas fa-user prefix text-danger"></i>
                        <input type="text" id="name" class="form-control">
                        <label for="name">Tên đầy đủ</label>
                      </div>
                    </div>
                    <div class="col-6">
                      <!-- Material input -->
                      <div class="md-form m-0">
                        <i class="fa-solid fa-phone prefix text-danger"></i>
                        <input type="text" id="phone" class="form-control">
                        <label for="email">Số điện thoại</label>
                      </div>
                    </div>
                  </div>
                  <div class="row my-4 w-100 mx-auto">
                    <div class="col-6">
                      <div class="md-form">
                        <i class="fa-solid fa-envelope prefix text-danger"></i>
                        <input type="email" id="email" class="form-control">
                        <label for="address">Email</label>
                      </div>
                    </div>
                    <div class="col-6">
                      <div class="md-form">
                        <i class="fa-solid fa-address-card prefix text-danger"></i>
                        <input type="text" id="address" class="form-control">
                        <label for="address">Địa chỉ</label>
                      </div>
                    </div>

                  </div>

                  <div class="text-center">
                    <div class="btn btn-danger waves-effect">Cập nhật</div>
                  </div>
                </div>
              </div>

            </div>
            <div class="tab-pane fade  " id="panel22" role="panel22" aria-labelledby="panel22-tab">

              <div class="card">
                <div class="card-header">

                  <h5 class="my-2 h5 d-inline-block">Ngày mua cuối cùng: 20/12/2022</h5>
                </div>

                <div class="card-body">
                  <table id="dtMaterialDesignExample" class="table table-striped" cellspacing="0" width="100%">
                    <thead>
                      <tr>
                        <th scope="col">Mã đơn hàng</th>
                        <th scope="col"> Sản phẩm</th>
                        <th scope="col">Giá</th>
                        <th scope="col">Ngày đặt mua</th>
                        <th scope="col"> Trạng thái</th>
                      </tr>
                    </thead>
                    <tbody>


                      <tr>
                        <th scope="row" class="align-middle text-primary">3</th>
                        <td style="width: 45%;">
                          <a href="" style="width: 50px;" class="float-left">
                            <img class="object-fit d-block w-100"
                              src="https://cdn.tgdd.vn/Products/Images/7077/245579/amazfit-neo-den-600x600.jpg" alt="">
                          </a>
                          <div style="margin-left: 60px;">
                            <a href=""
                              class="text-truncate w-50 text-truncate text-wrap text-break text-ellipsis overflow-hidden">ahjdbljas</a>
                            <div class="d-block mb-1 ">
                              <a href="" class="mt-1 pr-2 d-inline-block text-primary">Xem chi
                                tiết</a>
                            </div>

                          </div>
                        </td>
                        <td class="text-danger">549.000₫</td>
                        <td>@24/08/2022</td>
                        <td class="text-danger">
                          Đã hủy</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
            <div class="tab-pane fade  " id="panel23" role="panel23" aria-labelledby="panel23-tab">
              <div>

              </div>
              <div class="card">
                <div class="card-header">
                  <h5 class="my-2 h5 d-inline-block">Ngày yêu thích cuối cùng: 20/12/2022</h5>

                </div>
                <div class="card-body">

                    <table id="dtMaterialDesignExample2" class="table table-striped" cellspacing="0" width="100%">
                      <thead>
                        <tr>
                          <th scope="col">#</th>
                          <th scope="col">Tên</th>
                          <th scope="col">Hình ảnh</th>
                          <th scope="col">Giá</th>
                          <th scope="col">Trạng thái</th>
                          <th scope="col">Thao tác</th>

                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <th scope="row">1</th>
                          <td class="align-middle justify-content-center">Ipone14</td>
                          <td><img style="width: 70px; height: 70px;"
                              src="https://cdn.tgdd.vn/Products/Images/42/210652/iphone-11-pro-512gb-white-600x600.jpg"
                              alt=""></td>
                          <td class="justify-content-center align-middle">36000000.VND</td>
                          <td class="justify-content-center align-middle">Còn hàng</td>
                          <td class="justify-content-center align-middle">
                            <div class="text-center">

                              <button
                              class="btn btn-outline-danger btn-sm btn-rounded">xóa khỏi danh sách yêu thích</button>
                            </div>
                            <div class="text-center">

                              <button class="btn  btn-sm btn-rounded btn-outline-info">thêm vào giỏ hàng</button>
                            </div>
                          </td>

                        </tr>


                      </tbody>
                    </table>

                </div>
              </div>
            </div>
          </div>



          <!-- Tab panels -->

          <!-- Panel 3 -->




      </section>

      </div>

    </main>


    <jsp:include page="/layout/footer.jsp"/>


    <script type="text/javascript" src="/lib/mdb4/js/jquery.min.js"></script>
    <script src="/lib/mdb4/js/popper.min.js"></script>
    <script src="/lib/mdb4/js/mdb.min.js"></script>
    <script src="/lib/mdb4/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/owl.carousel.min.js"></script>
    <script type="text/javascript" src="/js/product.js"></script>
    <script src="/lib/mdb4/js/addons/datatables.min.js"></script>
    <script>

        // Material Design example
$(document).ready(function () {
  $('#dtMaterialDesignExample').DataTable();
  $('#dtMaterialDesignExample2').DataTable();

  $('#dtMaterialDesignExample_wrapper').find('label').each(function () {
    $(this).parent().append($(this).children());
  });
  $('#dtMaterialDesignExample_wrapper .dataTables_filter').find('input').each(function () {
    const $this = $(this);
    $this.attr("placeholder", "Search");
    $this.removeClass('form-control-sm');
  });
  $('#dtMaterialDesignExample_wrapper .dataTables_length').addClass('d-flex flex-row');
  $('#dtMaterialDesignExample_wrapper .dataTables_filter').addClass('md-form');
  $('#dtMaterialDesignExample_wrapper select').removeClass(
  'custom-select custom-select-sm form-control form-control-sm');
  $('#dtMaterialDesignExample_wrapper select').addClass('mdb-select');
  $('#dtMaterialDesignExample_wrapper .mdb-select').materialSelect();
  $('#dtMaterialDesignExample_wrapper .dataTables_filter').find('label').remove();
$('#dtMaterialDesignExample_paginate .pagination').addClass('pg-red');


  $('#dtMaterialDesignExample2_wrapper').find('label').each(function () {
    $(this).parent().append($(this).children());
  });
  $('#dtMaterialDesignExample2_wrapper .dataTables_filter').find('input').each(function () {
    const $this = $(this);
    $this.attr("placeholder", "Search");
    $this.removeClass('form-control-sm');
  });
  $('#dtMaterialDesignExample2_wrapper .dataTables_length').addClass('d-flex flex-row');
  $('#dtMaterialDesignExample2_wrapper .dataTables_filter').addClass('md-form');
  $('#dtMaterialDesignExample2_wrapper select').removeClass(
  'custom-select custom-select-sm form-control form-control-sm');
  $('#dtMaterialDesignExample2_wrapper select').addClass('mdb-select');
  $('#dtMaterialDesignExample2_wrapper .mdb-select').materialSelect();
  $('#dtMaterialDesignExample2_wrapper .dataTables_filter').find('label').remove();
  $('#dtMaterialDesignExample2_paginate .pagination').addClass('pg-red');
});

    </script>

  </body>

</html>
