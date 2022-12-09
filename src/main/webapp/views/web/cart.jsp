<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Document</title>
		<link rel="stylesheet" type="text/css" href="/css/owl.carousel.min.css">
		<link rel="stylesheet" href="/lib/fa6/fontawesome-free-6.2.0-web/css/all.min.css">
		<link rel="stylesheet" href="/lib/mdb4/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="/css/owl.theme.default.min.css">
		<link rel="stylesheet" type="text/css" href="/css/hover-min.css">
		<link rel="stylesheet" type="text/css" href="/css/product.css">
		<link rel="stylesheet" href="/lib/mdb4/css/mdb.min.css">
		<link rel="stylesheet" href="/lib/mdb4/css/addons/datatables.min.css">
		<link rel="stylesheet" type="text/css" href="/css/custom.css">

		<style>
			.number-input input[type="number"] {
  -webkit-appearance: textfield;
  -moz-appearance: textfield;
  appearance: textfield;
}

.number-input input[type=number]::-webkit-inner-spin-button,
.number-input input[type=number]::-webkit-outer-spin-button {
  -webkit-appearance: none;
}

.number-input {
  display: flex;
  justify-content: space-around;
  align-items: center;
}

.number-input button {
  -webkit-appearance: none;
  background-color: transparent;
  border: none;
  align-items: center;
  justify-content: center;
  cursor: pointer;
  margin: 0;
  position: relative;
}

.number-input button:before,
.number-input button:after {
  display: inline-block;
  position: absolute;
  content: '';
  height: 2px;
  transform: translate(-50%, -50%);
}

.number-input button.plus:after {
  transform: translate(-50%, -50%) rotate(90deg);
}

.number-input input[type=number] {
  text-align: center;
}

.number-input.number-input {
  border: 1px solid #ced4da;
  width: 10rem;
  border-radius: .25rem;
}

.number-input.number-input button {
  width: 2.6rem;
  height: .7rem;
}

.number-input.number-input button.minus {
  padding-left: 10px;
}

.number-input.number-input button:before,
.number-input.number-input button:after {
  width: .7rem;
  background-color: #495057;
}

.number-input.number-input input[type=number] {
  max-width: 4rem;
  padding: .5rem;
  border: 1px solid #ced4da;
  border-width: 0 1px;
  font-size: 1rem;
  height: 2rem;
  color: #495057;
}

@media not all and (min-resolution:.001dpcm) {
  @supports (-webkit-appearance: none) and (stroke-color:transparent) {

    .number-input.def-number-input.safari_only button:before,
    .number-input.def-number-input.safari_only button:after {
      margin-top: -.3rem;
    }
  }
}
		</style>
	</head>

	<body>

		<button type="button" class="btn btn-danger btn-floating " id="btn-back-to-top" style=" position: fixed;
  bottom: 20px;
  right: 20px;
  display: none;">
			<i class="fas fa-arrow-up"></i>
		</button>
		<!--Main Navigation-->
		<header>


			<main>
				<div class="container">
					<div id="breadcrumb"></div>
					<section class="my-5">

						<div class="row">
							<div class="col-12">
								<div class="card">
									<div class="card-body">

											<table id="dtMaterialDesignExample" class="table table-striped" cellspacing="0" width="100%">
												<thead>
													<tr>
														<th scope="col">#</th>
														<th scope="col">tên sản phẩm</th>
														<th scope="col">hình ảnh</th>
														<th scope="col">màu sắc</th>
														<th scope="col">giá</th>
														<th scope="col">số lượng</th>
														<th scope="col">trạng thái</th>
														<th scope="col">thao tác</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<th scope="row" class="align-middle justify-content-center">1
														</th>
														<td class="align-middle justify-content-center"
															style="max-width: 15%;">Ipone14 dassslorem100</td>
														<td><img style="width: 70px; height: 70px;"
																src="https://cdn.tgdd.vn/Products/Images/42/210652/iphone-11-pro-512gb-white-600x600.jpg"
																alt=""></td>
														<td class="align-middle justify-content-center">

															<select>
																<option value="1">đỏ</option>
																<option value="2">đen</option>
																<option value="3">xanh</option>
															</select>

															<!--/Blue select-->
														</td>
														<td class="align-middle justify-content-center">36000000.VND
														</td>
														<td class="align-middle justify-content-center">

															<div class="def-number-input number-input safari_only">
  <button onclick="this.parentNode.querySelector('input[type=number]').stepDown()" class="minus"></button>
  <input class="quantity" min="0" name="quantity" value="1" type="number">
  <button onclick="this.parentNode.querySelector('input[type=number]').stepUp()" class="plus"></button>
