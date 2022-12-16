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


 <!-- Central Modal Medium Success -->

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

    <a href="" class="white-text mx-3 text-uppercase ">danh sách điện thoại</a>

    <div>
      <button type="button" class="btn btn-outline-white btn-rounded btn-sm px-2">
       <i class="fa-solid fa-rotate-left"></i>
      </button>
      <a href="/src/views/admin/manaphones/create.html" class="btn btn-outline-white btn-rounded btn-sm px-2">
     <i class="fa-solid fa-plus"></i>
      </a>
      <button type="button" class="btn btn-outline-white btn-rounded btn-sm px-2">
       <i class="fa-solid fa-file-arrow-down"></i>
      </button>
    </div>

  </div>
  <!--/Card image-->

<!-- Modal: modalCart -->

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
             img
            </th>
            <th class="th-lg">
             name
            </th>
            <th class="th-lg">
              author
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
            <th>1</th>
            <th>1</th>
            <td><img src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-vang-thumb-200x200.jpg" width="70px" height="70px" class="img-fluid " alt=""></td>
            <td>iphone 14</td>
            <td>Mark</td>
            <td>12/12/2012</td>
            <td>
              <a href="/src/views/admin/manaphones/detail.html"><i class="fa-regular fa-eye"></i></a>
              <a href="/src/views/admin/manaphones/edit.html"><i class="far fa-edit"></i></a>
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
     <script>
         $(document).ready(function() {
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
