<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="/lib/fa6/fontawesome-free-6.2.0-web/css/all.css">
        <link rel="stylesheet" href="/lib/mdb4/css/bootstrap.css">
        <link rel="stylesheet" href="/lib/mdb4/css/mdb.css">
        <link rel="stylesheet" href="/lib/mdb4/css/addons/datatables.min.css">
        <link rel="stylesheet" href="/lib/mdb5/css/mdb.min.css">
        <style>
            .double-nav .breadcrumb-dn {
    color: #fff;
}
.side-nav.wide.slim .sn-ad-avatar-wrapper a span {
  display: none;
}
        </style>
    </head>
<body class="fixed-sn mdb-skin">

  <!--Double navigation-->
  <jsp:include page="/views/layout/admin/header.jsp"/>
  <!--/.Double navigation-->

  <!--Main Layout-->
  <main class="mt-1">
    <div class="container-fluid panel-scroll">

        <div id="container">
        <div class="row col col-12 col-sm-12 col-md-12 col-lg-12 ml-auto mr-auto float-none pl-1 pr-0">
            <div class="col col-12 p-0">
                <div class="card card-cascade narrower ml-2 mr-2 mb-1 ">
                    <div class="view view-cascade gradient-card-header blue-gradient d-flex  ">
                        <div class="text-center w-100"><span class="h5"> DANH SÁCH SẢN PHẨM</span></div>


                    </div>
                    <div id="card-body-main" class="card-body card-body-cascade "
                         style="padding: 1.25rem 5px;">
                        <div id="config_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
                            <div class="row">
                                 <div class="col-sm-12">
                                    <div class="col col-12 col-sm-12 col-md-12 col-lg-10 ml-auto mr-auto">
<!-- Horizontal material form -->
<!-- Material column sizing form -->
<form>
  <!-- Grid row -->
<div class="form-row">
    <!-- Grid column -->
    <div class="col-md-6">
      <!-- Material input -->
      <div class="md-form form-group">
        <input type="text" class="form-control" id="name">
        <label for="name">Tên</label>
      </div>
    </div>
     <div class="col-md-6 d-flex align-items-center">
   <div class="input-group ">
  <div class="input-group-prepend">
    <span class="input-group-text" id="inputGroupFileAddon01">Upload</span>
  </div>
  <div class="custom-file">
    <input type="file" class="custom-file-input" id="inputGroupFile01"
      aria-describedby="inputGroupFileAddon01">
    <label class="custom-file-label" for="inputGroupFile01">Choose file</label>
  </div>
</div>
    </div>
    <div class="col-6">
        <!-- Material input -->
<div class="md-form">
  <input type="number" id="numberExample" class="form-control">
  <label for="numberExample">Giá</label>
</div>
    </div>
    <div class="col-6">
        <!-- Material input -->
<div class="md-form">
  <input type="number" id="amount" class="form-control">
  <label for="amount">Số lượng</label>
</div>
    </div>
     <div class="my-4">
        <div class="form-check form-check-inline">
                        <input type="radio" class="form-check-input" checked id="gender"
                          name="gender">
                        <label class="form-check-label" for="gender">Đang hiển thị </label>
                      </div>

                      <!-- Material inline 2 -->
                      <div class="form-check form-check-inline">
                        <input type="radio" class="form-check-input" id="gender2"
                          name="gender">
                        <label class="form-check-label" for="gender2">Không hiển thị</label>
                      </div>
     </div>

 <div class="col-12">
      <!-- Material input -->
      <div class="form-group">
  <label  for="shortdesc" style="float: left; color: #6c757d;">Mô tả ngắn</label>
  <textarea placeholder="Viết mô tả" class="form-control" id="shortdesc" rows="7" style="height: 80px; " ></textarea>
</div>
    </div>
     <div class="col-md-12">
      <!-- Material input -->
      <div class="form-group">
  <label  for="exampleFormControlTextarea3" style="float: left; color: #6c757d;"> Mô tả chi tiết</label>
  <textarea placeholder="Viết mô tả" class="form-control" id="exampleFormControlTextarea3" rows="7" style="height: 80px; " ></textarea>
