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
      <div class="container-fluid h-100">

        <div id="container h-100">
          <!-- Table with panel -->
          <div class="card h-100 card-cascade narrower mb-5">

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
              <a href="" class="white-text mx-3 text-uppercase ">chỉnh sửa điện thoại</a>
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
            <style>
              .ck.ck-reset.ck-editor,  .ck.ck-editor__main,.ck.ck-content
                {
                height: 95%;
              }

            </style>
         <div class="px-4 mt-4  ">
             <ul class="stepper horizontal" id="horizontal-stepper"  style="height: 100vh;" >
              <li class="step active">
                <div class="step-title waves-effect waves-dark">cơ bản</div>
                <div class="step-new-content">
                  <!--Table-->
                  <div class="row">
                    <div class="col-3">
tên
                    </div>
                    <div class="col-9">
<input id="input-char-counter1" type="text" length="10" class="form-control">
                                <label for="input-char-counter1">tên điện thoại</label>
                    </div>
                    <div class="col-3">loại</div>
<div class="col-9"><select class="mdb-select md-form" editable="true" searchable="Search and add here..."
                                  data-stop-refresh="false">
                                  <option value="" disabled selected>chọn loại</option>
                                  <option value="1">Option 1</option>
                                  <option value="2">Option 2</option>
                                  <option value="3">Option 3</option>
                                </select></div>
                                <div class="col-3">trạng thái</div>
                                <div class="col-9"><select class="mdb-select md-form" editable="true" searchable="Search and add here..."
                                  data-stop-refresh="false">
                                  <option value="" disabled selected>chọn trạng thái</option>
                                  <option value="1">Option 1</option>
                                  <option value="2">Option 2</option>
                                  <option value="3">Option 3</option>
                                </select></div>
                                <div class="col-3">giảm giá</div>
                                <div class="col-9"><select class="mdb-select md-form" editable="true" searchable="Search and add here..."
                                  data-stop-refresh="false">
                                  <option value="" disabled selected>chọn giảm giá</option>
                                  <option value="1">Option 1</option>
                                  <option value="2">Option 2</option>
                                  <option value="3">Option 3</option>
                                </select></div>
                                 <div class="col-3">hãng</div>
                                <div class="col-9"><select class="mdb-select md-form" editable="true" searchable="Search and add here..."
                                  data-stop-refresh="false">
                                  <option value="" disabled selected>chọn hãng</option>
                                  <option value="1">Option 1</option>
                                  <option value="2">Option 2</option>
                                  <option value="3">Option 3</option>
                                </select></div>
                                 <div class="col-3">dòng</div>
                                <div class="col-9"><select class="mdb-select md-form" editable="true" searchable="Search and add here..."
                                  data-stop-refresh="false">
                                  <option value="" disabled selected>chọn dòng</option>
                                  <option value="1">Option 1</option>
                                  <option value="2">Option 2</option>
                                  <option value="3">Option 3</option>
                                </select></div>
                                 <div class="col-3">người tạo</div>
                                <div class="col-9"><select class="mdb-select md-form" editable="true" searchable="Search and add here..."
                                  data-stop-refresh="false">
                                  <option value="" disabled selected>chọn người tạo</option>
                                  <option value="1">Option 1</option>
                                  <option value="2">Option 2</option>
                                  <option value="3">Option 3</option>
                                </select></div>
                                <div class="col-3">
                                  giá
                                </div>
                                <div class="col-9">
                                  <input id="input-char-counter1" type="number" length="10" class="form-control">
                                <label for="input-char-counter1">giá</label>
                                </div>
                                <div class="col-3">mô tả</div>
<div class="col-9"><textarea id="textarea-char-counter" class="form-control md-textarea" length="120"
                                  rows="3"></textarea>
                                <label for="textarea-char-counter">mô tả</label></div>
                                 <div class="col-3">
                                  tổng số lượng
                                </div>
                                <div class="col-9">
                                  <input id="input-char-counter1" type="number" length="10" class="form-control">
                                <label for="input-char-counter1">tổng</label>
                                </div>
                                <div class="col-3">hình đại diện</div>
<div class="col-9">
<form class="md-form">
                                  <div class="file-field">

                                    <div class="file-path-wrapper">
                                      <input class="file-path validate" type="text" placeholder="Upload your file">
                                    </div>
  <div class="btn btn-primary btn-sm float-left">
                                      <span>chọn hình</span>
                                      <input type="file">
                                    </div>
                                  </div>
                                </form>

