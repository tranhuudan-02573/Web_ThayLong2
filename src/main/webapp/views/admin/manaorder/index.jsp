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
                    <div class="view view-cascade gradient-card-header blue-gradient d-flex">
                        <div class="text-center w-100 text-uppercase "><span class="h5">DANH SÁCH ĐƠN HÀNG</span></div>


                    </div>
                    <div id="card-body-main" class="card-body card-body-cascade "
                         style="padding: 1.25rem 5px;">
                        <div id="config_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
                            <div class="row">
                                 <div class="col-sm-12">
<!-- Horizontal material form -->
<!-- Material column sizing form -->
<div class="col col-12 col-sm-12 col-md-12 col-lg-10 ml-auto mr-auto">

    <!--Grid row-->


    <!--Grid row-->
    <div class="row w-100 mx-auto">



      <!--Grid column-->
      <div class="col-lg-4 col-md-6 mb-4">

        <div class="media white z-depth-1 rounded">
          <i class="fas fa-chart-bar fa-lg deep-purple z-depth-1  rounded-left text-white mr-3" style="padding: 2rem;"></i>
          <div class="media-body p-1">
            <p class="text-uppercase text-muted mb-1"><small>doanh thu</small></p>
            <h5 class="font-weight-bold mb-0">1.456</h5>
          </div>
        </div>


      </div>
      <!--Grid column-->

      <!--Grid column-->
      <div class="col-lg-4 col-md-6 mb-4">

        <div class="media white z-depth-1 rounded">
          <i class="fas fa-chart-pie fa-lg teal z-depth-1  rounded-left text-white mr-3" style="padding: 2rem;"></i>
          <div class="media-body p-1">
            <p class="text-uppercase text-muted mb-1"><small>Lợi nhuận</small></p>
            <h5 class="font-weight-bold mb-0">323.540</h5>
          </div>
        </div>

      </div>
      <!--Grid column-->

      <!--Grid column-->
      <div class="col-lg-4 col-md-6 mb-4">

        <div class="media white z-depth-1 rounded">
          <i class="fas fa-download fa-lg pink z-depth-1 rounded-left text-white mr-3" style="padding: 2rem;"></i>
          <div class="media-body p-1">
            <p class="text-uppercase text-muted mb-1"><small>so với tháng trước</small></p>
            <h5 class="font-weight-bold mb-0">13.540</h5>
          </div>
        </div>

      </div>
      <!--Grid column-->

    </div>
    </div>
    <!--Grid row-->


    <!--Grid row-->

<!-- Material column sizing form -->
<!-- Horizontal material form -->
</div>

                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="col col-12 col-sm-12 col-md-12 col-lg-10 ml-auto mr-auto">
                                        <table id="dtBasicExample" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                            <thead>
                                            <tr>
                                                <th width="0px">Mã đơn hàng </th>
                                                <th>Tên</th>
                                                <th>Số điện thoại</th>
                                                <th>Số lượng</th>
                                                 <th>Trạng thái</th>
                                                <th>Thao tác</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                       <td class="align-middle justify-content-center">123</td>
                                                    <td  class="align-middle justify-content-center">Nguyễn thị B</td>
                                                    <td  class="align-middle justify-content-center">042342365</td>
                                                    <td  class="align-middle justify-content-center">13</td>
                                                    <td  class="align-middle justify-content-center">da giao</td>

                                                    <td  class="align-middle justify-content-center">
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
                                        <div class="modal fade" id="viewDetail" role="dialog">
                                            <div class="modal-dialog modal-lg" role="document">
                                                <!-- Modal content-->
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                    </div>
                                                    <div class="modal-body data">
                                                        <table width="100%" align="center" class="table-bordered">


                                                            <tr>
                                                                <td>tên</td>
                                                                <td class="font-weight-normal align-left-10 detail-name">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>năm</td>
                                                                <td class="font-weight-normal align-left-10 detail-year">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>ngành</td>
                                                                <td class="font-weight-normal align-left-10  detail-department">
                                                                </td>
                                                            </tr>

                                                        </table>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <a class="edit" href=""><input type="button"
                                                                                       class="btn btn-danger "
                                                                                       value="Chỉnh sửa"></a>
                                                        <button type="button" class="btn btn-primary"
                                                                data-dismiss="modal">Đóng
                                                        </button>
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