</div>
    </div>

<div class="type col-4">
    <select class="mdb-select md-form" editable="true" searchable="Tìm kiếm và thêm tại đây...">
  <option value="" disabled selected>Tùy chọn của bạn</option>
   <option value="1">Trẻ trung</option>
  <option value="2">Hiện đại</option>
  <option value="3">game thủ</option>
</select>
<label class="mdb-main-label" style=" text-align: start  !important;">Loại</label>
</div>
<div class="cap col-4">
    <select class="mdb-select md-form" editable="true" searchable="Tìm kiếm và thêm tại đây...">
  <option value="" disabled selected>Tùy chọn của bạn</option>
   <option value="1">128GB</option>
  <option value="2">256GB</option>
  <option value="3">512GB</option>
</select>
<label class="mdb-main-label"style=" text-align: start  !important;">Bộ nhớ</label>
</div>
<div class="model col-4">
    <select class="mdb-select md-form" editable="true" searchable="Tìm kiếm và thêm tại đây...">
  <option value="" disabled selected>Tùy chọn của bạn</option>
  <option value="1">Sam Sung</option>
  <option value="2">Ipone</option>
  <option value="3">Oppo</option>
</select>
<label class="mdb-main-label " style=" text-align: start  !important;">Dòng</label>
</div>

</div>
  <!-- Grid row -->

  <div class="action">
    <div class="btn btn-danger btn-md">Delete</div>
    <div class="btn btn-default btn-md">Create</div>
    <div class="btn btn-warning btn-md">Update</div>
    <div class="btn btn-info btn-md">Reset</div>
  </div>

</form>
<!-- Material column sizing form -->
<!-- Horizontal material form -->
</div>
</div>

                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="col col-12 col-sm-12 col-md-12 col-lg-10 ml-auto mr-auto">
                                        <table id="dtBasicExample" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                            <thead>
                                            <tr>
                                                <th width="0px">Mã sản phẩm</th>
                                                <th>Hình ảnh</th>
                                                <th>Tên</th>
                                                <th>Bộ nhớ</th>
                                                <th>Giá</th>
                                                 <th>Số lượng</th>
                                                  <th>Trạng thái</th>
                                                   <th>Thao tác</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="align-middle justify-content-center">123</td>
                                                   <td class="align-middle justify-content-center"><img src="https://cdn.tgdd.vn/Products/Images/522/222806/lenovo-tab-m8-tb-8505x400x400-600x600.jpg" class="img-fluid " style="width: 60px; height: 60px;" alt=""></td>
                                                    <td class="align-middle justify-content-center">Ipone 12promax</td>
                                                    <td class="align-middle justify-content-center">128GB</td>
                                                          <td class="align-middle justify-content-center">20000000</td>
                                                                <td class="align-middle justify-content-center">10  </td>
                                                                      <td class="align-middle justify-content-center">dang ban</td>

                                                    <td class="align-middle justify-content-center">
                                                        <i class="fa-solid fa-eye"></i>
                                                        <a href="/html/admin/manauser/edit.jsp" class="fa-solid fa-pencil"
                                                           aria-hidden="true"></a>
                                                       <i class="fa-solid fa-trash">
                                                            <input type="hidden" id="url"
                                                                   value="">
                                                            <input type="hidden" name="_token" id="_token"
                                                                   value="">
                                                        </i>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    </div>
  </main>
  <!--Main Layout-->
  <script src="/lib/mdb4/js/jquery.js"></script>
  <script src="/lib/mdb4/js/popper.js"></script>
  <script src="/lib/mdb4/js/bootstrap.js"></script>
  <script src="/lib/mdb4/js/mdb.js"></script>
  <script src="/lib/mdb4/js/addons/datatables.min.js"></script>
  <script>
    $(document).ready(function() {

  // SideNav Initialization
  $(".button-collapse").sideNav({
		slim: true});
  new WOW().init();

  $('#dtBasicExample').DataTable();
$('.dataTables_length').addClass('bs-select');


})
  </script>
</body>

</html>