</div>

                    <!--Table-->

                  </div>

                </div>

              </li>
              <li class="step ">
                <div class="step-title waves-effect waves-dark">nội dung </div>
                <div class="step-new-content">
                  <div class="px-4 h-100">
                  <div id="editor" class="h-100 mb-4" ></div>

                  </div>

                </div>
              </li>
               <li class="step">
                <div class="step-title waves-effect waves-dark">hình ảnh</div>
                <div class="step-new-content">
                  <div class="px-4">
                    <div class="row align-items-center">
                      <div class="col-3">
                        mô tả
                      </div>
                      <div class="col-9"><textarea id="textarea-char-counter" class="form-control md-textarea" length="120"
                                  rows="3"></textarea>
                                <label for="textarea-char-counter">Type your text</label></div>
                                   <div class="col-3">ảnh</div>
                      <div class="col-9">
                        <form class="md-form">
                                      <div class="file-field">

                                        <div class="file-path-wrapper">
                                          <input class="file-path validate" type="text" placeholder="Upload your file">
                                        </div>
      <div class="btn btn-primary btn-sm float-left">
                                          <span>Choose file</span>
                                          <input type="file">
                                        </div>
                                      </div>
                                    </form>
                      </div>
                    </div>
                  </div>

                </div>
              </li>
               <li class="step">
                <div class="step-title waves-effect waves-dark">bộ nhớ</div>
                <div class="step-new-content">
                  <div class="px-4">
                    <div class="row align-items-center">
                     <div class="col-3"><div class="form-check  ">
  <input type="checkbox" class="form-check-input" id="materialChecked2" checked>
  <label class="form-check-label" for="materialChecked2">128GB</label>
</div></div>
<div class="col-9"><select class="mdb-select md-form" editable="true" searchable="Search and add here..."
                                  data-stop-refresh="false">
                                  <option value="" disabled selected>chọn link điện thoại</option>
                                  <option value="1">Option 1</option>
                                  <option value="2">Option 2</option>
                                  <option value="3">Option 3</option>
                                </select></div>
                                 <div class="col-3"><div class="form-check  ">
  <input type="checkbox" class="form-check-input" id="materialChecked2" checked>
  <label class="form-check-label" for="materialChecked2">128GB</label>
</div></div>
<div class="col-9"><select class="mdb-select md-form" editable="true" searchable="Search and add here..."
                                  data-stop-refresh="false">
                                  <option value="" disabled selected>chọn link điện thoại</option>
                                  <option value="1">Option 1</option>
                                  <option value="2">Option 2</option>
                                  <option value="3">Option 3</option>
                                </select></div>
                                 <div class="col-3"><div class="form-check  ">
  <input type="checkbox" class="form-check-input" id="materialChecked2" checked>
  <label class="form-check-label" for="materialChecked2">128GB</label>
</div></div>
<div class="col-9"><select class="mdb-select md-form" editable="true" searchable="Search and add here..."
                                  data-stop-refresh="false">
                                  <option value="" disabled selected>chọn link điện thoại</option>
                                  <option value="1">Option 1</option>
                                  <option value="2">Option 2</option>
                                  <option value="3">Option 3</option>
                                </select></div>
                    </div>
                  </div>

                </div>
              </li>
               <li class="step">
                <div class="step-title waves-effect waves-dark">màu sắc</div>
                <div class="step-new-content">
                  <div class="px-4">
                 <div class="row align-items-center ">
                <div class="col-3"><div class="form-check  ">
  <input type="checkbox" class="form-check-input" id="materialChecked2" checked>
  <label class="form-check-label" for="materialChecked2">màu đỏ</label>
</div></div>
<div class="col-3"><input id="input-char-counter1" type="number" length="10" class="form-control">
                            <label for="input-char-counter1">số lượng</label></div>
<div class="col-6">  <form class="md-form">
                              <div class="file-field">

                                <div class="file-path-wrapper">
                                  <input class="file-path validate" type="text" placeholder="Upload your file">
                                </div>
                                <div class="btn btn-primary btn-sm float-left">
                                  <span>chọn ảnh</span>
                                  <input type="file">
                                </div>
                              </div>
                            </form></div>
                              <div class="col-3"><div class="form-check  ">
  <input type="checkbox" class="form-check-input" id="materialChecked2" checked>
  <label class="form-check-label" for="materialChecked2">màu đỏ</label>
</div></div>
<div class="col-3"><input id="input-char-counter1" type="number" length="10" class="form-control">
                            <label for="input-char-counter1">số lượng</label></div>
<div class="col-6">  <form class="md-form">
                              <div class="file-field">

                                <div class="file-path-wrapper">
                                  <input class="file-path validate" type="text" placeholder="Upload your file">
                                </div>
                                <div class="btn btn-primary btn-sm float-left">
                                  <span>chọn ảnh</span>
                                  <input type="file">
                                </div>
                              </div>
                            </form></div>
                             <div class="col-3"><div class="form-check  ">
  <input type="checkbox" class="form-check-input" id="materialChecked2" checked>
  <label class="form-check-label" for="materialChecked2">màu đỏ</label>
