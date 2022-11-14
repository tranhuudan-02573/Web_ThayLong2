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
 <header id="header"></header>
  <!--/.Double navigation-->

  <!--Main Layout-->
  <main class="mt-1">
    <div class="container-fluid panel-scroll">

        <div id="container">
        <div class="row col col-12 col-sm-12 col-md-12 col-lg-12 ml-auto mr-auto float-none pl-1 pr-0">
            <div class="col col-12 p-0">
                <div class="card card-cascade narrower ml-2 mr-2 mb-1 ">
                    <div class="view view-cascade gradient-card-header blue-gradient d-flex  ">
                        <div class="text-center w-100 text-uppercase"> DANH SÁCH người dùng</div>

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
        <input type="text" class="form-control" id="phone">
        <label for="phone">Số điện thoại</label>
      </div>
    </div>
    <div class="col-md-6">
      <!-- Material input -->
      <div class="md-form form-group">
        <input type="text" class="form-control" id="name">
        <label for="name">Tên</label>
      </div>
    </div>

    <div class="col-md-6">
      <!-- Material input -->
      <div class="md-form form-group">
        <input type="text" class="form-control" id="email">
        <label for="email">Email</label>
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
    <div class="col-md-12">
      <!-- Material input -->
      <div class="md-form form-group">
        <input type="text" class="form-control" id="address">
        <label for="address">Địa chỉ</label>
      </div>
    </div>

       <div class="col-md-4 my-2">
        <h6>Giới tính</h6>
                      <div class="form-check form-check-inline">
                        <input type="radio" class="form-check-input" checked id="gender"
                          name="gender">
                        <label class="form-check-label" for="gender">Nam </label>
                      </div>

                      <!-- Material inline 2 -->
                      <div class="form-check form-check-inline">
                        <input type="radio" class="form-check-input" id="gender2"
                          name="gender">
                        <label class="form-check-label" for="gender2">Nữ</label>
                      </div>
                    </div>

       <div class="col-md-4 my-2">
           <h6>Phân quyền</h6>
                      <div class="form-check form-check-inline">
                        <input type="radio" class="form-check-input"  id="role"
                        checked  name="role" >
                        <label class="form-check-label" for="role" >Admin </label>
                      </div>

                      <!-- Material inline 2 -->
                      <div class="form-check form-check-inline">
                        <input type="radio" class="form-check-input" id="role2"
                          name="role">
                        <label class="form-check-label" for="role2">User</label>
                      </div>
                    </div>
                     <div class="col-md-4 my-2">
           <h6>Trạng thái</h6>
                      <div class="form-check form-check-inline">
                        <input type="radio" class="form-check-input" id="status"
                          name="status">
                        <label class="form-check-label" for="status">Hoạt động</label>
                      </div>

                      <!-- Material inline 2 -->
                      <div class="form-check form-check-inline">
                        <input type="radio" class="form-check-input"  id="status2" checked
                          name="status">
                        <label class="form-check-label" for="status2">Không hoạt động</label>
                      </div>
                    </div>





    <!-- Grid column -->

    <!-- Grid column -->



    <!-- Grid column -->
  </div>
  <!-- Grid row -->
  <div class="text-center mt-4">
  <div class="action">
    <div class="btn btn-danger btn-md">Xoa</div>
    <div class="btn btn-default btn-md">Tạo</div>
    <div class="btn btn-warning btn-md">Cập nhật</div>
    <div class="btn btn-info btn-md">Tải lại</div>
  </div>
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
                                                <th width="0px">Mã người dùng</th>
                                                <th>Tên</th>
                                                <th>Số điện thoại</th>
                                                <th>Địa chỉ</th>
                                                <th>Trạng thái</th>
                                                <th>Thao tác</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td  class="align-middle justify-content-center">123</td>
                                                    <td class="align-middle justify-content-center">Trần Hữu Lì</td>
                                                    <td class="align-middle justify-content-center">0377162712</td>
                                                    <td class="align-middle justify-content-center">KTX khuB </td>
          <td class="align-middle justify-content-center">dang hoat dong</td>
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
  <script src="/lib/mdb4/js/mdb.js"></script>
  <script src="/lib/mdb4/js/bootstrap.js"></script>
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
