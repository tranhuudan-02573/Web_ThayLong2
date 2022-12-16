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
       <!-- Table with panel -->
<div class="card card-cascade narrower">

  <!--Card image-->
  <div
    class="view view-cascade gradient-card-header blue-gradient narrower py-2 mx-4 mb-3 d-flex justify-content-between align-items-center">

    <div>
     <button type="button" class="btn btn-outline-white btn-rounded btn-sm px-2">
      <i class="fa-solid fa-arrow-left-long"></i>
      </button>
      <button type="button" class="btn btn-outline-white btn-rounded btn-sm px-2">
   <i class="fa-solid fa-xmark"></i>
      </button>
    </div>

    <a href="" class="white-text mx-3 text-uppercase ">chi tiết điện thoại</a>

    <div>
    <button type="button" class="btn btn-outline-white btn-rounded btn-sm px-2">
       <i class="fa-solid fa-rotate-left"></i>
      </button>
      <button type="button" class="btn btn-outline-white btn-rounded btn-sm px-2">
        <i class="fa-solid fa-repeat"></i>
      </button>
      <button type="button" class="btn btn-outline-white btn-rounded btn-sm px-2">
      <i class="fa-regular fa-floppy-disk"></i>
      </button>
    </div>

  </div>
  <!--/Card image-->

  <div class="px-4">

    <div class="table-wrapper">
      <!--Table-->
       <table class="table border table-hover ">
<tr>
  <th>tên</th>
  <td>
<input id="input-char-counter1" type="text" length="10" class="form-control">
                                <label for="input-char-counter1">tên điện thoại</label></td>
</tr>

<tr>
  <th>loại</th>
  <td><select class="mdb-select md-form" editable="true" searchable="Search and add here..."
                                  data-stop-refresh="false">
                                  <option value="" disabled selected>chọn loại</option>
                                  <option value="1">Option 1</option>
                                  <option value="2">Option 2</option>
                                  <option value="3">Option 3</option>
                                </select>
  </td>
</tr>
<tr>
  <th>trạng thái</th>
  <td><select class="mdb-select md-form" editable="true" searchable="Search and add here..."
                                  data-stop-refresh="false">
                                  <option value="" disabled selected>chọn trạng thái</option>
                                  <option value="1">Option 1</option>
                                  <option value="2">Option 2</option>
                                  <option value="3">Option 3</option>
                                </select></td>
</tr>
<tr>
  <th>giảm giá</th>
  <td><select class="mdb-select md-form" editable="true" searchable="Search and add here..."
                                  data-stop-refresh="false">
                                  <option value="" disabled selected>chọn giảm giá</option>
                                  <option value="1">Option 1</option>
                                  <option value="2">Option 2</option>
                                  <option value="3">Option 3</option>
                                </select></td>
</tr>

</tr>
<tr>
  <th>hãng</th>
  <td><select class="mdb-select md-form" editable="true" searchable="Search and add here..."
                                  data-stop-refresh="false">
                                  <option value="" disabled selected>chọn hãng</option>
                                  <option value="1">Option 1</option>
                                  <option value="2">Option 2</option>
                                  <option value="3">Option 3</option>
                                </select>

                                <tr>
                                  <th>dòng</th>
<td><select class="mdb-select md-form" editable="true" searchable="Search and add here..."
                                  data-stop-refresh="false">
                                  <option value="" disabled selected>chọn dòng</option>
                                  <option value="1">Option 1</option>
                                  <option value="2">Option 2</option>
                                  <option value="3">Option 3</option>
                                </select></td>
                                </tr>
<tr>
  <th>người tạo</th>
  <td>
    <select class="mdb-select md-form" editable="true" searchable="Search and add here..."
                                  data-stop-refresh="false">
                                  <option value="" disabled selected>chọn người tạo</option>
                                  <option value="1">Option 1</option>
                                  <option value="2">Option 2</option>
                                  <option value="3">Option 3</option>
                                </select>
  </td>
</tr>
<tr>
  <th>giá</th>
  <td>   <input id="input-char-counter1" type="number" length="10" class="form-control">
                                <label for="input-char-counter1">giá</label></td></td>
</tr>
<tr>
  <th>
    mô tả
  </th>
  <td><textarea id="textarea-char-counter" class="form-control md-textarea" length="120"
                                  rows="3"></textarea>
                                <label for="textarea-char-counter">mô tả</label></td>
</tr>
<tr>
  <th>tổng số lượng</th>
  <td>  <input id="input-char-counter1" type="number" length="10" class="form-control">
                                <label for="input-char-counter1">tổng</label></td>
</tr>
  <tr>
    <th>hình đại diện</th>
<td><form class="md-form">
                                  <div class="file-field">

                                    <div class="file-path-wrapper">
                                      <input class="file-path validate" type="text" placeholder="Upload your file">
                                    </div>
  <div class="btn btn-primary btn-sm float-left">
                                      <span>chọn hình</span>
                                      <input type="file">
                                    </div>
                                  </div>
                                </form></td>
  </tr>
  <tr>
    <th>hình ảnh</th>
    <td>iphone</td>
  </tr>
    <tr>
    <th>thông số</th>
    <td>sad</td>
  </tr>
    <tr>
    <th>bộ nhớ</th>
    <td>iphone</td>
  </tr>
    <tr>
    <th>khuyến mãi</th>
    <td>iphone</td>
  </tr>
                              </table>

</tr>





      <!--Table-->
    </div>

  </div>

</div>
<!-- Table with panel -->
    </div>

    </div>
  </main>
  <content tag="local_script">
      <script>
          $(document).ready(function() {
              $('.mdb-select').materialSelect({
              });
              // SideNav Initialization
              $(".button-collapse").sideNav({
                  slim: true});
              new WOW().init();

              $('#dtBasicExample').DataTable();
              $('.dataTables_length').addClass('bs-select');


          })
      </script>
  </content>
</body>

</html>