</div></div>
<div class="col-3"><input id="input-char-counter1" type="number" length="10" class="form-control">
                            <label for="input-char-counter1">số lượng</label></div>
<div class="col-6">  <form class="md-form">
                              <div class="file-field">

                                <div class="file-path-wrapper">
                                  <input class="file-path validate" type="text" placeholder="Upload your file">
                                </div>
                                <div class="btn btn-primary btn-sm float-left">
                                  <span>chọn ảnh</span>
                                  <input type="file">
                                </div>
                              </div>
                            </form></div>


                 </div>
                  </div>

                </div>
              </li>
               <li class="step">
                <div class="step-title waves-effect waves-dark">khuyến mãi</div>
                <div class="step-new-content">
                  <div class="px-4">
                  <div class="row  align-items-center ">
                      <div class="col-4"><div class="form-check  ">
  <input type="checkbox" class="form-check-input" id="materialChecked2" checked>
  <label class="form-check-label" for="materialChecked2">trả góp 0%</label>
</div></div>
<div class="col-4"> <div class="md-form md-outline input-with-post-icon datepicker">
  <input placeholder="Select date" type="date" id="example" class="form-control">
  <label for="example">ngày bắt đầu</label>
</div></div>
<div class="col-4"> <div class="md-form md-outline input-with-post-icon datepicker">
  <input placeholder="Select date" type="date" id="example" class="form-control">
  <label for="example">ngày kết thúc</label>
</div></div> <div class="col-4"><div class="form-check  ">
  <input type="checkbox" class="form-check-input" id="materialChecked2" checked>
  <label class="form-check-label" for="materialChecked2">trả góp 0%</label>
</div></div>
<div class="col-4"> <div class="md-form md-outline input-with-post-icon datepicker">
  <input placeholder="Select date" type="date" id="example" class="form-control">
  <label for="example">ngày bắt đầu</label>
</div></div>
<div class="col-4"> <div class="md-form md-outline input-with-post-icon datepicker">
  <input placeholder="Select date" type="date" id="example" class="form-control">
  <label for="example">ngày kết thúc</label>
</div></div> <div class="col-4"><div class="form-check  ">
  <input type="checkbox" class="form-check-input" id="materialChecked2" checked>
  <label class="form-check-label" for="materialChecked2">trả góp 0%</label>
</div></div>
<div class="col-4"> <div class="md-form md-outline input-with-post-icon datepicker">
  <input placeholder="Select date" type="date" id="example" class="form-control">
  <label for="example">ngày bắt đầu</label>
</div></div>
<div class="col-4"> <div class="md-form md-outline input-with-post-icon datepicker">
  <input placeholder="Select date" type="date" id="example" class="form-control">
  <label for="example">ngày kết thúc</label>
</div></div>



                  </div>
                  </div>

                </div>
              </li>

              <li class="step">
                <div class="step-title waves-effect waves-dark">thông số</div>
                <div class="step-new-content">
                <div class="mx-4">
                  <div class="row  align-items-center ">
                   <div class="col-5">
                    <div class="form-check  ">
  <input type="checkbox" class="form-check-input" id="materialChecked2" checked>
  <label class="form-check-label" for="materialChecked2">RAM</label>
</div></div>
<div class="col-7"> <input type="text" class="form-control" id="name">
        <label for="name">giá trị</label></div>

  <div class="col-5">
                    <div class="form-check  ">
  <input type="checkbox" class="form-check-input" id="materialChecked2" checked>
  <label class="form-check-label" for="materialChecked2">màn hình</label>
</div></div>
<div class="col-7"> <input type="text" class="form-control" id="name">
        <label for="name">giá trị</label></div>

          <div class="col-5">
                    <div class="form-check  ">
  <input type="checkbox" class="form-check-input" id="materialChecked2" checked>
  <label class="form-check-label" for="materialChecked2">chip</label>
</div></div>
<div class="col-7"> <input type="text" class="form-control" id="name">
        <label for="name">giá trị</label></div>

                  </div>
                </div>

                </div>
              </li>
            </ul>
         </div>
          </div>
          <!-- Table with panel -->
        </div>

      </div>
    </main>
    <content tag="local_script">
        <script src="https://cdn.ckeditor.com/ckeditor5/35.3.2/classic/ckeditor.js"></script>
        <script src="/src/lib/mdb4/js/addons-pro/steppers.min.js"></script>
        <script src="/src/lib/ckfinder/ckfinder.js"></script>
        <script>

            $(document).ready(function () {
                $('.mdb-select').materialSelect({
                });
                // SideNav Initialization
                $('.stepper').mdbStepper();

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
