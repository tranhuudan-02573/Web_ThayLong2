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

	<body>

		<main class="">
			<div class="container ">
				<section class="my-5 ">

					<div class="row justify-content-md-center">
						<div class="col-xl-6 p-4 ">

	 <div class="card">
		 <div class="card-header text-white text-center bg-danger text-uppercase font-weight-bold ">
		   <h4 class="mt-2"> đăng ký tài khoản</h4>
		 </div>
            <div class="card-body">
              <!-- Header -->
              <!-- Body -->
             <form action=" ">
										<div class="md-form mb-5">
											<i class="fas fa-user prefix text-danger"></i>
											<input type="text" id="name" class="form-control validate " required>
											<label data-error="wrong" data-success="right" for="name">Họ và tên</label>
										</div>


										<div class="md-form mb-5">
											<i class="fa-solid fa-phone prefix text-danger"></i>
											<input type="text" id="phone" class="form-control validate" required>
											<label data-error="wrong" data-success="right" for="phone">Số điện thoại</label>
										</div>
										<div class="md-form mb-5">
											<i class="fa-solid fa-address-card prefix text-danger"></i>
											<input type="text" id="address" class="form-control validate" required>
											<label data-error="wrong" data-success="right" for="address">Địa chỉ</label>
										</div>

										<!-- Material input -->
										<div class="md-form">
											<i class="fas fa-envelope prefix text-danger"></i>
											<input type="email" id="email" class="form-control validate" required>
											<label for="email" data-error="wrong" data-success="right">Email</label>
										</div>

										<div class="md-form mb-4">
											<i class="fas fa-lock prefix text-danger"></i>
											<input type="password" id="pass" class="form-control validate" required>
											<label data-error="wrong" data-success="right" for="pass">Mật khẩu</label>
										</div>
										<div class="md-form mb-4">
											<i class="fa-solid fa-repeat prefix text-danger"></i>
											<input type="password" id="repass" class="form-control validate " required>
											<label data-error="wrong" data-success="right" for="repass">Nhập lại mật khẩu</label>
										</div>

										<div class=" d-flex justify-content-between align-items-center">
											<span>Bạn đã có tài khoản? <a href="/src/index.html" target="_blank"
													class="text-danger">Đăng nhập</a></span>
											<button class="btn btn-danger waves-effect">Đăng ký</button>
										</div>
									</form>
            </div>
          </div>




						</div>

					</div>

			</div>

			</section>

			</div>

		</main>







	</body>

</html>
