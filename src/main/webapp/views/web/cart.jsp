<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<link rel="stylesheet" href="/src/lib/mdb4/css/addons/datatables.min.css">

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
				<section class="mb-4">

					<div class="row">
						<div class="col-12">
							<div class="card">

								<div class="card-header text-danger text-uppercase     ">
								<div class="d-flex justify-content-between   align-items-center  ">

									<strong>giỏ hàng</strong>
									<span>ngày cuối thêm vào: 20/11/2012</span>
								</div>
								</div>

								<div class="card-body">

									<table id="dtMaterialDesignExample" class="table " cellspacing="0"
										width="100%">
										<thead>
											<tr>
												<th scope="col">STT</th>
												<th scope="col">Tên sản phẩm</th>
												<th scope="col">Hình ảnh</th>
												<th scope="col">Màu sắc</th>
												<th scope="col">Giá</th>
												<th scope="col">Số lượng</th>
												<th scope="col">Trạng thái</th>
												<th scope="col">Thao tác</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th scope="row" class="align-middle justify-content-center">1
												</th>
												<td class="align-middle justify-content-center" style="max-width: 15%;">
													Ipone14 </td>
												<td><img style="width: 70px; height: 70px;"
														src="https://cdn.tgdd.vn/Products/Images/42/210652/iphone-11-pro-512gb-white-600x600.jpg"
														alt=""></td>
												<td class="align-middle justify-content-center">

													<select>
														<option value="1">Đỏ</option>
														<option value="2">Đen</option>
														<option value="3">Xanh</option>
													</select>

													<!--/Blue select-->
												</td>
												<td class="align-middle justify-content-center">36000000.VND
												</td>
												<td class="align-middle justify-content-center">

													<div class="def-number-input number-input safari_only">
														<button
															onclick="this.parentNode.querySelector('input[type=number]').stepDown()"
															class="minus btn-sm"></button>
														<input class="quantity form-control-sm" min="0" name="quantity" value="1"
															type="number">
														<button
															onclick="this.parentNode.querySelector('input[type=number]').stepUp()"
															class="plus btn-sm"></button>
													</div>

												</td>
												<td class="align-middle justify-content-center">Còn hàng</td>
												<td class="justify-content-center align-middle group-selectBTN">
													<div class="ILB mr-3" style="display: inline-block; cursor: pointer;">
														<i class="fa-regular fa-heart mr-1"></i>
														Yêu thích
													</div>
													<div class="ILB" style="display: inline-block; cursor: pointer;">
														<i class="fa-regular fa-trash-can mr-1"></i>
														Xóa
													</div>
												</td>

											</tr>


										</tbody>
									</table>

								</div>
							</div>
						</div>



					</div>

				</section>

				<section class="mb-5">
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
												<th scope="row">Thuế VAT</th>
												<td>543</td>
											</tr>
												<tr>
												<th scope="row">Tổng số lượng</th>
												<td>543</td>
											</tr>

											<tr>
												<th scope="row">Freeship</th>
												<td>432</td>
											</tr>
											<tr>
												<th scope="row">Tạm tính</th>
												<td>74.670.000 <sup>đ</sup></td>
											</tr>

											<tr>
												<th>Tổng tiền</th>
												<td>542</td>
											</tr>

										</tbody>
									</table>
									<hr>
									<a class="btn btn-danger waves-effect btn-lg btn-block" type="submit"
										href="/src/views/checkout.html">đặt hàng</a>
								</div>
							</div>
						</div>
					</div>
				</section>


			</div>



			</main>


			<script src="/src/lib/mdb4/js/addons/datatables.min.js"></script>
			<script>
				// Material Design example
$(document).ready(function () {
  $('#dtMaterialDesignExample').DataTable({
	"paging":true,
	 "pagingType": "full_numbers"
  });
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
			<script src="/src/js/breadcrumb.js"></script>
	</body>

</html>
