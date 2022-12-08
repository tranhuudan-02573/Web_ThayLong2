<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/lib/fa6/fontawesome-free-6.2.0-web/css/all.min.css">

  <!-- Bootstrap core CSS -->
  <link rel="stylesheet" href="/lib/mdb4/css/bootstrap.min.css">
  <!-- Material Design Bootstrap -->
  <link rel="stylesheet" href="/lib/mdb4/css/mdb.min.css">
  <!-- Your custom styles (optional) -->
  <link rel="stylesheet" href="/lib/mdb4/css/style.css">

 	<!-- <link rel="stylesheet" type="text/css" href="/css/owl.theme.default.min.css"> -->
	<!-- <link rel="stylesheet" type="text/css" href="/css/hover-min.css"> -->
	<link rel="stylesheet" type="text/css" href="/css/product.css">
	<link rel="stylesheet" type="text/css" href="/css/custom.css">
  </head>

  <body>
  <jsp:include page="layout/header.jsp"/>

  <main>
    <div class="container">
      <section class="py-5">
  		<div class="row justify-content-md-center">
						<div class="col-xl-6 p-4 ">


						 <div class="card">
               <div class="card-header text-white text-center bg-danger text-uppercase font-weight-bold ">
		   <h3 class="mt-2"> reset mật khẩu tài khoản</h3>
		 </div>
            <div class="card-body">
              <!-- Header -->
              <!-- Body -->
        <form action="">


										<!-- Material input -->
										<div class="md-form">
											<i class="fas fa-envelope prefix text-danger"></i>
											<input type="email" id="email" class="form-control validate" required>
											<label for="email" data-error="wrong" data-success="right">Email</label>
										</div>

										<div class="md-form mb-4">
											<i class="fas fa-lock prefix text-danger"></i>
											<input type="password" id="pass" class="form-control validate" required>
											<label data-error="wrong" data-success="right" for="pass">Mật khẩu mới</label>
										</div>
										<div class="md-form mb-4">
											<i class="fa-solid fa-repeat prefix text-danger"></i>
											<input type="password" id="repass" class="form-control validate " required>
											<label data-error="wrong" data-success="right" for="repass">Nhập lại mật khẩu</label>
										</div>

										<div class=" d-flex justify-content-between align-items-center">
											<span>Đăng nhập bằng tài khoản khác? <a href="/index.jsp" target="_blank"
													class="text-danger">Đăng nhập</a></span>
											<button class="btn btn-danger waves-effect">cập nhật</button>
										</div>
									</form>
            </div>
          </div>


						</div>

					</div>

      </section>
    </div>
  </main>

  <jsp:include page="layout/footer.jsp"/>

  <!-- jQuery -->
  <script type="text/javascript" src="/lib/mdb4/js/jquery.min.js"></script>
  <!-- Bootstrap tooltips -->
  <script type="text/javascript" src="/lib/mdb4/js/popper.min.js"></script>
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="/lib/mdb4/js/bootstrap.min.js"></script>
  <!-- MDB core JavaScript -->
  <script type="text/javascript" src="/lib/mdb4/js/mdb.min.js"></script>

  </body>


</html>
