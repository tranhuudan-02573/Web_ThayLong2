<%@ page import="vn.edu.hcmuaf.fit.model.phone.Color" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<c:url var="APIurl" value="/api/color"/>
<c:url var ="ColorURL" value="/admin/manage/color"/>
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

    <a href="" class="white-text mx-3 text-uppercase ">danh sách color</a>

    <div>
      <button type="button" class="btn btn-outline-white btn-rounded btn-sm px-2">
       <i class="fa-solid fa-rotate-left"></i>
      </button>
      <a href="${pageContext.request.contextPath}/admin/manage/color/edit" class="btn btn-outline-white btn-rounded btn-sm px-2">
     <i class="fa-solid fa-plus"></i>
      </a>
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
<div class="modal fade" id="viewDetail" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
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
              <th>id</th>
                 <td class="font-weight-normal align-left-10 detail-id"></td>
            </tr>
                 <tr>
              <th>Name</th>
               <td class="font-weight-normal align-left-10 detail-name"></td>
               </tr>
               <tr>

                  <th>created_at </th>
                   <td class="font-weight-normal align-left-10 detail-created_at"> </td>
                   </tr>
                   <tr>
                  <th> updated_at</th>
                   <td class="font-weight-normal align-left-10 detail-updated_at"> </td>
                   </tr>
                   <tr>
          </tbody>
        </table>

      </div>
      <!--Footer-->
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-default text-uppercase" data-dismiss="modal">close</button>
        <a href="" class="btn btn-default text-uppercase edit">chỉnh sửa</a>
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
      <table id="tableData" class="table border table-hover mb-0">

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
             created_at
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
       <%

           List<Color> colors = (   List<Color> )request.getAttribute("colors");

           for (int i =0;i<colors.size();i++){
       %>
          <tr>
            <th scope="row">
              <input class="form-check-input" type="checkbox" id="checkbox-<%=colors.get(i).getId()%>">
              <label class="form-check-label" for="checkbox-<%=colors.get(i).getId()%>" class="label-table"></label>
            </th>
              <td><%=i%></td>
            <td><%=colors.get(i).getId()%></td>
            <td><%=colors.get(i).getName()%></td>
            <td><%=colors.get(i).getCreated_at()%></td>
            <td><%=colors.get(i).getUpdated_at()%></td>

            <td>
             <i class="fa-regular fa-eye view-detail" val="<%=colors.get(i).getId()%>"></i>
              <a href="${pageContext.request.contextPath}/admin/manage/color/edit?id=<%=colors.get(i).getId()%>"><i class="far fa-edit"></i></a>

              <a href="" data-toggle="modal" data-target="#modalConfirmDelete"><i class="far fa-trash-alt"></i></a>
            </td>

          </tr>
        <%}%>
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


              $('#tableData tbody').on('click', 'i.view-detail', function () {
                  $('#viewDetail').modal();
                  view(parseInt($(this).attr('val')));
              });

              function view(id) {
                  $.ajax({
                      url: "/api/color?id="+id,
                      type: 'GET',
                      contentType: 'application/json'
                  }).done(function (responseText) {

                      $('#viewDetail .detail-id').text(responseText.id);
                      $('#viewDetail .detail-name').text(responseText.name);
                      $('#viewDetail .detail-created_at').text(responseText.created_at);
                      $('#viewDetail .detail-updated_at').text(responseText.updated_at);
                      $('#viewDetail .edit').attr('href', '/admin/manage/color/edit?id='+id);
                  }).fail(function (jqXHR, status, error) {
                      if (jqXHR.status !== 500) {
                          alert(" loi server");
                      } else alert("da xay ra loi");
                  })
              }



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
