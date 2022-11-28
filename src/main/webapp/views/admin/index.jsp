<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="/lib/fa6/fontawesome-free-6.2.0-web/css/all.css">
  <link rel="stylesheet" href="/lib/mdb4/css/mdb.css">
  <link rel="stylesheet" href="/lib/mdb4/css/bootstrap.css">
  <link rel="stylesheet" href="/lib/datatable/DataTables/datatables.css">
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
  <main class="mt-1">
    <div class="container-fluid panel-scroll">

      <div id="container">
        <div class="row col col-12 col-sm-12 col-md-12 col-lg-12 ml-auto mr-auto float-none pl-1 pr-0">
          <div class="col col-12 p-0">
            <div class="card card-cascade narrower ml-2 mr-2 mb-1 ">
              <div class="view view-cascade gradient-card-header blue-gradient   ">
                <div class="text-center w-100 text-uppercase"><span class="h5">Trang Quản Trị</span></div>


              </div>

              <div class="card-body">
                <div class="row w-100 mx-auto">
                  <div class="col-3 my-3">
                    <a href="">
                      <!-- Card -->
                      <div class="card">
                        <!-- Card image -->
                        <div class="view overlay">
                          <img class="card-img-top"
                            src="https://mdbootstrap.com/img/Mockups/Lightbox/Thumbnail/img%20(67).webp"
                            alt="Card image cap">
                          <a href="/views/admin/manaorder/index.jsp">
                            <div class="mask rgba-white-slight"></div>
                          </a>
                        </div>

                        <!-- Card content -->
                        <div class="card-body">

                          <!-- Title -->
                          <h6 class="card-title  text-uppercase">Quản lí đơn hàng</h6>

                        </div>

                      </div>

                      <!-- Card -->
                    </a>

                  </div>
                  <div class="col-3 my-3">
                    <a href="">
                      <!-- Card -->
                      <div class="card">

                        <!-- Card image -->
                        <div class="view overlay">
                          <img class="card-img-top"
                            src="https://mdbootstrap.com/img/Mockups/Lightbox/Thumbnail/img%20(67).webp"
                            alt="Card image cap">
                          <a href="/views/admin/manasale/index.jsp">
                            <div class="mask rgba-white-slight"></div>
                          </a>
                        </div>

                        <!-- Card content -->
                        <div class="card-body">

                          <!-- Title -->
                          <h6 class="card-title  text-uppercase">Quản lí ưu đãi</h6>

                        </div>

                      </div>

                      <!-- Card -->
                    </a>

                  </div>
                  <div class="col-3 my-3">
                    <a href="">
                      <!-- Card -->
                      <div class="card">

                        <!-- Card image -->
                        <div class="view overlay">
                          <img class="card-img-top"
                            src="https://mdbootstrap.com/img/Mockups/Lightbox/Thumbnail/img%20(67).webp"
                            alt="Card image cap">
                          <a href="/views/admin/manareview/index.jsp">
                            <div class="mask rgba-white-slight"></div>
                          </a>
                        </div>

                        <!-- Card content -->
                        <div class="card-body">

                          <!-- Title -->
                          <h6 class="card-title  text-uppercase">Quản lí đánh giá</h6>

                        </div>

                      </div>

                      <!-- Card -->
                    </a>

                  </div>
                  <div class="col-3 my-3">
                    <a href="">
                      <!-- Card -->
                      <div class="card">

                        <!-- Card image -->
                        <div class="view overlay">
                          <img class="card-img-top"
                            src="https://mdbootstrap.com/img/Mockups/Lightbox/Thumbnail/img%20(67).webp"
                            alt="Card image cap">
                          <a href="/views/admin/manaproduct/index.jsp">
                            <div class="mask rgba-white-slight"></div>
                          </a>
                        </div>

                        <!-- Card content -->
                        <div class="card-body">

                          <!-- Title -->
                          <h6 class="card-title  text-uppercase">Quản lí sản phẩm</h6>

                        </div>

                      </div>

                      <!-- Card -->
                    </a>

                  </div>
                  <div class="col-3 my-3">
                    <a href="">
                      <!-- Card -->
                      <div class="card">

                        <!-- Card image -->
                        <div class="view overlay">
                          <img class="card-img-top"
                            src="https://mdbootstrap.com/img/Mockups/Lightbox/Thumbnail/img%20(67).webp"
                            alt="Card image cap">
                          <a href="/views/admin/manauser/index.jsp">
                            <div class="mask rgba-white-slight"></div>
                          </a>
                        </div>

                        <!-- Card content -->
                        <div class="card-body">

                          <!-- Title -->
                          <h6 class="card-title  text-uppercase">Quản lí user</h6>

                        </div>

                      </div>

                      <!-- Card -->
                    </a>

                  </div>
                     <div class="col-3 my-3">
                    <a href="">
                      <!-- Card -->
                      <div class="card">

                        <!-- Card image -->
                        <div class="view overlay">
                          <img class="card-img-top"
                            src="https://mdbootstrap.com/img/Mockups/Lightbox/Thumbnail/img%20(67).webp"
                            alt="Card image cap">
                          <a href="/views/admin/manapromot/index.jsp">
                            <div class="mask rgba-white-slight"></div>
                          </a>
                        </div>

                        <!-- Card content -->
                        <div class="card-body">

                          <!-- Title -->
                          <h6 class="card-title  text-uppercase">Quản lí chương trình </h6>

                        </div>

                      </div>

                      <!-- Card -->
                    </a>

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
  <script src="/lib/datatable/DataTables/datatables.js"></script>
  <script>
    $(document).ready(function () {

      // SideNav Initialization
      $(".button-collapse").sideNav({
        slim: true
      });
      new WOW().init();

      $('#tableData').DataTable();


    })
  </script>
</body>

</html>
