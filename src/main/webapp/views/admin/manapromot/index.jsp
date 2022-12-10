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


 <!-- Central Modal Medium Success -->
 <div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
   aria-hidden="true">
   <div class="modal-dialog modal-notify modal-warning" role="document">
     <!--Content-->
     <div class="modal-content">
       <!--Header-->
       <div class="modal-header">
         <p class="heading lead">Thêm mới</p>

         <button type="button" class="close" data-dismiss="modal" aria-label="Close">
           <span aria-hidden="true" class="white-text">&times;</span>
         </button>
       </div>

       <!--Body-->
       <div class="modal-body">
 <table class="table table-hover border ">
          <thead>

          </thead>
          <tbody>
<tr>
  <th>PhoneId</th>
  <td>
    <select class="mdb-select md-form" editable="true" searchable="Search and add here..."data-stop-refresh="false">
  <option value="" disabled selected>Choose your option</option>
  <option value="1">Option 1</option>
  <option value="2">Option 2</option>
  <option value="3">Option 3</option>
</select>
  </td>
</tr>
<tr>
  <th>PromotId</th>
  <td>
     <select class="mdb-select md-form" editable="true" searchable="Search and add here..."data-stop-refresh="false">
  <option value="" disabled selected>Choose your option</option>
  <option value="1">Option 1</option>
  <option value="2">Option 2</option>
  <option value="3">Option 3</option>
</select>
  </td>
</tr>
<tr>
 <tr>
              <th>Start_at</th>
               <td> <div class="md-form md-outline input-with-post-icon datepicker">
  <input placeholder="Select date" type="date" id="example" class="form-control">
  <label for="example">Try me...</label>
</div></td>
               </tr>
</tr>
 <tr>
              <th>End_at</th>
               <td> <div class="md-form md-outline input-with-post-icon datepicker">
  <input placeholder="Select date" type="date" id="example" class="form-control">
  <label for="example">Try me...</label>
</div></td>
               </tr>
</tr>

          </tbody>
        </table>
       </div>

       <!--Footer-->
       <div class="modal-footer justify-content-center">
         <a type="button" data-toggle="modal" data-target="#centralModalSuccess" class="btn btn-warning">Create</a>
         <a type="button" class="btn btn-outline-warning waves-effect" data-dismiss="modal">cancel</a>
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

    <a href="" class="white-text mx-3" >DANH SÁCH KHUYẾN MÃI</a>

    <div>
      <button type="button" class="btn btn-outline-white btn-rounded btn-sm px-2">
       <i class="fa-solid fa-rotate-left"></i>
      </button>
      <button data-toggle="modal" data-target="#add" type="button" class="btn btn-outline-white btn-rounded btn-sm px-2">
     <i class="fa-solid fa-plus"></i>
      </button>
      <button type="button" class="btn btn-outline-white btn-rounded btn-sm px-2">
       <i class="fa-solid fa-file-arrow-down"></i>
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

       <table  class="table border  table-hover" >
          <thead>

          </thead>
          <tbody>

              <tr>
              <th>#</th>
                 <td>111</td>
            </tr>
                 <tr>
              <th>PhoneId</th>
               <td>001</td>
               </tr>
               <tr>
              <th>PromotId</th>
               <td>123</td>
               </tr>
               <tr>
              <th>Updated_at</th>
               <td>12/11/2020</td>
               </tr>
               <tr>
               <th>Create_at</th>
                <td>03/12/2017</td>
                </tr>
                 <tr>
               <th>start_at</th>
                <td>03/12/2017</td>
                </tr>
                 <tr>
               <th>end_at</th>
                <td>03/12/2017</td>
                </tr>
          </tbody>
        </table>

      </div>
      <!--Footer-->
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-default" data-dismiss="modal">xóa</button>
        <a href="/src/views/admin/manapromot/edit.html" class="btn btn-default">chỉnh sửa</a>
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
      <table id="detail" class="table table-hover border mb-0">

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
              PhoneID
            </th>
            <th class="th-lg">
             PromotId
            </th>
             <th class="th-lg">
             Start-at
            </th>
             <th class="th-lg">
              Updated_at
            </th>
             <th class="th-lg">
               Action
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
            <td>111</td>
             <td> 011</td>
            <td>001</td>
            <td>02/11/2013</td>

            <td>03/04/2017</td>
            <td>
              <a href=""data-toggle="modal" data-target="#modalinfo"><i class="fa-regular fa-eye"></i></a>
              <a href="/src/views/admin/manapromot/edit.html"><i class="far fa-edit"></i></a>

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
  <script src="/src/js/admin/form.js"></script>
  <script>
    $(document).ready(function() {
       $('.mdb-select').materialSelect({
  });
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
</body>

</html>
