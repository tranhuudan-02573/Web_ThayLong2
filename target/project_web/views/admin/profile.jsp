<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
    </head>
<body class="fixed-sn mdb-skin">

  <!--Double navigation-->
  <!--/.Double navigation-->
<main class="mt-1">
    <div class="container-fluid panel-scroll">

        <div id="container">
        <div class="row col col-12 col-sm-12 col-md-12 col-lg-12 ml-auto mr-auto float-none pl-1 pr-0">
            <div class="col col-12 p-0">
                <div class="card card-cascade narrower ml-2 mr-2 mb-1 ">
                    <div class="view view-cascade gradient-card-header blue-gradient   ">
                        <div class="text-center w-100 text-uppercase"> THÔNG TIN CÁ NHÂN</div>


                    </div>

                    <div class="card-body">
                        <div class="row w-100 mx-auto">
                            <div class="col-12">
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
        <input type="text" class="form-control" id="address">
        <label for="address">Địa chỉ</label>
      </div>
    </div>
    <div class="col-md-6">
      <!-- Material input -->
      <div class="md-form form-group">
        <input type="text" class="form-control" id="email">
        <label for="email">Email</label>
      </div>
    </div>

       <div class="col-md-4 my-2">
        <h6>Gới tính</h6>
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
                        <input type="radio" class="form-check-input" id="status2" checked
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
<input type="submit"  class="btn btn-default "></input>
</div>
</form>
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
<content tag="local_script">


    <script src="/src/js/admin/form.js"></script>
    <script>
        $(document).ready(function() {

            // SideNav Initialization
            $(".button-collapse").sideNav({
                slim: true});
            new WOW().init();

            $('#tableData').DataTable();


        })
    </script>
</content>
</body>

</html>
