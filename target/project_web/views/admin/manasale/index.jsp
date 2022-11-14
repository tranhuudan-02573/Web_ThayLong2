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
  <jsp:include page="/layout/admin/header.jsp"/>
  <!--/.Double navigation-->

  <!--Main Layout-->
  <main class="mt-1">
    <div class="container-fluid panel-scroll">

        <div id="container">
        <div class="row col col-12 col-sm-12 col-md-12 col-lg-12 ml-auto mr-auto float-none pl-1 pr-0">
            <div class="col col-12 p-0">
                <div class="card card-cascade narrower ml-2 mr-2 mb-1 ">
                    <div class="view view-cascade gradient-card-header blue-gradient d-flex  ">
                        <div class="text-center w-100"> DANH SÁCH ƯU ĐÃI</div>


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
        <input type="text" class="form-control" id="inputEmail4MD">
        <label for="inputEmail4MD">Tên</label>
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



    <!-- Grid column -->

    <!-- Grid column -->


     <div class="col-md-12">
      <!-- Material input -->
      <div class="form-group">
  <label  for="exampleFormControlTextarea3" style="float: left; color: #6c757d;">Mô tả</label>
  <textarea placeholder=" Mô tả tại đây" class="form-control" id="exampleFormControlTextarea3" rows="7" style="height: 80px; " ></textarea>
</div>
    </div>
    <!-- Grid column -->
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
                                                <th width="0px">Mã ưu đãi</th>
                                                <th>Hình ảnh</th>
                                                <th>Tên ưu đãi</th>
                                                <th>Thao tác</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="align-middle justify-content-center">100</td>
                                                    <td class="align-middle justify-content-center"><img src="https://cdn.tgdd.vn/Products/Images/522/222806/lenovo-tab-m8-tb-8505x400x400-600x600.jpg" class="img-fluid " style="width: 60px; height: 60px;" alt=""></td>
                                                    <td class="align-middle justify-content-center">Sale lớn 11/11</td>


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
 $('#dtBasicExample').DataTable();
$('.dataTables_length').addClass('bs-select');
  $(".button-collapse").sideNav({
		slim: true});
  new WOW().init();


})
  </script>
</body>

</html>
