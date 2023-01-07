<%@ page import="vn.edu.hcmuaf.fit.model.order.Order" %>
<%@ page import="java.util.List" %>
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
<%
    List<Order> listOrder = (List<Order>) request.getAttribute("order");
%>
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
 <table class="table table-hover border">
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
  <th>ColorId</th>
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
  <th>Total</th>
  <td>
    <input id="input-char-counter1" type="number" length="10" class="form-control">
  <label for="input-char-counter1">Input text</label>
  </td>
</tr>
<tr>
  <th>img</th>
  <td>
 <form class="md-form" action="#">
  <div class="file-field">
     <div class="file-path-wrapper">
      <input class="file-path validate" type="text" placeholder="Upload one or more files">
    </div>
    <div class="btn btn-primary btn-sm float-left">
      <span>Choose files</span>
      <input type="file" multiple>
    </div>

  </div>
</form>
  </td>
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
              <div class="row col col-12 col-sm-12 col-md-12 col-lg-12 ml-auto mr-auto float-none pl-1 pr-0">
                  <div class="col col-12 p-0">
                      <!-- Classic tabs -->
                      <div class="classic-tabs">

                          <ul class="nav tabs-cyan" id="myClassicTab" role="tablist">
                              <li class="nav-item">
                                  <a class="nav-link  waves-light active show" id="profile-tab-classic" data-toggle="tab" href="#list"
                                     role="tab" aria-controls="profile-classic" aria-selected="true">Profile</a>
                              </li>
                              <li class="nav-item">
                                  <a class="nav-link waves-light" id="follow-tab-classic" data-toggle="tab" href="#analysis" role="tab"
                                     aria-controls="follow-classic" aria-selected="false">Follow</a>
                              </li>

                          </ul>
                          <div class="tab-content border-right border-bottom border-left rounded-bottom" id="myClassicTabContent">
                              <div class="tab-pane fade active show" id="list" role="tabpanel" aria-labelledby="profile-tab-classic">
                                  <div class="tab-pane fade in show active" id="list" role="tabpanel">


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
                                                          id
                                                      </th>
                                                      <th class="th-lg">
                                                          payment
                                                      </th>
                                                      <th class="th-lg">
                                                          total
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
                                                      for (int i = 0; i <listOrder.size() ; i++) {


                                                  %>
                                                  <tr>
                                                      <th scope="row">
                                                          <input class="form-check-input" type="checkbox" id="checkbox1">
                                                          <label class="form-check-label" for="checkbox1" class="label-table"></label>
                                                      </th>
                                                      <td><%=i%></td>
                                                      <td><%=listOrder.get(i).getId()%></td>
                                                      <td><%=listOrder.get(i).getPayment()%></td>
                                                      <td><%=listOrder.get(i).getTotal()%></td>

                                                      <td>
                                                          <a href=""data-toggle="modal" data-target="#modalinfo"><i class="fa-regular fa-eye"></i></a>
                                                          <a href=""><i class="far fa-edit"></i></a>
                                                          <a href=""data-toggle="modal" data-target="#modalConfirmDelete"><i class="far fa-trash-alt"></i></a>
                                                      </td>

                                                  </tr>
<% }%>
                                                  </tbody>
                                                  <!--Table body-->
                                              </table>
                                              <!--Table-->
                                          </div>

                                      </div>


                                  </div>
                              </div>
                              <div class="tab-pane fade" id="analysis" role="tabpanel" aria-labelledby="follow-tab-classic">
                                  <div class="card">
                                      <div class="card-body mr-md-1">

                                          <!--Grid row-->
                                          <div class="row mb-3">

                                              <!--Grid column-->
                                              <div class="col-md-8 mb-4">

                                                  <canvas id="barChart" height="100"></canvas>

                                              </div>
                                              <!--Grid column-->

                                              <!--Grid column-->
                                              <div class="col-md-4 mb-1 mb-md-0">

                                                  <h5 class="text-center font-weight-bold mb-4">E-commerce data</h5>

                                                  <div class="d-flex justify-content-between">
                                                      <small class="text-muted">Add products to cart</small>
                                                      <small><span><strong>160</strong></span>/<span></span>200</small>
                                                  </div>
                                                  <div class="progress md-progress">
                                                      <div class="progress-bar bg-success" role="progressbar" style="width: 55%" aria-valuenow="55"
                                                           aria-valuemin="0" aria-valuemax="100"></div>
                                                  </div>

                                                  <div class="d-flex justify-content-between">
                                                      <small class="text-muted">Complete Purchase</small>
                                                      <small><span><strong>310</strong></span>/<span></span>400</small>
                                                  </div>
                                                  <div class="progress md-progress">
                                                      <div class="progress-bar bg-info" role="progressbar" style="width: 80%" aria-valuenow="80"
                                                           aria-valuemin="0" aria-valuemax="100"></div>
                                                  </div>

                                                  <div class="d-flex justify-content-between">
                                                      <small class="text-muted">Visit Premium Page</small>
                                                      <small><span><strong>480</strong></span>/<span></span>800</small>
                                                  </div>
                                                  <div class="progress md-progress">
                                                      <div class="progress-bar bg-warning" role="progressbar" style="width: 45%" aria-valuenow="45"
                                                           aria-valuemin="0" aria-valuemax="100"></div>
                                                  </div>

                                                  <div class="d-flex justify-content-between">
                                                      <small class="text-muted">Send Inquiries</small>
                                                      <small><span><strong>250</strong></span>/<span></span>500</small>
                                                  </div>
                                                  <div class="progress md-progress">
                                                      <div class="progress-bar bg-danger" role="progressbar" style="width: 100%" aria-valuenow="100"
                                                           aria-valuemin="0" aria-valuemax="100"></div>
                                                  </div>

                                              </div>
                                              <!--Grid column-->

                                          </div>
                                          <!--Grid row-->

                                          <!--Grid row-->
                                          <div class="row text-center">

                                              <!--Grid column-->
                                              <div class="col-md-4 mb-4 mb-md-0">

                                                  <p class="text-success mb-1"><i class="fas fa-caret-up mr-2"></i>17%</p>
                                                  <p class="font-weight-bold mb-1">$35 210</p>
                                                  <p class="text-uppercase mb-md-0">Sales</p>

                                              </div>
                                              <!--Grid column-->

                                              <!--Grid column-->
                                              <div class="col-md-4 mb-4 mb-md-0">

                                                  <p class="text-danger mb-1"><i class="fas fa-caret-down mr-2"></i>17%</p>
                                                  <p class="font-weight-bold mb-1">4 578</p>
                                                  <p class="text-uppercase mb-md-0">Subscriptions</p>

                                              </div>
                                              <!--Grid column-->

                                              <!--Grid column-->
                                              <div class="col-md-4 mb-0">

                                                  <p class="text-dark mb-1"><i class="fas fa-caret-left mr-2"></i>0%</p>
                                                  <p class="font-weight-bold mb-1">678 934</p>
                                                  <p class="text-uppercase mb-0">Traffic</p>

                                              </div>
                                              <!--Grid column-->

                                          </div>
                                          <!--Grid row-->

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
          //bar
          var ctxB = document.getElementById("barChart").getContext('2d');
          var myBarChart = new Chart(ctxB, {
              type: 'bar',
              data: {
                  labels: ["Red", "Blue", "Yellow", "Green", "Purple", "Orange"],
                  datasets: [{
                      label: '# of Votes',
                      data: [12, 19, 3, 5, 2, 3],
                      backgroundColor: [
                          'rgba(255, 99, 132, 0.2)',
                          'rgba(54, 162, 235, 0.2)',
                          'rgba(255, 206, 86, 0.2)',
                          'rgba(75, 192, 192, 0.2)',
                          'rgba(153, 102, 255, 0.2)',
                          'rgba(255, 159, 64, 0.2)'
                      ],
                      borderColor: [
                          'rgba(255,99,132,1)',
                          'rgba(54, 162, 235, 1)',
                          'rgba(255, 206, 86, 1)',
                          'rgba(75, 192, 192, 1)',
                          'rgba(153, 102, 255, 1)',
                          'rgba(255, 159, 64, 1)'
                      ],
                      borderWidth: 1
                  }]
              },
              options: {
                  scales: {
                      yAxes: [{
                          ticks: {
                              beginAtZero: true
                          }
                      }]
                  }
              }
          });
      </script>
  </content>
</body>

</html>
