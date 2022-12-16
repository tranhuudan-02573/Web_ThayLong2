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


 <!-- Central Modal Medium Success -->
 <div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
   aria-hidden="true">
   <div class="modal-dialog modal-notify modal-warning" role="document">
     <!--Content-->
     <div class="modal-content">
       <!--Header-->
       <div class="modal-header">
         <p class="heading lead text-uppercase">thêm người dùng</p>

         <button type="button" class="close" data-dismiss="modal" aria-label="Close">
           <span aria-hidden="true" class="white-text">&times;</span>
         </button>
       </div>

       <!--Body-->
       <div class="modal-body">
 <table class="table table-hover border">
          <thead>

          </thead>
          <tbody>


                 <tr>
              <th>name</th>
               <td> <input id="input-char-counter1" type="text" length="10" class="form-control">
  <label for="input-char-counter1"></label></td>
               </tr>
               <tr>
              <th>address</th>
               <td> <input id="input-char-counter2" type="text" length="10" class="form-control">
  <label for="input-char-counter2"></label></td>
               </tr>
               <tr>
              <th>gender</th>
               <td>

<!-- Material inline 2 -->
<div class="form-check form-check-inline">
  <input type="radio" class="form-check-input" id="materialInline2" name="inlineMaterialRadiosExample">
  <label class="form-check-label" for="materialInline2">Nam</label>
</div>

<!-- Material inline 3 -->
<div class="form-check form-check-inline">
  <input type="radio" class="form-check-input" id="materialInline3" name="inlineMaterialRadiosExample">
  <label class="form-check-label" for="materialInline3">Nữ</label>
</div>


               </td>
               </tr>
               <tr>
               <th>email</th>
                <td><input id="input-char-counter4" type="text" length="10" class="form-control">
  <label for="input-char-counter4"></label></td></td>
                </tr>
                <tr>
                <th>active</th>
                 <td><div class="custom-control custom-switch">
  <input type="checkbox" class="custom-control-input" id="customSwitches">
  <label class="custom-control-label" for="customSwitches"></label>
</div></td>
                 </tr>
                 <tr>
                 <th>permission</th>
                  <td><div class="form-check form-check-inline">
  <input type="radio" class="form-check-input" id="materialInline1" name="inlineMaterialRadiosExample">
  <label class="form-check-label" for="materialInline1">user mod</label>
</div>

<!-- Material inline 2 -->
<div class="form-check form-check-inline">
  <input type="radio" class="form-check-input" id="materialInline2" name="inlineMaterialRadiosExample">
  <label class="form-check-label" for="materialInline2">admin</label>
</div>

<!-- Material inline 3 -->
<div class="form-check form-check-inline">
  <input type="radio" class="form-check-input" id="materialInline3" name="inlineMaterialRadiosExample">
  <label class="form-check-label" for="materialInline3">admin 2</label>
</div></td>
                  </tr>
                  <tr>
                  <th>status</th>
                   <td><input id="input-char-counter5" type="text" length="10" class="form-control">
  <label for="input-char-counter5"></label></td>
                   </tr>


          </tbody>
        </table>
       </div>

       <!--Footer-->
       <div class="modal-footer justify-content-center">
         <a type="button" data-toggle="modal" data-target="#centralModalSuccess" class="btn btn-warning text-uppercase  ">tạo</a>
         <a type="button" class="btn btn-outline-warning waves-effect text-uppercase  " data-dismiss="modal">Hủy</a>
       </div>
     </div>
     <!--/.Content-->
   </div>
 </div>
 <!-- Central Modal Medium Success -->
 <div class="modal fade" id="centralModalSuccess" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
   aria-hidden="true">
   <div class="modal-dialog modal-notify modal-success" role="document">
     <!--Content-->
     <div class="modal-content">
       <!--Header-->
       <div class="modal-header">
         <p class="heading lead">Modal Success</p>

         <button type="button" class="close" data-dismiss="modal" aria-label="Close">
           <span aria-hidden="true" class="white-text">&times;</span>
         </button>
       </div>

       <!--Body-->
       <div class="modal-body">
         <div class="text-center">
           <i class="fas fa-check fa-4x mb-3 animated rotateIn"></i>
           <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit iusto nulla aperiam blanditiis
             ad consequatur in dolores culpa, dignissimos, eius non possimus fugiat. Esse ratione fuga, enim,
             ab officiis totam.</p>
         </div>
       </div>

       <!--Footer-->
       <div class="modal-footer justify-content-center">
         <a type="button" class="btn btn-success">Get it now <i class="far fa-gem ml-1 text-white"></i></a>
         <a type="button" class="btn btn-outline-success waves-effect" data-dismiss="modal">No, thanks</a>
       </div>
     </div>
     <!--/.Content-->
   </div>
 </div>
 <!-- Central Modal Medium Success-->
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

    <a href="" class="white-text mx-3 text-uppercase ">danh sách người dùng</a>

    <div>
      <button type="button" class="btn btn-outline-white btn-rounded btn-sm px-2">
       <i class="fa-solid fa-rotate-left"></i>
      </button>
      <button data-toggle="modal" data-target="#add" type="button" class="btn btn-outline-white btn-rounded btn-sm px-2">
     <i class="fa-solid fa-plus"></i>
      </button>
      <button type="button" id="exportjson" class="btn btn-outline-white btn-rounded btn-sm px-2">
       <i class="fa-solid fa-file-arrow-down"></i>
      </button>
      <button type="button" id="exportcsv" class="btn btn-outline-white btn-rounded btn-sm px-2">
    <i class="fa-solid fa-file-csv"></i>
      </button>
      <button type="button" id="exportpdf" class="btn btn-outline-white btn-rounded btn-sm px-2">
   <i class="fa-solid fa-file-pdf"></i>
      </button>
    </div>

  </div>
  <!--/Card image-->

