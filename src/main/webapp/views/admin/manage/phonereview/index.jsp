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

    <!--Main Layout-->
    <main class="mt-1">
        <div class="container-fluid panel-scroll">

            <div id="container">
                <div class="row col col-12 col-sm-12 col-md-12 col-lg-12 ml-auto mr-auto float-none pl-1 pr-0">
                    <div class="col col-12 p-0">
                        <div class="card card-cascade narrower ml-2 mr-2 mb-1 ">
                            <div class="view view-cascade gradient-card-header blue-gradient d-flex  ">
                                <div class="text-center w-100 text-uppercase"><span class="h5">Danh sách đánh giá</span>
                                </div>


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
                                                        <div class="col-md-12">
                                                            <!-- Material input -->
                                                            <div class="form-group">
                                                                <label for="exampleFormControlTextarea3"
                                                                    style="float: left; color: #6c757d;">câu hỏi</label>
                                                                <textarea placeholder="iphone 14 này có trả góp không ? " class="form-control"
                                                                    id="exampleFormControlTextarea3" rows="7"
                                                                    style="height: 80px; " readonly disabled></textarea>
                                                            </div>
                                                        </div>
                                                        <style>
                                                              .ck.ck-reset.ck-editor,  .ck.ck-editor__main,.ck.ck-content
                {
                height: 95%;
              }
                                                        </style>
                                                        <div class="col-md-12" style="height: 400px;" >
                                                            <!-- Material input -->
                                                           <div id="editor"></div>
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
                                                            <th width="0px">Mã đáng giá</th>
                                                            <th>Tên người dùng</th>
                                                            <th>Số sao</th>
                                                            <th>Là câu hỏi</th>
                                                            <th>Lượt thích</th>
                                                            <th>Tiêu đề</th>
                                                            <th>Thao tác</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>3213</td>
                                                            <td>Trần Hữu Thủm</td>
                                                            <td>4</td>
                                                            <td>yes</td>
                                                            <td>221</td>
                                                            <td>thông số</td>
                                                            <td>
                                                                <i class="fa-solid fa-eye"></i>
                                                                <a href="/src/html/admin/manauser/edit.html"
                                                                    class="fa-solid fa-pencil" aria-hidden="true"></a>
                                                                <i class="fa-solid fa-trash">
                                                                    <input type="hidden" id="url" value="">
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
   <content tag="local_script">
       <script src="/src/js/admin/form.js"></script>
       <script>
           $(document).ready(function () {

               // SideNav Initialization
               $(".button-collapse").sideNav({
                   slim: true
               });
               new WOW().init();

               $('#dtBasicExample').DataTable();
               $('.dataTables_length').addClass('bs-select');


           })
           ClassicEditor
               .create(document.querySelector('#editor'))
               .catch(error => {
                   console.error(error);
               });
       </script>
   </content>
</body>

</html>
