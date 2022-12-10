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

    <a href="" class="white-text mx-3">CHỈNH SỬA BỘ NHỚ</a>

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
   <table class="table border table-hover">
          <thead>

          </thead>
          <tbody>
<tr>
  <th>PhoneId</th>
  <td>
    <select class=" mdb-select mdb-select1 md-form" editable="true" searchable="Search and add here..."data-stop-refresh="false">
  <option value="" disabled selected>Choose your option</option>
  <option value="1">Option 1</option>
  <option value="2">Option 2</option>
  <option value="3">Option 3</option>
</select>
  </td>
</tr>
<tr>
  <th>CapId</th>
  <td>
     <select class="  mdb-select mdb-select2 md-form" editable="true" searchable="Search and add here..."data-stop-refresh="false">
  <option value="" disabled selected>Choose your option</option>
  <option value="1">Option 1</option>
  <option value="2">Option 2</option>
  <option value="3">Option 3</option>
</select>
  </td>
</tr>
          </tbody>
        </table>
      <!--Table-->
    </div>

  </div>

</div>
<!-- Table with panel -->
    </div>

    </div>
  </main>
  <script>
    $(document).ready(function() {

     $('.mdb-select1').materialSelect({
  });
    $('.mdb-select2').materialSelect({
  });
})
  </script>
</body>

</html>
