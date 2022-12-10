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
              <a href=""><i class="far fa-edit"></i></a>
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
  <!--Main Layout-->
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
</body>

</html>