<!-- Modal: modalCart -->
<div class="modal fade" id="modalinfo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog-scrollable modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <!--Header-->
      <div class="modal-header">
        <h4 class="modal-title" id="myModalLabel">thông tin chi tiết</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <!--Body-->
      <div class="modal-body">

        <table  class="table table-hover border" >
          <thead>

          </thead>
          <tbody>

              <tr>
              <th>#</th>
                 <td>da</td>
            </tr>
                 <tr>
              <th>Name</th>
               <td>da</td>
               </tr>
               <tr>
              <th>Phone</th>
               <td>da</td>
               </tr>
               <tr>
              <th>Address</th>
               <td>da</td>
               </tr>
               <tr>
               <th>Gender</th>
                <td>da</td>
                </tr>
                <tr>
                <th>Eamil</th>
                 <td>da</td>
                 </tr>
                 <tr>
                 <th>Avatar</th>
                  <td>da</td>
                  </tr>
                  <tr>
                  <th>Created_at</th>
                   <td>da</td>
                   </tr>
                   <tr>
                  <th>Updated_at</th>
                   <td>da</td>
                   </tr>
                   <tr>
                  <th>Active</th>
                   <td>da</td>
                   </tr>
                  <th>Permission</th>
                   <td>da</td>
                   </tr>
                   <tr>
                  <th>Status</th>
                   <td>da</td>
                   </tr>

          </tbody>
        </table>

      </div>
      <!--Footer-->
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-default text-uppercase" data-dismiss="modal">xóa</button>
        <a href="/src/views/admin/manausers/edit.html" class="btn btn-default text-uppercase">chỉnh sửa</a>
      </div>
    </div>
  </div>
</div>
<!-- Modal: modalCart -->
<!--Modal: modalConfirmDelete-->
<div class="modal fade" id="modalConfirmDelete" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog modal-sm modal-notify modal-danger" role="document">
    <!--Content-->
    <div class="modal-content text-center">
      <!--Header-->
      <div class="modal-header d-flex justify-content-center">
        <p class="heading">Are you sure?</p>
      </div>

      <!--Body-->
      <div class="modal-body">

        <i class="fas fa-times fa-4x animated rotateIn"></i>

      </div>

      <!--Footer-->
      <div class="modal-footer flex-center">
        <a href="" class="btn  btn-outline-danger">Yes</a>
        <a type="button" class="btn  btn-danger waves-effect" data-dismiss="modal">No</a>
      </div>
    </div>
    <!--/.Content-->
  </div>
</div>
<!--Modal: modalConfirmDelete-->
  <div class="px-4">

    <div class="table-wrapper">
      <!--Table-->
      <table id="detail" class="table border table-hover mb-0">

        <!--Table head-->
        <thead>
          <tr>
            <th>
              <input class="form-check-input" type="checkbox" id="checkbox">
              <label class="form-check-label" for="checkbox" class="mr-2 label-table"></label>
            </th>
            <th class="th-sm">
                #
            </th>
            <th class="th-sm">
              id
            </th>
            <th class="th-lg">
             name
            </th>
            <th class="th-lg">
             phone
            </th>
            <th class="th-lg">
              permission
            </th>
            <th class="th-lg">

               updated_at
            </th>
             <th class="th-lg">

               action
            </th>
          </tr>
        </thead>
        <!--Table head-->

        <!--Table body-->
        <tbody>
          <tr>
            <th scope="row">
              <input class="form-check-input" type="checkbox" id="checkbox1">
              <label class="form-check-label" for="checkbox1" class="label-table"></label>
            </th>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
            <td>
              <a href=""data-toggle="modal" data-target="#modalinfo"><i class="fa-regular fa-eye"></i></a>
              <a href="/src/views/admin/manausers/edit.html"><i class="far fa-edit"></i></a>

              <a href=""data-toggle="modal" data-target="#modalConfirmDelete"><i class="far fa-trash-alt"></i></a>
            </td>

          </tr>

        </tbody>
        <!--Table body-->
      </table>
      <!--Table-->
    </div>

  </div>

</div>
<!-- Table with panel -->
    </div>

    </div>
  </main>
  <content tag="local_script">
      <script src="/src/js/admin/form.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.2/jspdf.debug.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.2.3/jspdf.plugin.autotable.js"></script>
      <script src="/src/lib/export-table-json-csv-txt-pdf/src/tableHTMLExport.js"></script>

      <script>
          $(document).ready(function() {
              $('#exportjson').on('click',function(){
                  $("#detail").tableHTMLExport({

                      // csv, txt, json, pdf
                      type:'json',

                      // file name
                      filename:'sample.json'

                  });
              })
              $('#exportpdf').on('click',function(){
                  var doc = new jsPDF('p', 'pt', 'a4');

                  doc.autoTable({
                      html: '#detail'
                  });
                  doc.save('table.pdf');


              })
              $('#exportcsv').on('click',function(){
                  $("#detail").tableHTMLExport({

// csv, txt, json, pdf
                      type:'csv',

                      // default file name
                      filename: 'tableHTMLExport.csv',

                      // for csv
                      separator: ',',
                      newline: '\r\n',
                      trimContent: true,
                      quoteFields: true,

                      // CSS selector(s)
                      ignoreColumns: '',
                      ignoreRows: '',

                      // your html table has html content?
                      htmlContent: false,

                      // debug
                      consoleLog: false,

                  });
              })


              $('table#detail').DataTable({
                  "scrollY": "100vh",
                  "scrollCollapse": true,
                  "paging":true,
                  "pagingType": "full_numbers"
              });
              $('.dataTables_length').addClass('bs-select');
              // SideNav Initialization



          })
      </script>
  </content>
</body>

</html>
