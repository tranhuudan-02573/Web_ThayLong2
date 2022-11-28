<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Document</title>
		<link rel="stylesheet" href="/lib/mdb4/css/bootstrap.min.css">
		<link rel="stylesheet" href="/lib/mdb4/css/mdb.min.css">
		<link rel="stylesheet" type="text/css" href="/css/owl.carousel.min.css">
		<link rel="stylesheet" href="/lib/fa6/fontawesome-free-6.2.0-web/css/all.min.css">
		<link rel="stylesheet" type="text/css" href="/css/owl.theme.default.min.css">
		<link rel="stylesheet" type="text/css" href="/css/hover-min.css">
		<link rel="stylesheet" type="text/css" href="/css/product.css">
		<link rel="stylesheet" type="text/css" href="/css/custom.css">
	</head>

	<body>

	<jsp:include page="layout/header.jsp"/>

		<main>
			<div class="container mx-auto">
				<jsp:include page="layout/breadcrumb.jsp"/>
				<section class="my-5 dark-grey-text">



					<!--Grid row-->
					<div class="row">

						<!--Grid column-->
						<div class="col-lg-8">
							<div class="card">
								<div class="card-header red-text  text-center">
                <h5 class="font-weight-500 my-1 text-uppercase">Thông tin khách hàng</h5>
              </div>
								<div class="card-body">


									<!-- Pills panels -->



											<!--Card content-->
											<form>
												<div class="mb-2">

													<div class="my-2">
														<div class="form-check form-check-inline ">
															<input type="radio" class="form-check-input"
																id="materialInline1" checked name="inlineMaterialRadiosExample">
															<label class="form-check-label"
																for="materialInline1">nam</label>
															<!-- Material inline 2 -->
														</div>
														<div class="form-check form-check-inline ">
															<input type="radio" class="form-check-input"
																id="materialInline2" name="inlineMaterialRadiosExample">
															<label class="form-check-label"
																for="materialInline2">nữ</label>
														</div>
													</div>
												</div>
												<!--Grid row-->
												<div class="row my-4">
													<div class="col-6 m-0">
														<!-- Material input -->
														<div class="md-form m-0">
															<i class="fas fa-user prefix text-danger"></i>

															<input type="text" id="name" class="form-control">
															<label for="email">Tên khách hàng</label>
														</div>
													</div>
													<div class="col-6 m-0">
														<!-- Material input -->
														<div class="md-form  m-0">
															<i class="fa-solid fa-phone prefix text-danger"></i>
															<input type="text" id="phone" class="form-control">
															<label for="phone">Số điện thoại</label>
														</div>
													</div>
												</div>
												<!--Grid row-->

												<!--Username-->
												<div class="md-form">
													<i class="fa-solid fa-address-card prefix text-danger"></i>
													<input type="text" id="address" class="form-control">
													<label for="address">Địa chỉ</label>
												</div>
													<div class="md-form">
		<i class="fa-solid fa-envelope prefix text-danger"></i>
													<input type="text" id="email" class="form-control">
													<label for="email">Email</label>
												</div>


												<div class="my-2">
													<input type="checkbox" class="form-check-input "
														id="chekboxRules">

													<label class="form-check-label" for="chekboxRules">Tôi đã đồng ý với các điều khoản và điều kiện</label>
												</div>
												<div class="my-2">
													<input type="checkbox" class="form-check-input "
														id="safeTheInfo">
													<label class="form-check-label" for="safeTheInfo">Lưu thông tin đơn hàng</label>
												</div>


											</form>

								</div>
							</div>
						</div>
						<!--Grid column-->

						<!--Grid column-->
						<div class="col-lg-4 mb-4">

								<div class="input-group input-group-md mb-4 input-group-lg">
									<input type="text" class="form-control " placeholder="Nhập mã giảm giá" aria-label="code"
										aria-describedby="button-addon2">
									<div class="input-group-append">
										<button
											class="btn btn-md btn-outline-default m-0 px-3 py-2 z-depth-0 waves-effect"
											type="button" id="button-addon2">Áp dụng</button>
									</div>
								</div>

							<!--Card-->
							<div class="card ">
	<div class="card-header red-text r text-center">
										<h5 class="font-weight-500 my-1 text-uppercase">Tóm tắt đơn hàng</h5>
									</div>
								<!--Card content-->
								<div class="card-body">


									<dl class="row">
										<dd class="col-sm-8">
											MDBootstrap UI KIT (jQuery version) - License 6-10 poeple +
											unlimited projects
										</dd>
										<dd class="col-sm-4">
											$ 2000
										</dd>
									</dl>

									<hr>



									<dl class="row">
										<dt class="col-sm-8">
											Tổng
										</dt>
										<dt class="col-sm-4">
											$ 2000
										</dt>
									</dl>
									<button class="btn btn-danger waves-effect btn-lg btn-block" type="submit">Thanh toán</button>
								</div>

							</div>
							<!--/.Card-->



						</div>
						<!--Grid column-->

					</div>
					<!--Grid row-->



				</section>


			</div>

		</main>

	<jsp:include page="layout/footer.jsp"/>


		<script>$(document).ready(function () {
				$('.mdb-select').material_select();
			});</script>
		<script type="text/javascript" src="/lib/mdb4/js/jquery.min.js"></script>
		<script src="/lib/mdb4/js/popper.min.js"></script>
		<script src="/lib/mdb4/js/mdb.min.js"></script>
		<script src="/lib/mdb4/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="/js/owl.carousel.min.js"></script>
		<script type="text/javascript" src="/js/product.js"></script>
	</body>

</html>