</div>

															</td>
														<td class="align-middle justify-content-center">Còn hàng</td>
														<td class="justify-content-center align-middle">
															<div class="text-center"><button
																class="btn btn-outline-danger btn-sm btn-rounded">xóa
																khỏi giỏ hàng</button></div>
															<div class="text-center"><button class="btn btn-outline-info btn-sm btn-rounded">thêm
																vào yêu thích
															</button></div>
														</td>

													</tr>


												</tbody>
											</table>

									</div>
								</div>
							</div>



			</div>

			</section>

					<section class="my-5">
						<div class="row">

							<div class="col-4 ml-auto">
								<div class="card ">
									<div class="card-header red-text  text-center">
										<h5 class="font-weight-500 my-1 text-uppercase">tổng giỏ hàng</h5>
									</div>
									<div class="card-body ">


										<table class="table table-bordered table-striped mb-0">

											<tbody>
												<tr>
													<th scope="row">thuế VAT</th>
													<td>543</td>
												</tr>

												<tr>
													<th scope="row">ship fee</th>
													<td>432</td>
												</tr>
												<tr>
													<th scope="row">tạm tính</th>
													<td>132321546312541</td>
												</tr>

												<tr>
													<th scope="row">tổng</th>
													<td>542</td>
												</tr>

											</tbody>
										</table>
										<hr>
										<a class="btn btn-danger waves-effect btn-lg btn-block"
											type="submit" href="/views/web/checkout.jsp.jsp" >đặt hàng</a>
									</div>
								</div>
							</div>
						</div>
					</section>


				</div>

			</main>



			<script type="text/javascript" src="/lib/mdb4/js/jquery.min.js"></script>
			<script src="/lib/mdb4/js/popper.min.js"></script>
			<script src="/lib/mdb4/js/bootstrap.min.js"></script>
			<script src="/lib/mdb4/js/mdb.min.js"></script>
			<script type="text/javascript" src="/js/owl.carousel.min.js"></script>
			<script type="text/javascript" src="/js/product.js"></script>

			<script src="/lib/mdb4/js/addons/datatables.min.js"></script>
			<script>
				// Material Design example
$(document).ready(function () {
  $('#dtMaterialDesignExample').DataTable();
  $('#dtMaterialDesignExample_wrapper').find('label').each(function () {
    $(this).parent().append($(this).children());
  });
  $('#dtMaterialDesignExample_wrapper .dataTables_filter').find('input').each(function () {
    const $this = $(this);
    $this.attr("placeholder", "Search");
    $this.removeClass('form-control-sm');
  });
  $('#dtMaterialDesignExample_wrapper .dataTables_length').addClass('d-flex flex-row');
  $('#dtMaterialDesignExample_wrapper .dataTables_filter').addClass('md-form');
  $('#dtMaterialDesignExample_wrapper select').removeClass(
  'custom-select custom-select-sm form-control form-control-sm');
  $('#dtMaterialDesignExample_wrapper select').addClass('mdb-select');
  $('#dtMaterialDesignExample_wrapper .mdb-select').materialSelect();
  $('#dtMaterialDesignExample_wrapper .dataTables_filter').find('label').remove();
  $('#dtMaterialDesignExample_paginate .pagination').addClass('pg-red');
});


			</script>
	</body>

</html>
