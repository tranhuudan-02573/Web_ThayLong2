<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta charset="UTF-8">
		<meta name="viewport"
			content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
		<title>Document</title>
		<link rel="stylesheet" href="/lib/fa6/fontawesome-free-6.2.0-web/css/all.min.css">
		<link rel="stylesheet" type="text/css" href="/css/hover-min.css">
		<link rel="stylesheet" type="text/css" href="/css/owl.theme.default.min.css">
		<link rel="stylesheet" type="text/css" href="/css/owl.carousel.min.css">
		<link rel="stylesheet" href="/lib/mdb4/css/bootstrap.min.css">
		<link rel="stylesheet" href="/lib/mdb4/css/mdb.min.css">
		<link rel="stylesheet" type="text/css" href="/css/product.css">
		<link rel="stylesheet" type="text/css" href="/css/custom.css">
		<style>
			.my-custom-scrollbar tbody tr th,
			.my-custom-scrollbar tbody tr td {
				max-width: 150px;
			}


			.my-custom-scrollbar {
				position: relative;
				height: 500px;

				overflow: auto;
			}

			.table-wrapper-scroll-y {
				display: block;
			}

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

			.carousel .carousel-indicators li {
				width: 0;
				height: 0;
			}

			.carousel .carousel-indicators li.active img {
				border: 1px solid red;
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

	<body class=" " >

		<div class="homeContent  mb-5">
			<div class="container">
				<div class="row w-100 mx-auto mb-2" >
					<div class="col-12">
					</div>
				</div>
				<section class="mb-4">
					<div class="row w-100 mx-auto">
						<div class="col-12">
							<div class="row w-100 mx-auto name-product py-3  bg-white ">
								<h3 class="mb-0 col-12 col-sm-8 ">
									<a href="#" title="" class="text-dark name-products mb-0">Samsung Galaxy S10+(128GB)
										<span class="note border-left-0">(No.00543145)</span>

									</a>
								</h3>

								<div class="media align-items-center col-12 col-sm-4 ">
									<ul class="nav mr-2">
										<li class="nav-item">
											<i class="fa fa-star font-text" aria-hidden="true"></i>
										</li>
										<li class="nav-item">
											<i class="fa fa-star font-text" aria-hidden="true"></i>
										</li>
										<li class="nav-item ">
											<i class="fa fa-star font-text" aria-hidden="true"></i>
										</li>
										<li class="nav-item">
											<i class="fa fa-star-half-o font-text" aria-hidden="true"></i>
										</li>
										<li class="nav-item">
											<i class="fa fa-star-o font-text" aria-hidden="true"></i>
										</li>
									</ul>
									<div class="media-body">
										<span>
											<a href="#" title="" class="text-dark font-text">73 khách hàng đánh giá|</a>
											<a href="#" title="" class="text-dark font-text">769 câu hỏi được trả
												lời</a>
										</span>
									</div>
								</div>

							</div>
							<div class="products-iphone bg-white ">
								<div class="row w-100 mx-auto">
									<div class="col-xl-4 my-4">
										<div class="d-flex justify-content-between align-items-center">
											<a href=""
												class="d-flex justify-content-center align-items-center  hvr-pulse-shrink">
												<i class="fa-regular fa-square-plus fa-sm mr-2"></i> so
												sánh
											</a>
											<a href=""
												class="d-flex justify-content-center align-items-center  hvr-pulse-shrink">
												<i class="fa-regular fa-heart fa-sm mr-2"></i> yêu thích
											</a>
										</div>
										<div id="carouselSlideImg" class="carousel slide pointer-event"
											data-ride="carousel">
											<div class="carousel-inner">
												<div class="carousel-item text-center ">
													<img src="/images/mobile7.jpg" alt="" class="img-fluid"
                                                         style="width: 300px;height: 300px">
												</div>
												<div class="carousel-item text-center">
													<img src="/images/mobile8.jpg" alt="" class="img-fluid"
                                                         style="width: 300px;height:300px;">
												</div>
												<div class="carousel-item active text-center">
													<img src="/images/mobile9.jpg" alt="" class="img-fluid"
                                                         style="width: 300px;height:300px;">
												</div>
												<div class="carousel-item text-center">
													<img src="/images/mobile10.jpg" alt="" class="img-fluid"
                                                         style="width: 300px;height:300px;">
												</div>

											</div>
											<a class="carousel-control-prev" href="#carouselSlideImg" role="button"
												data-slide="prev">
												<i class="fa-solid fa-circle-chevron-left fa-lg text-black-50"></i>
												<span class="sr-only">Previous</span>
											</a>
											<a class="carousel-control-next" href="#carouselSlideImg" role="button"
												data-slide="next">
												<i class="fa-solid fa-circle-chevron-right fa-lg text-black-50"></i>
												<span class="sr-only">Next</span>
											</a>
											<ol class="carousel-indicators m-0">
												<li data-target="#carouselSlideImg" data-slide-to="0"
													class="w-100 h-0 text-center">
													<div class="d-sm-block ">
														<br>
														<img class="object-fit " style="width: 55px;height: auto;"
															src="/images/mobile7.jpg">
													</div>
												</li>
												<li data-target="#carouselSlideImg" data-slide-to="1"
													class="w-100 text-center">
													<div class="d-sm-block ">
														<br>
														<img class="object-fit " style="width: 55px;height: auto;"
															src="/images/mobile8.jpg">
													</div>
												</li>
												<li data-target="#carouselSlideImg" data-slide-to="2"
													class="w-100 text-center active">
													<div class="d-sm-block ">
														<br>
														<img class="object-fit " style="width: 55px;height: auto;"
															src="/images/mobile9.jpg">
													</div>
												</li>
												<li data-target="#carouselSlideImg" data-slide-to="3"
													class="w-100 text-center">
													<div class="d-sm-block ">
														<br>
														<img class="object-fit " style="width: 55px;height: auto;"
															src="/images/mobile10.jpg">
													</div>
												</li>
											</ol>
										</div>
										<div style="height: 70px;"></div>
										<div class="card border-0 my-4">
											<div class="card-header">
												<i class="fa fa-clock-o text-danger" aria-hidden="true"></i>
												<span class="size">SẢN PHẨM NHẬN GIAO HÀNG TRONG 1 GIỜ</span>
											</div>
											<div class="mt-2" style="border: 1px dashed #d7d7d7;">
												<h5 class="card-title text-white bg-danger nav-link size"
													style="border: 1px dashed #d7d7d7;">trong hộp</h5>
												<ul class="list-unstyled">
													<li class="media nav-link active">
														<i class="fa fa-podcast mr-2 text-danger"
															aria-hidden="true"></i>
														<div class="media-body">
															<h5 class="mt-0 mb-1 text-dark font-text">Hàng chính hãng
															</h5>

														</div>
													</li>
													<li class="media nav-link active ">
														<i class="fa fa-shopping-bag mr-2 text-danger"
															aria-hidden="true"></i>
														<div class="media-body">
															<h5 class="mt-0 mb-1 text-dark font-text">Bảo hành 12 Tháng
																chính hãng
															</h5>

														</div>
													</li>
													<li class="media nav-link active">
														<i class="fa fa-shopping-basket mr-2 text-danger"
															aria-hidden="true"></i>
														<div class="media-body">
															<h5 class="mt-0 mb-1 text-dark font-text">Giao hàng miễn phí
																toàn quốc
																trong 60 phút</h5>

														</div>
													</li>
													<li class="media nav-link active">
														<i class="fa fa-shopping-basket mr-2 text-danger"
															aria-hidden="true"></i>
														<div class="media-body">
															<h5 class="mt-0 mb-1 text-dark font-text">Bảo hành nhanh tại
																FPT Shop
																trên toàn quốc</h5>
														</div>
													</li>
												</ul>
											</div>

										</div>

									</div>
									<!--end col-xl-4-->
									<div class="col-xl-4 bg-white my-4">
										<div class="mb-2">
											<span href="" class="badge badge-danger">Trả góp 0%</span>
										</div>

										<div class="d-flex align-items-center mb-2">
											<h3 class="prices">33.990.000 <sup>đ</sup></h3>
											<i class="pl-2" style="text-decoration: line-through;">34.500.000đ</i>
										</div>

										<div class="style-product mb-3 d-block">

											<a class="d-inline-block text-dark " href="#">
												<div class="custom-control  custom-radio custom-control-inline  border rounded  mb-1 mr-1"
													style="padding-left: 30px; padding-right: 10px; ">
													<input type="radio" class="custom-control-input"
														id="defaultInlineGB1" name="inlineDefaultRadiosExample" checked>
													<label class="custom-control-label" for="defaultInlineGB1">
														<div class="d-block">
															<span>128GB</span>
														</div>
														<span>270.990.000đ</span>
													</label>
												</div>
											</a>
											<a class="d-inline-block text-dark" href="#">
												<div class="custom-control custom-radio custom-control-inline  border rounded  mb-1 mr-1"
													style="padding-left: 30px; padding-right: 10px; ">
													<input type="radio" class="custom-control-input"
														id="defaultInlineGB2" name="inlineDefaultRadiosExample">
													<label class="custom-control-label" for="defaultInlineGB2">
														<div class="d-block">
															<span>128GB</span>
														</div>
														<span>270.990.000đ</span>
													</label>
												</div>
											</a>
										</div>
										<ul class="nav mb-2">
											<li class="nav-item mr-2 mb-2">
												<a class="d-inline-block text-dark" href="#">
													<div class="custom-control custom-radio custom-control-inline  border rounded mb-1 mr-1"
														style="padding-left: 29px; padding-right: 5px; ">
														<input type="radio" class="custom-control-input"
															id="defaultInlineCLR1" name="inlineDefaultRadiosExample1"
															checked>
														<label class="custom-control-label text-center p-1"
															for="defaultInlineCLR1">
															<img src="/images/dienthoai.jpg" alt=""
                                                                 class="img-fluid" style="width: 50px;height: 50px;">
															<span>xanh</span>
														</label>
													</div>
												</a>
											</li>
											<li class="nav-item mr-2 mb-2">
												<a class="d-inline-block text-dark" href="#">
													<div class="custom-control custom-radio custom-control-inline  border rounded mb-1 mr-1"
														style="padding-left: 29px; padding-right: 5px; ">
														<input type="radio" class="custom-control-input"
															id="defaultInline21" name="inlineDefaultRadiosExample1">
														<label class="custom-control-label text-center p-1"
															for="defaultInline21">
															<img src="/images/dienthoai.jpg" alt=""
                                                                 class="img-fluid" style="width: 50px;height: 50px;">
															<span>xanh</span>
														</label>
													</div>
												</a>
											</li>
										</ul>
										<div class="def-number-input number-input safari_only">

											<button
												onclick="this.parentNode.querySelector('input[type=number]').stepDown()"
												class="minus"></button>
											<input class="quantity" min="0" name="quantity" value="1" type="number">
											<button
												onclick="this.parentNode.querySelector('input[type=number]').stepUp()"
												class="plus"></button>
										</div>
										<div class="border p-2 my-4">
											<div class="text-center">
												<h5>Thông tin sản phẩm</h5>
											</div>
											<hr> Lorem ipsum dolor sit amet consectetur, adipisicing elit. Eius sequi
											alias corporis
											recusandae et optio, debitis dolor earum saepe veniam.
										</div>

										<ul class="nav text-center mt-2 ">
											<li class="nav-item w-100 bg-danger mb-2 hvr-round-corners">
												<a class="nav-link text-white " href="#">
													<h6>MUA NGAY</h6>
													<span class="font-text">Giao hàng trong 1 giờ hoặc nhận tại
														shop</span>
												</a>
											</li>

											<li class="nav-item bg-primary w-100 card-shop hvr-round-corners"
												style="width: 49%">
												<a class="nav-link text-white " href="#">
													<h6>TRẢ GÓP QUA THẺ</h6>
													<span class="font-text">Visa , Master card, JCB</span>
												</a>
											</li>
										</ul>
									</div>
									<!--end col-xl-5-->
									<div class="col-xl-4 bg-white ">
										<div class="card border-0 my-4">
											<div class="card-header">
												<i class="fa fa-clock-o text-danger" aria-hidden="true"></i>
												<span class="size">SẢN PHẨM NHẬN GIAO HÀNG TRONG 1 GIỜ</span>
											</div>
											<div class="mt-2" style="border: 1px dashed #d7d7d7;">
												<h5 class="card-title text-white bg-success nav-link size"
													style="border: 1px dashed #d7d7d7;">Khuyến mại đặc biệt </h5>
												<ul class="nav flex-column">
													<li class="nav-item">
														<a class="nav-link active text-dark" href="#">
															<i class="fa fa-circle text-success" aria-hidden="true"></i>
															<span class="font-text">Trả góp 0%</span>
														</a>




													</li>
													<li class="nav-item">
														<a class="nav-link active text-dark" href="#">
															<i class="fa fa-circle text-success" aria-hidden="true"></i>
															<span class="font-text">Giảm ngay 1,500,000đ (Quà tặng
																Galaxy)</span>
														</a>
													</li>
													<li class="nav-item ">
														<a class="nav-link active text-dark" href="#">
															<i class="fa fa-circle text-success" aria-hidden="true"></i>
															<span class="font-text">Giảm 50% Sim Viettel khi mua kèm
																máy</span>
														</a>
													</li>
													<li class="nav-item mb-2">
														<a class="nav-link active text-dark" href="#">
															<i class="fa fa-circle text-success" aria-hidden="true"></i>
															<span class="font-text">Bảo hành 3 năm</span>
														</a>
													</li>

												</ul>
											</div>

										</div>
										<div class="card border-0">
											<div class="card-header">
												<i class="fa fa-clock-o text-danger" aria-hidden="true"></i>
												<span class="size">SẢN PHẨM NHẬN GIAO HÀNG TRONG 1 GIỜ</span>
											</div>
											<div class="mt-2" style="border: 1px dashed #d7d7d7;">
												<h5 class="card-title text-white bg-success nav-link size"
													style="border: 1px dashed #d7d7d7;">Khuyến mại thêm</h5>
												<ul class="nav flex-column">
													<li class="nav-item">
														<a class="nav-link active text-dark" href="#">
															<i class="fa fa-circle text-success" aria-hidden="true"></i>
															<span class="font-text">Trả góp 0%</span>
														</a>
													</li>
													<li class="nav-item">
														<a class="nav-link active text-dark" href="#">
															<i class="fa fa-circle text-success" aria-hidden="true"></i>
															<span class="font-text">Giảm ngay 1,500,000đ (Quà tặng
																Galaxy)</span>
														</a>
													</li>
													<li class="nav-item ">
														<a class="nav-link active text-dark" href="#">
															<i class="fa fa-circle text-success" aria-hidden="true"></i>
															<span class="font-text">Giảm 50% Sim Viettel khi mua kèm
																máy</span>
														</a>
													</li>
													<li class="nav-item mb-2">
														<a class="nav-link active text-dark" href="#">
															<i class="fa fa-circle text-success" aria-hidden="true"></i>
															<span class="font-text">Bảo hành 3 năm</span>
														</a>
													</li>

												</ul>
											</div>

										</div>


									</div>
									<!--end col-xl-3-->
								</div>
								<!--end row-->
							</div>
						</div>
					</div>
				</section>
				<!--products-->

				<!--end introduce--products-->
				<section class="details-product ">
					<nav id="navbar-example3" class="navbar navbar-light bg-light bg-dark">

						<div class="menu-run float-right">
							<div class="media">
								<i class="fa fa-phone align-self-center mr-3 text-white" aria-hidden="true"></i>
								<div class="media-body">
									<p class="mb-0 text-white">Tư vấn miễn phí</p>
									<h5 class="text-warning mb-0">18001696</h5>
								</div>
								<a href="#" title="" class="text-white align-self-center ml-3 nav-link bg-danger">Mua
									ngay</a>
							</div>
						</div>

					</nav>
					<div data-spy="scroll" data-target="#navbar-example3" data-offset="0">
						<div class="row w-100 mx-auto">
							<div class="col-xl-8">
								<div class="card mb-4">
									<div class="card-header red-text r text-center">
										<h5 class="font-weight-500 my-1">Đánh giá chi tiết iPhone Xs Max 64GB</h5>
									</div>
									<div class="card-body">
										<div class="bg-white">
											<h4 id="fat" class="bg-white"></h4>
											<div class="bg-white">

												<div class="evaluate-product">

													<h3 class="text-center"></h3>
													<div class="">
														<h3 class="size-text p-0" style="padding: 25px;"><a href="#"
																title="" class="text-info size-text">iPhone Xs Max
																64GB</a>
															là chiếc iPhone có màn hình lớn nhất từ trước đến nay, mang
															đến
															những trải nghiệm tuyệt vời về màn hình và thời lượng pin.
														</h3>
													</div>
													<div class="info-show mb-4">
														<div class="information-seeMore">
															<a href="#" title=""><img src="/images/b0.jpg"
																	class="img-fluid"></a>
															<div class="title-details">
																<b>Màn hình lớn 6,5 inch chuẩn Super Retina siêu sắc
																	nét</b>
															</div>
															<div class="content-details">
																<b>iPhone Xs Max 64GB</b>
																<span>có màn hình vượt trội so với mọi thế hệ iPhone
																	trước
																	đây khi lớn tới 6,5 inch, được làm từ tấm nền OLED,
																	hỗ
																	trợ hiển thị HDR. HDR mang đến màu sắc chính xác,
																	màu
																	đen có chiều sâu, độ sáng và độ tương phản tuyệt
																	vời.
																	Bạn sẽ được tận hưởng một màn hình cực lớn, độ phân
																	giải
																	siêu cao 2688 x 1242 pixels cho trải nghiệm xem đáng
																	kinh ngạc.</span>
																<a href="#" title=""><img src="/images/b1.jpg"
																		class="img-fluid"></a>

																<div class="content-next">
																	<span>Nếu như bạn lo lắng màn hình lớn sẽ khiến cho
																	</span>
																	<b>iPhone Xs Max 64GB</b>
																	<span>khó cầm nắm trên tay thì hãy quên ngay nỗi lo
																		đó,
																		vì viền màn hình tràn 4 cạnh giúp cho iPhone Xs
																		Max
																		thậm chí còn nhỏ gọn hơn iPhone 8 Plus. Chúng ta
																		có
																		một chiếc máy màn hình lớn hơn rất nhiều, nhưng
																		vẫn
																		đủ gọn gàng để dễ dàng cầm nắm và thao
																		tác.</span>
																</div>

															</div>
															<div class="title-details">
																<b>Màn hình lớn 6,5 inch chuẩn Super Retina siêu sắc
																	nét</b>
															</div>
															<div class="content-details">
																<b>iPhone Xs Max 64GB</b>
																<span>có màn hình vượt trội so với mọi thế hệ iPhone
																	trước
																	đây khi lớn tới 6,5 inch, được làm từ tấm nền OLED,
																	hỗ
																	trợ hiển thị HDR. HDR mang đến màu sắc chính xác,
																	màu
																	đen có chiều sâu, độ sáng và độ tương phản tuyệt
																	vời.
																	Bạn sẽ được tận hưởng một màn hình cực lớn, độ phân
																	giải
																	siêu cao 2688 x 1242 pixels cho trải nghiệm xem đáng
																	kinh ngạc.</span>
																<a href="#" title=""><img src="/images/b2.jpg"
																		class="img-fluid"></a>

																<div class="content-next">
																	<span>Nếu như bạn lo lắng màn hình lớn sẽ khiến cho
																	</span>
																	<b>iPhone Xs Max 64GB</b>
																	<span>khó cầm nắm trên tay thì hãy quên ngay nỗi lo
																		đó,
																		vì viền màn hình tràn 4 cạnh giúp cho iPhone Xs
																		Max
																		thậm chí còn nhỏ gọn hơn iPhone 8 Plus. Chúng ta
																		có
																		một chiếc máy màn hình lớn hơn rất nhiều, nhưng
																		vẫn
																		đủ gọn gàng để dễ dàng cầm nắm và thao
																		tác.</span>
																</div>

															</div>
															<div class="title-details">
																<b>Màn hình lớn 6,5 inch chuẩn Super Retina siêu sắc
																	nét</b>
															</div>
															<div class="content-details">
																<b>iPhone Xs Max 64GB</b>
																<span>có màn hình vượt trội so với mọi thế hệ iPhone
																	trước
																	đây khi lớn tới 6,5 inch, được làm từ tấm nền OLED,
																	hỗ
																	trợ hiển thị HDR. HDR mang đến màu sắc chính xác,
																	màu
																	đen có chiều sâu, độ sáng và độ tương phản tuyệt
																	vời.
																	Bạn sẽ được tận hưởng một màn hình cực lớn, độ phân
																	giải
																	siêu cao 2688 x 1242 pixels cho trải nghiệm xem đáng
																	kinh ngạc.</span>
																<a href="#" title=""><img src="/images/b3.jpg"
																		class="img-fluid"></a>

																<div class="content-next">
																	<span>Nếu như bạn lo lắng màn hình lớn sẽ khiến cho
																	</span>
																	<b>iPhone Xs Max 64GB</b>
																	<span>khó cầm nắm trên tay thì hãy quên ngay nỗi lo
																		đó,
																		vì viền màn hình tràn 4 cạnh giúp cho iPhone Xs
																		Max
																		thậm chí còn nhỏ gọn hơn iPhone 8 Plus. Chúng ta
																		có
																		một chiếc máy màn hình lớn hơn rất nhiều, nhưng
																		vẫn
																		đủ gọn gàng để dễ dàng cầm nắm và thao
																		tác.</span>
																</div>

															</div>
															<div class="title-details">
																<b>Màn hình lớn 6,5 inch chuẩn Super Retina siêu sắc
																	nét</b>
															</div>
															<div class="content-details">
																<b>iPhone Xs Max 64GB</b>
																<span>có màn hình vượt trội so với mọi thế hệ iPhone
																	trước
																	đây khi lớn tới 6,5 inch, được làm từ tấm nền OLED,
																	hỗ
																	trợ hiển thị HDR. HDR mang đến màu sắc chính xác,
																	màu
																	đen có chiều sâu, độ sáng và độ tương phản tuyệt
																	vời.
																	Bạn sẽ được tận hưởng một màn hình cực lớn, độ phân
																	giải
																	siêu cao 2688 x 1242 pixels cho trải nghiệm xem đáng
																	kinh ngạc.</span>
																<a href="#" title=""><img src="/images/b4.jpg"
																		class="img-fluid"></a>

																<div class="content-next">
																	<span>Nếu như bạn lo lắng màn hình lớn sẽ khiến cho
																	</span>
																	<b>iPhone Xs Max 64GB</b>
																	<span>khó cầm nắm trên tay thì hãy quên ngay nỗi lo
																		đó,
																		vì viền màn hình tràn 4 cạnh giúp cho iPhone Xs
																		Max
																		thậm chí còn nhỏ gọn hơn iPhone 8 Plus. Chúng ta
																		có
																		một chiếc máy màn hình lớn hơn rất nhiều, nhưng
																		vẫn
																		đủ gọn gàng để dễ dàng cầm nắm và thao
																		tác.</span>
																</div>

															</div>
															<div class="title-details">
																<b>Màn hình lớn 6,5 inch chuẩn Super Retina siêu sắc
																	nét</b>
															</div>
															<div class="content-details">
																<b>iPhone Xs Max 64GB</b>
																<span>có màn hình vượt trội so với mọi thế hệ iPhone
																	trước
																	đây khi lớn tới 6,5 inch, được làm từ tấm nền OLED,
																	hỗ
																	trợ hiển thị HDR. HDR mang đến màu sắc chính xác,
																	màu
																	đen có chiều sâu, độ sáng và độ tương phản tuyệt
																	vời.
																	Bạn sẽ được tận hưởng một màn hình cực lớn, độ phân
																	giải
																	siêu cao 2688 x 1242 pixels cho trải nghiệm xem đáng
																	kinh ngạc.</span>
																<a href="#" title=""><img src="/images/b5.jpg"
																		class="img-fluid"></a>

																<div class="content-next">
																	<span>Nếu như bạn lo lắng màn hình lớn sẽ khiến cho
																	</span>
																	<b>iPhone Xs Max 64GB</b>
																	<span>khó cầm nắm trên tay thì hãy quên ngay nỗi lo
																		đó,
																		vì viền màn hình tràn 4 cạnh giúp cho iPhone Xs
																		Max
																		thậm chí còn nhỏ gọn hơn iPhone 8 Plus. Chúng ta
																		có
																		một chiếc máy màn hình lớn hơn rất nhiều, nhưng
																		vẫn
																		đủ gọn gàng để dễ dàng cầm nắm và thao
																		tác.</span>
																</div>

															</div>
															<div class="title-details">
																<b>Màn hình lớn 6,5 inch chuẩn Super Retina siêu sắc
																	nét</b>
															</div>
															<div class="content-details">
																<b>iPhone Xs Max 64GB</b>
																<span>có màn hình vượt trội so với mọi thế hệ iPhone
																	trước
																	đây khi lớn tới 6,5 inch, được làm từ tấm nền OLED,
																	hỗ
																	trợ hiển thị HDR. HDR mang đến màu sắc chính xác,
																	màu
																	đen có chiều sâu, độ sáng và độ tương phản tuyệt
																	vời.
																	Bạn sẽ được tận hưởng một màn hình cực lớn, độ phân
																	giải
																	siêu cao 2688 x 1242 pixels cho trải nghiệm xem đáng
																	kinh ngạc.</span>
																<a href="#" title=""><img src="/images/b6.jpg"
																		class="img-fluid"></a>

																<div class="content-next">
																	<span>Nếu như bạn lo lắng màn hình lớn sẽ khiến cho
																	</span>
																	<b>iPhone Xs Max 64GB</b>
																	<span>khó cầm nắm trên tay thì hãy quên ngay nỗi lo
																		đó,
																		vì viền màn hình tràn 4 cạnh giúp cho iPhone Xs
																		Max
																		thậm chí còn nhỏ gọn hơn iPhone 8 Plus. Chúng ta
																		có
																		một chiếc máy màn hình lớn hơn rất nhiều, nhưng
																		vẫn
																		đủ gọn gàng để dễ dàng cầm nắm và thao
																		tác.</span>
																</div>

															</div>
															<div class="title-details">
																<b>Màn hình lớn 6,5 inch chuẩn Super Retina siêu sắc
																	nét</b>
															</div>
															<div class="content-details">
																<b>iPhone Xs Max 64GB</b>
																<span>có màn hình vượt trội so với mọi thế hệ iPhone
																	trước
																	đây khi lớn tới 6,5 inch, được làm từ tấm nền OLED,
																	hỗ
																	trợ hiển thị HDR. HDR mang đến màu sắc chính xác,
																	màu
																	đen có chiều sâu, độ sáng và độ tương phản tuyệt
																	vời.
																	Bạn sẽ được tận hưởng một màn hình cực lớn, độ phân
																	giải
																	siêu cao 2688 x 1242 pixels cho trải nghiệm xem đáng
																	kinh ngạc.</span>
																<a href="#" title=""><img src="/images/b7.jpg"
																		class="img-fluid"></a>

																<div class="content-next">
																	<span>Nếu như bạn lo lắng màn hình lớn sẽ khiến cho
																	</span>
																	<b>iPhone Xs Max 64GB</b>
																	<span>khó cầm nắm trên tay thì hãy quên ngay nỗi lo
																		đó,
																		vì viền màn hình tràn 4 cạnh giúp cho iPhone Xs
																		Max
																		thậm chí còn nhỏ gọn hơn iPhone 8 Plus. Chúng ta
																		có
																		một chiếc máy màn hình lớn hơn rất nhiều, nhưng
																		vẫn
																		đủ gọn gàng để dễ dàng cầm nắm và thao
																		tác.</span>
																</div>

															</div>
															<div class="title-details">
																<b>Màn hình lớn 6,5 inch chuẩn Super Retina siêu sắc
																	nét</b>
															</div>
															<div class="content-details">
																<b>iPhone Xs Max 64GB</b>
																<span>có màn hình vượt trội so với mọi thế hệ iPhone
																	trước
																	đây khi lớn tới 6,5 inch, được làm từ tấm nền OLED,
																	hỗ
																	trợ hiển thị HDR. HDR mang đến màu sắc chính xác,
																	màu
																	đen có chiều sâu, độ sáng và độ tương phản tuyệt
																	vời.
																	Bạn sẽ được tận hưởng một màn hình cực lớn, độ phân
																	giải
																	siêu cao 2688 x 1242 pixels cho trải nghiệm xem đáng
																	kinh ngạc.</span>
																<a href="#" title=""><img src="/images/b8.jpg"
																		class="img-fluid"></a>

																<div class="content-next">
																	<span>Nếu như bạn lo lắng màn hình lớn sẽ khiến cho
																	</span>
																	<b>iPhone Xs Max 64GB</b>
																	<span>khó cầm nắm trên tay thì hãy quên ngay nỗi lo
																		đó,
																		vì viền màn hình tràn 4 cạnh giúp cho iPhone Xs
																		Max
																		thậm chí còn nhỏ gọn hơn iPhone 8 Plus. Chúng ta
																		có
																		một chiếc máy màn hình lớn hơn rất nhiều, nhưng
																		vẫn
																		đủ gọn gàng để dễ dàng cầm nắm và thao
																		tác.</span>
																</div>

															</div>
															<div class="title-details">
																<b>Màn hình lớn 6,5 inch chuẩn Super Retina siêu sắc
																	nét</b>
															</div>
															<div class="content-details">
																<b>iPhone Xs Max 64GB</b>
																<span>có màn hình vượt trội so với mọi thế hệ iPhone
																	trước
																	đây khi lớn tới 6,5 inch, được làm từ tấm nền OLED,
																	hỗ
																	trợ hiển thị HDR. HDR mang đến màu sắc chính xác,
																	màu
																	đen có chiều sâu, độ sáng và độ tương phản tuyệt
																	vời.
																	Bạn sẽ được tận hưởng một màn hình cực lớn, độ phân
																	giải
																	siêu cao 2688 x 1242 pixels cho trải nghiệm xem đáng
																	kinh ngạc.</span>
																<a href="#" title=""><img src="/images/b9.jpg"
																		class="img-fluid"></a>

																<div class="content-next">
																	<span>Nếu như bạn lo lắng màn hình lớn sẽ khiến cho
																	</span>
																	<b>iPhone Xs Max 64GB</b>
																	<span>khó cầm nắm trên tay thì hãy quên ngay nỗi lo
																		đó,
																		vì viền màn hình tràn 4 cạnh giúp cho iPhone Xs
																		Max
																		thậm chí còn nhỏ gọn hơn iPhone 8 Plus. Chúng ta
																		có
																		một chiếc máy màn hình lớn hơn rất nhiều, nhưng
																		vẫn
																		đủ gọn gàng để dễ dàng cầm nắm và thao
																		tác.</span>
																</div>

															</div>
															<div class="title-details">
																<b>Màn hình lớn 6,5 inch chuẩn Super Retina siêu sắc
																	nét</b>
															</div>
															<div class="content-details">
																<b>iPhone Xs Max 64GB</b>
																<span>có màn hình vượt trội so với mọi thế hệ iPhone
																	trước
																	đây khi lớn tới 6,5 inch, được làm từ tấm nền OLED,
																	hỗ
																	trợ hiển thị HDR. HDR mang đến màu sắc chính xác,
																	màu
																	đen có chiều sâu, độ sáng và độ tương phản tuyệt
																	vời.
																	Bạn sẽ được tận hưởng một màn hình cực lớn, độ phân
																	giải
																	siêu cao 2688 x 1242 pixels cho trải nghiệm xem đáng
																	kinh ngạc.</span>
																<a href="#" title=""><img src="/images/b10.jpg"
																		class="img-fluid"></a>

																<div class="content-next">
																	<span>Nếu như bạn lo lắng màn hình lớn sẽ khiến cho
																	</span>
																	<b>iPhone Xs Max 64GB</b>
																	<span>khó cầm nắm trên tay thì hãy quên ngay nỗi lo
																		đó,
																		vì viền màn hình tràn 4 cạnh giúp cho iPhone Xs
																		Max
																		thậm chí còn nhỏ gọn hơn iPhone 8 Plus. Chúng ta
																		có
																		một chiếc máy màn hình lớn hơn rất nhiều, nhưng
																		vẫn
																		đủ gọn gàng để dễ dàng cầm nắm và thao
																		tác.</span>
																</div>

															</div>
															<div class="title-details">
																<b>Màn hình lớn 6,5 inch chuẩn Super Retina siêu sắc
																	nét</b>
															</div>
															<div class="content-details">
																<b>iPhone Xs Max 64GB</b>
																<span>có màn hình vượt trội so với mọi thế hệ iPhone
																	trước
																	đây khi lớn tới 6,5 inch, được làm từ tấm nền OLED,
																	hỗ
																	trợ hiển thị HDR. HDR mang đến màu sắc chính xác,
																	màu
																	đen có chiều sâu, độ sáng và độ tương phản tuyệt
																	vời.
																	Bạn sẽ được tận hưởng một màn hình cực lớn, độ phân
																	giải
																	siêu cao 2688 x 1242 pixels cho trải nghiệm xem đáng
																	kinh ngạc.</span>
																<a href="#" title=""><img src="/images/b11.jpg"
																		class="img-fluid"></a>

																<div class="content-next">
																	<span>Nếu như bạn lo lắng màn hình lớn sẽ khiến cho
																	</span>
																	<b>iPhone Xs Max 64GB</b>
																	<span>khó cầm nắm trên tay thì hãy quên ngay nỗi lo
																		đó,
																		vì viền màn hình tràn 4 cạnh giúp cho iPhone Xs
																		Max
																		thậm chí còn nhỏ gọn hơn iPhone 8 Plus. Chúng ta
																		có
																		một chiếc máy màn hình lớn hơn rất nhiều, nhưng
																		vẫn
																		đủ gọn gàng để dễ dàng cầm nắm và thao
																		tác.</span>
																</div>

															</div>
															<div class="title-details">
																<b>Màn hình lớn 6,5 inch chuẩn Super Retina siêu sắc
																	nét</b>
															</div>
															<div class="content-details">
																<b>iPhone Xs Max 64GB</b>
																<span>có màn hình vượt trội so với mọi thế hệ iPhone
																	trước
																	đây khi lớn tới 6,5 inch, được làm từ tấm nền OLED,
																	hỗ
																	trợ hiển thị HDR. HDR mang đến màu sắc chính xác,
																	màu
																	đen có chiều sâu, độ sáng và độ tương phản tuyệt
																	vời.
																	Bạn sẽ được tận hưởng một màn hình cực lớn, độ phân
																	giải
																	siêu cao 2688 x 1242 pixels cho trải nghiệm xem đáng
																	kinh ngạc.</span>
																<a href="#" title=""><img src="/images/b12.jpg"
																		class="img-fluid"></a>

															</div>
														</div>
														<div class="text-center mt-4 btn-hide knot">
															<button type="button" class="bg-white size">Rút gọn <i
																	class="fa fa-caret-down"
																	aria-hidden="true"></i></button>
														</div>
													</div>
													<div class="info-hide mb-4">
														<div class="background-seeMore"></div>
														<div class="btn-show text-center mt-4 knot">
															<button type="button" class="bg-white size">Xem thêm <i
																	class="fa fa-caret-up"
																	aria-hidden="true"></i></button>
														</div>
													</div>
												</div>

											</div>
										</div>
									</div>
								</div>
								<div class="card mb-4">
									<div class="card-header text-danger text-center">
										<h5 class="font-weight-500 my-1">Đánh giá & Nhận xét iPhone Xs Max 64GB</h5>
									</div>
									<div class="card-body">
										<div class="bg-white">

											<div class="evaluate-people bg-white">
												<div class="row w-100 mx-auto">
													<div class="col-xl-3">
														<div class="card text-center border-0 rounded-0">
															<div class="card-body mt-4">
																<p class="card-text mb-0 size-text">3.7/5</p>
																<ul class="nav justify-content-center">
																	<li class="nav-item">
																		<i class="fa fa-star" aria-hidden="true"></i>
																	</li>
																	<li class="nav-item">
																		<i class="fa fa-star" aria-hidden="true"></i>
																	</li>
																	<li class="nav-item">
																		<i class="fa fa-star" aria-hidden="true"></i>
																	</li>
																	<li class="nav-item">
																		<i class="fa fa-star-half-o"
																			aria-hidden="true"></i>
																	</li>
																	<li class="nav-item">
																		<i class="fa fa-star-o" aria-hidden="true"></i>
																	</li>
																</ul>
																<p class="card-text"><small class="text-muted">161 đánh
																		giá
																		và nhận xét</small></p>
															</div>
														</div>
													</div>
													<div class="col-xl-5">
														<div class="card border-0 rounded-0">
															<div class="card-body">
																<ul class="nav flex-column">
																	<li class="nav-item mt-2 position-relative">
																		<span class="stars font-text">5 sao</span>
																		<div class="progress">
																			<div class="progress-bar bg-success"
																				style="width: 25%" aria-valuenow="25"
																				aria-valuemin="0" aria-valuemax="100">
																			</div>
																		</div>
																		<span
																			class="number-evaluate font-text">74</span>
																	</li>
																	<li class="nav-item mt-4 position-relative">
																		<span class="stars font-text">4 sao</span>
																		<div class="progress">
																			<div class="progress-bar bg-success"
																				style="width: 15%" aria-valuenow="25"
																				aria-valuemin="0" aria-valuemax="100">
																			</div>
																		</div>
																		<span
																			class="number-evaluate font-text">17</span>
																	</li>
																	<li class="nav-item mt-4 position-relative">
																		<span class="stars font-text">3 sao</span>
																		<div class="progress">
																			<div class="progress-bar bg-success"
																				style="width: 18%" aria-valuenow="25"
																				aria-valuemin="0" aria-valuemax="100">
																			</div>
																		</div>
																		<span class="number-evaluate font-text">3</span>
																	</li>
																	<li class="nav-item mt-4 position-relative">
																		<span class="stars font-text">2 sao</span>
																		<div class="progress">
																			<div class="progress-bar bg-warning"
																				style="width: 3%" aria-valuenow="25"
																				aria-valuemin="0" aria-valuemax="100">
																			</div>
																		</div>
																		<span class="number-evaluate font-text">3</span>
																	</li>
																	<li class="nav-item mt-4 position-relative">
																		<span class="stars font-text">1 sao</span>
																		<div class="progress">
																			<div class="progress-bar bg-danger"
																				style="width: 12%" aria-valuenow="25"
																				aria-valuemin="0" aria-valuemax="100">
																			</div>
																		</div>
																		<span
																			class="number-evaluate font-text">28</span>
																	</li>

																</ul>
															</div>
														</div>
													</div>
													<div class="col-xl-4">
														<div class="card text-center border-0 rounded-0 mt-4">
															<div class="card-body">
																<p>Bạn đã dùng sản phẩm này?</p>
																<a href="" class="badge badge-danger p-2"
																	data-toggle="modal"
																	data-target="#modalStarRating">Gửi đánh giá của
																	bạn</a>

															</div>
														</div>
													</div>
												</div>

												<div class=" my-3 border  p-2">
													<span>lọc xem theo: </span>
													<!-- Material inline 1 -->
													<div class="form-check form-check-inline">
														<input type="checkbox" class="form-check-input"
															id="materialInline1">
														<label class="form-check-label" for="materialInline1">1
															sao</label>
													</div>

													<!-- Material inline 2 -->
													<div class="form-check form-check-inline">
														<input type="checkbox" class="form-check-input"
															id="materialInline2">
														<label class="form-check-label" for="materialInline2">2
															sao</label>
													</div>

													<!-- Material inline 3 -->
													<div class="form-check form-check-inline">
														<input type="checkbox" class="form-check-input"
															id="materialInline3">
														<label class="form-check-label" for="materialInline3">3
															sao</label>
													</div>
													<div class="form-check form-check-inline">
														<input type="checkbox" class="form-check-input"
															id="materialInline4">
														<label class="form-check-label" for="materialInline4">4
															sao</label>
													</div>
													<div class="form-check form-check-inline">
														<input type="checkbox" class="form-check-input"
															id="materialInline5">
														<label class="form-check-label" for="materialInline5">5
															sao</label>
													</div>

												</div>




												<div class="cmt ">
													<div class="d-flex  flex-row p-2 ">
														<div class="d-flex justify-content-center align-items-center rounded-circle mr-3"
															style="background-color: #cbd1d6; color: #fff; width: 6%; height: 7%; align-items: center; justify-content: center; display: inline-block;">
															<span
																style="font-weight: 500; font-size: 20px; line-height: 47px; margin: 0 auto;">NTN</span>
														</div>
														<div>
															<h6 class="font-weight-bold">Nguyễn Thị Ngọc aHuyền</h6>
															<p class=" text-warning " style="font-size: 12px;">
																<i class=" fa-solid fa-star "></i>
																<i class=" fa-solid fa-star "></i>
																<i class=" fa-solid fa-star "></i>
																<i class="fa-solid fa-star-half-stroke "></i>
																<i class="fa-regular fa-star "></i>
															</p>
															<p>Tuyệt vời</p>
															<style>
																.like::before,
																.rep::before {
																	content: '●';
																	margin-right: 2px;
																	left: 0;
																	top: 0;
																	color: #333;
																	font-size: 10px;
																}

															</style>
															<span class="text-light text-weight-500 ">1 giờ trước <a
																	class="like pr-2 pl-2" href="">thích
																	<span>(12)</span>
																</a> <a class="rep" href="">trả lời</a></span>
														</div>
													</div>



												</div>

												<div class="d-flex justify-content-center align-items-center mt-4">
									<nav>
										<ul class="pagination pg-red m-0">
											<li class="page-item">
												<a class="page-link" aria-label="Previous">
													<span aria-hidden="true">&laquo;</span>
													<span class="sr-only">Previous</span>
												</a>
											</li>
											<li class="page-item active"><a class="page-link">1</a></li>
											<li class="page-item"><a class="page-link">2</a></li>
											<li class="page-item"><a class="page-link">3</a></li>
											<li class="page-item"><a class="page-link">4</a></li>
											<li class="page-item"><a class="page-link">5</a></li>
											<li class="page-item">
												<a class="page-link" aria-label="Next">
													<span aria-hidden="true">&raquo;</span>
													<span class="sr-only">Next</span>
												</a>
											</li>
										</ul>
									</nav>
								</div>
											</div>
										</div>
									</div>
								</div>
								<div class="modal fade show" id="modalStarRating" tabindex="-1" role="dialog"
									aria-labelledby="myModalLabel" aria-modal="true"
									style="padding-right: 17px; display: none;">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											<div class="modal-header text-center pt-1 pb-1">
												<h4 class="modal-title w-100 font-weight-bold text-uppercase">Đánh giá
													sản phẩm</h4>
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">×</span>
												</button>
											</div>
											<div class="modal-body mx-3 ">
												<div class="text-center">
													<img class="form_img-prod"
														src="https://images.fpt.shop/unsafe/fit-in/96x96/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2022/4/19/637859778843241685_iphone-13-pro-max-vang-1.jpg"
														alt="alt">
													<div class="mt-2">
														<span class="font-weight-bold">iPhone 13 Pro Max 512GB</span>
													</div>
													<div class="group-star">
														<div class="custom-control custom-radio custom-control-inline">
															<input type="radio" class="custom-control-input"
																id="defaultInlineStar1" value="1"
																name="inlineDefaultRadiosExampleStar">
															<label class="custom-control-label"
																for="defaultInlineStar1">Tệ</label>
														</div>

														<!-- Default inline 2-->
														<div class="custom-control custom-radio custom-control-inline">
															<input type="radio" class="custom-control-input"
																id="defaultInlineStar2" value="2"
																name="inlineDefaultRadiosExampleStar">
															<label class="custom-control-label"
																for="defaultInlineStar2">Trung bình</label>
														</div>

														<!-- Default inline 3-->
														<div class="custom-control custom-radio custom-control-inline">
															<input type="radio" class="custom-control-input"
																id="defaultInlineStar3" value="3"
																name="inlineDefaultRadiosExampleStar">
															<label class="custom-control-label"
																for="defaultInlineStar3">Khá
																Tốt</label>
														</div>
														<div class="custom-control custom-radio custom-control-inline">
															<input type="radio" class="custom-control-input"
																id="defaultInlineStar4" value="4"
																name="inlineDefaultRadiosExampleStar" checked>
															<label class="custom-control-label"
																for="defaultInlineStar4">Tốt</label>
														</div>
														<div class="custom-control custom-radio custom-control-inline">
															<input type="radio" class="custom-control-input"
																id="defaultInlineStar5" value="5"
																name="inlineDefaultRadiosExampleStar">
															<label class="custom-control-label"
																for="defaultInlineStar5">Tuyệt vời</label>
														</div>
													</div>
												</div>
												<div class="md-form  pink-textarea active-pink-textarea mb-0">
													<textarea id="textarea"
														class="md-textarea form-control validate mb-0 pb-0"
														style="padding-top: 30px;" rows="3"></textarea>
													<label for="textarea">Cãm nhận của bạn về sản phẩm</label>
												</div>
												<div class="pr-0">
													<div class="md-form col-12 pl-0 pr-0">
														<input id="name" type="text"
															class="validate form-control m-0" required="">
														<label id="name-label" class="" for="name">Nhập họ
															tên</label>
													</div>
												</div>
												<div class=" pr-0">
													<div class="md-form col-12 pl-0 pr-0">
														<input id="phone" type="text"
															class="validate form-control m-0" required="">
														<label id="phone-label" class="" for="phone">Nhập số
															điện thoại</label>
													</div>
												</div>
												<div class="md-form mb-2 mt-2">
													<input type="email" id="email"
														class="form-control validate m-0">
													<label data-error="wrong" data-success="right"
														for="email">Nhập email</label>
												</div>
											</div>

											<div class="modal-footer d-flex justify-content-center pt-1 pb-1">
												<button class="btn btn-danger ">Gửi</button>
											</div>
										</div>
									</div>
								</div>




								<div class="homecate d-none d-sm-block mb-4">
									<div class="card">
										<div class="card-header text-danger    text-center">
											<h5 class="font-weight-500 my-1 text-uppercase align-middle">các câu hỏi
												thường gặp</h5>
										</div>
										<div class="catebody ">
											<div class="accordion md-accordion" id="accordionEx" role="tablist"
												aria-multiselectable="true">

												<!-- Accordion card -->
												<div class="card">

													<!-- Card header -->
													<div class="card-header" role="tab" id="headingOne1">
														<a data-toggle="collapse" data-parent="#accordionEx"
															href="#collapseOne1" aria-expanded="true"
															aria-controls="collapseOne1">
															<h6 class="mb-0">
																câu hỏi #1 <i class="fas fa-angle-down rotate-icon"></i>
															</h6>
														</a>
													</div>

													<!-- Card body -->
													<div id="collapseOne1" class="collapse " role="tabpanel"
														aria-labelledby="headingOne1" data-parent="#accordionEx">
														<div class="card-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life
															accusamus terry richardson ad squid. 3
															wolf moon officia aute, non cupidatat skateboard dolor
															brunch.
															Food truck quinoa nesciunt laborum
															eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird
															on it
															squid single-origin coffee nulla
															assumenda shoreditch et. Nihil anim keffiyeh helvetica,
															craft
															beer labore wes anderson cred
															nesciunt sapiente ea proident. Ad vegan excepteur butcher
															vice
															lomo. Leggings occaecat craft beer
															farm-to-table, raw denim aesthetic synth nesciunt you
															probably
															haven't heard of them accusamus
															labore sustainable VHS.
														</div>
													</div>

												</div>
												<!-- Accordion card -->

												<!-- Accordion card -->
												<div class="card">

													<!-- Card header -->
													<div class="card-header" role="tab" id="headingTwo2">
														<a class="collapsed" data-toggle="collapse"
															data-parent="#accordionEx" href="#collapseTwo2"
															aria-expanded="false" aria-controls="collapseTwo2">
															<h6 class="mb-0">
																câu hỏi #2 <i class="fas fa-angle-down rotate-icon"></i>
															</h6>
														</a>
													</div>

													<!-- Card body -->
													<div id="collapseTwo2" class="collapse" role="tabpanel"
														aria-labelledby="headingTwo2" data-parent="#accordionEx">
														<div class="card-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life
															accusamus terry richardson ad squid. 3
															wolf moon officia aute, non cupidatat skateboard dolor
															brunch.
															Food truck quinoa nesciunt laborum
															eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird
															on it
															squid single-origin coffee nulla
															assumenda shoreditch et. Nihil anim keffiyeh helvetica,
															craft
															beer labore wes anderson cred
															nesciunt sapiente ea proident. Ad vegan excepteur butcher
															vice
															lomo. Leggings occaecat craft beer
															farm-to-table, raw denim aesthetic synth nesciunt you
															probably
															haven't heard of them accusamus
															labore sustainable VHS.
														</div>
													</div>

												</div>
												<!-- Accordion card -->

												<!-- Accordion card -->
												<div class="card">

													<!-- Card header -->
													<div class="card-header" role="tab" id="headingThree3">
														<a class="collapsed" data-toggle="collapse"
															data-parent="#accordionEx" href="#collapseThree3"
															aria-expanded="false" aria-controls="collapseThree3">
															<h6 class="mb-0">
																câu hỏi #3 <i class="fas fa-angle-down rotate-icon"></i>
															</h6>
														</a>
													</div>

													<!-- Card body -->
													<div id="collapseThree3" class="collapse" role="tabpanel"
														aria-labelledby="headingThree3" data-parent="#accordionEx">
														<div class="card-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life
															accusamus terry richardson ad squid. 3
															wolf moon officia aute, non cupidatat skateboard dolor
															brunch.
															Food truck quinoa nesciunt laborum
															eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird
															on it
															squid single-origin coffee nulla
															assumenda shoreditch et. Nihil anim keffiyeh helvetica,
															craft
															beer labore wes anderson cred
															nesciunt sapiente ea proident. Ad vegan excepteur butcher
															vice
															lomo. Leggings occaecat craft beer
															farm-to-table, raw denim aesthetic synth nesciunt you
															probably
															haven't heard of them accusamus
															labore sustainable VHS.
														</div>
													</div>

												</div>
												<!-- Accordion card -->

											</div>
										</div>
									</div>

								</div>
								<div class="card mb-4">
									<div class="card-header red-text  text-center">
										<h5 class="font-weight-500 my-1">Hỏi Đáp về iPhone Xs Max 64GB</h5>
									</div>
									<div class="card-body">
										<div class="bg-white">


											<input type="text" name=""
												placeholder="Viết bình luận của bạn (Vui lòng viết tiếng việt có dấu)"
												class="w-100 text-comment">

											<div class="d-flex justify-content-between  align-items-center mt-4  ">
												<span class="bg-light px-2">536 hỏi đáp về “Xiaomi Redmi Note 11S 6GB -
													128GB”</span>


												<a href="" class="badge badge-danger p-2">Gửi câu hỏi của bạn</a>
											</div>




											<div class="cmt mt-4">
												<div class="d-flex  flex-row p-2 ">
													<div class=" d-flex justify-content-center align-items-center  rounded-circle mr-3"
														style="background-color: #cbd1d6; color: #fff; width: 48px; height: 48px; align-items: center; justify-content: center; display: inline-block;">
														<span
															style="font-weight: 500; font-size: 20px; line-height: 47px;">NTN</span>
													</div>
													<div>
														<h6 class="font-weight-bold">Nguyễn Thị Ngọc Huyền</h6>
														<p>Tuyệt vời</p>
														<style>
															.like::before,
															.rep::before {
																content: '●';
																margin-right: 2px;
																left: 0;
																top: 0;
																color: #333;
																font-size: 10px;
															}

														</style>
														<span class="text-light text-weight-500 ">1 giờ trước <a
																class="like pr-2 pl-2" href="">thích <span>(12)</span>
															</a> <a class="rep" href="">trả lời</a></span>
													</div>
												</div>
												<div class="d-flex  flex-row  ml-5">
													<div class="d-flex justify-content-center align-items-center  rounded-circle mr-3"
														style="background-color: #cbd1d6; color: #fff; width:7%; height: 7%; align-items: center; justify-content: center; display: inline-block;">
														<span
															style="font-weight: 500; font-size: 20px; line-height: 47px; margin-left: 3px;">NT</span>
													</div>

													<div class="  rounded p-3 w-100 border border-danger">
														<h6 class="font-weight-bold">Nguyễn Thị Ngọc Huyền</h6>

														<p>Chào Nghi,</p>
														<p>

															Dạ bạn quan tâm cụ thể dung lượng bao nhiêu ạ. Để được tư
															vấn cụ thể hơn về sản phẩm, chương trình khuyến mãi. Bạn vui
															lòng để lại số điện thoại, Shop xin phép chuyển thông tin
															sang bộ phận tư vấn hỗ trợ mình nhanh nhất.
															Thân mến!</p>
														<style>
															.like::before,
															.rep::before {
																content: '●';
																margin-right: 2px;
																left: 0;
																top: 0;
																color: #333;
																font-size: 10px;
															}

														</style>
														<span class="text-light text-weight-500 ">1 giờ trước <a
																class="like pr-2 pl-2" href="">thích <span>(12)</span>
															</a> <a class="rep" href="">trả lời</a></span>
													</div>
												</div>

<div class="d-flex justify-content-center align-items-center mt-4">
								<nav>
									<ul class="pagination pg-red m-0">
										<li class="page-item">
											<a class="page-link" aria-label="Previous">
												<span aria-hidden="true">&laquo;</span>
												<span class="sr-only">Previous</span>
											</a>
										</li>
										<li class="page-item active"><a class="page-link">1</a></li>
										<li class="page-item"><a class="page-link">2</a></li>
										<li class="page-item"><a class="page-link">3</a></li>
										<li class="page-item"><a class="page-link">4</a></li>
										<li class="page-item"><a class="page-link">5</a></li>
										<li class="page-item">
											<a class="page-link" aria-label="Next">
												<span aria-hidden="true">&raquo;</span>
												<span class="sr-only">Next</span>
											</a>
										</li>
									</ul>
								</nav>
							</div>
											</div>
										</div>
									</div>
								</div>

							</div>
							<div class="col-xl-4 ">
								<div class="mb-4">

									<div class="card ">
										<div class="card-header red-text  text-center">
											<h5 class="font-weight-500 my-1">Thông số kỹ thuật</h5>
										</div>
										<div class="card-body">
											<div class="bg-white">
												<div class="table-wrapper-scroll-y my-custom-scrollbar">

													<table class="table table-bordered table-striped mb-0">

														<tbody>
															<tr>
																<th scope="row">Màn hình</th>
																<td>6.1 inch, Dynamic AMOLED, QHD+</td>
															</tr>
															<tr>
																<th scope="row">Camera sau</th>
																<td>10.0 MP</td>
															</tr>
															<tr>
																<th scope="row">RAM</th>
																<td>8 GB</td>
															</tr>
															<tr>
																<th scope="row">Bộ nhớ trong</th>
																<td>128 GB</td>
															</tr>
															<tr>
																<th scope="row">CPU</th>
																<td>Exynos 9820</td>
															</tr>
															<tr>
																<th scope="row">Dung lượng pin</th>
																<td>3400 mAh</td>
															</tr>
															<tr>
																<th scope="row">Thẻ sim</th>
																<td>2 - 2 Nano SIM</td>
															</tr>
															<tr>
																<th scope="row">Hệ điều hành</th>
																<td>Android 9.0</td>
															</tr>
															<tr>
																<th scope="row">Xuất xứ</th>
																<td>Việt Nam</td>
															</tr>
															<tr>
																<th scope="row">Thời gian ra mắt</th>
																<td>02/2019</td>
															</tr>
														</tbody>
													</table>

												</div>

											</div>
										</div>
									</div>
								</div>
								<!-- Button trigger modal -->


								<!-- Modal -->

								<!--end thông số kĩ thuật-->
<div class="mb-4">

	<div class="bg-white ">
		<div class="card">

			<div class="card-header red-text  text-center">
				<h5 class="font-weight-500 my-1">Sản phẩm đã xem gần đây</h5>
			</div>
			<div class="card-body">
				<!-- <h4 class=" titles mb-0 mt-4" id="three"></h4> -->
				<ul class="list-unstyled bg-white">
					<li class="media mt-2">
						<a href="#" title=""><img src="/images/c2.jpg" class="mr-3"
                                                  alt="..."></a>
						<div class="media-body">
							<a href="#" title="">
								<h3 class="nameApple">Apple Ốp lưng iPhone XS Max Silicon
									Red</h3>
								<b class="size text-dark"
									style="text-decoration: line-through;">1.290.000 ₫</b>
								<b class="text-danger size">1.290.000 ₫</b>
							</a>
						</div>
					</li>
					<li class="media my-4">
						<a href="#" title=""><img src="/images/c3.jpg" class="mr-3"
                                                  alt="..."></a>
						<div class="media-body">
							<a href="#" title="">
								<h3 class="nameApple">Apple Ốp lưng iPhone XS Max Silicon
									Red</h3>
								<b class="size text-dark"
									style="text-decoration: line-through;">1.290.000 ₫</b>
								<b class="text-danger  size">1.290.000 ₫</b>
							</a>
						</div>
					</li>
					<li class="media">
						<a href="#" title=""><img src="/images/c4.png" class="mr-3"
                                                  alt="..."></a>
						<div class="media-body">
							<a href="#" title="">
								<h3 class="nameApple">Apple Ốp lưng iPhone XS Max Silicon
									Red</h3>
								<b class="size text-dark"
									style="text-decoration: line-through;">1.290.000 ₫</b>
								<b class="text-danger  size">1.290.000 ₫</b>
							</a>
						</div>
					</li>
					<li class="media my-4">
						<a href="#" title=""><img src="/images/c5.jpg" class="mr-3"
                                                  alt="..."></a>
						<div class="media-body">
							<a href="#" title="">
								<h3 class="nameApple">Apple Ốp lưng iPhone XS Max Silicon
									Red</h3>
								<b class="size text-dark"
									style="text-decoration: line-through;">1.290.000 ₫</b>
								<b class="text-danger  size">1.290.000 ₫</b>
							</a>
						</div>
					</li>
					<li class="media">
						<a href="#" title=""><img src="/images/c6.jpg" class="mr-3"
                                                  alt="..."></a>
						<div class="media-body">
							<a href="#" title="">
								<h3 class="nameApple">Apple Ốp lưng iPhone XS Max Silicon
									Red</h3>
								<b class="size text-dark"
									style="text-decoration: line-through;">1.290.000 ₫</b>
								<b class="text-danger  size">1.290.000 ₫</b>
							</a>
						</div>
					</li>
					<li class="media my-4">
						<a href="#" title=""><img src="/images/c7.png" class="mr-3"
                                                  alt="..."></a>
						<div class="media-body">
							<a href="#" title="">
								<h3 class="nameApple">Apple Ốp lưng iPhone XS Max Silicon
									Red</h3>
								<b class="size text-dark"
									style="text-decoration: line-through;">1.290.000 ₫</b>
								<b class="text-danger size">1.290.000 ₫</b>
							</a>
						</div>
					</li>
				</ul>
				<hr />
				<a href="/html/user.jsp" title=""
					class="nav justify-content-center text-sucess size"> Xem
					tất cả</a>
			</div>
		</div>
	</div>
</div>
<div class="mb-4">

	<div class="card ">

		<div class="card-header red-text  text-center">
			<h5 class="font-weight-500 my-1">các hãng phổ biến</h5>
		</div>
		<div class="card-body ">
			<div class="mt-4">
				<div class="chip bg-danger  text-white">
					samsung
				</div>
				<div class="chip bg-danger  text-white">
					samsung
				</div>
				<div class="chip bg-danger  text-white">
					samsung
				</div>


			</div>

		</div>
	</div>
</div>
								<!--end phụ kiện-->


								<!--end news-->
							</div>

							<!--end col-xl-9-->

							<!--end col-xl-3-->
						</div>
					</div>
				</section>

				<!--end details-product-->
				<section class="introduce-products  mb-4 ">



<div class="row w-100 mx-auto">
						<div class="col-12">


							<div class="card">

								<div class="card-header ">
									<ul class="nav nav-tabs" id="myTabProduct" style="border:0;" role="tablist">
										<li class="nav-item " >
											<a class="nav-link active" style="font-size: 15px;" id="home-tab"
												data-toggle="tab" href="#pills-home" role="tab" aria-controls="home"
												aria-selected="true">Điện thoại tương tự</a>
										</li>

										<li class="nav-item " >
											<a class="nav-link " style="font-size: 15px;" id="contact-tab"
												data-toggle="tab" href="#pills-profile" role="tab"
												aria-controls="contact" aria-selected="false">Điện thoại cùng hãng</a>
										</li>
									</ul>
								</div>

								<div class="card-body bg-light bg-gradient ">
									<div class="tab-content p-0" style="padding: 0 !important;" id="pills-tabContent">
										<div class="tab-pane fade show active" id="pills-home" style="" role="tabpanel"
											aria-labelledby="pills-home-tab">
											<div class="owl-carousel owl-theme ">
												<div class="item">

													<div class="card   ">
														<div class="card-body rounded-0" style="padding: 0.75rem; ">
															<div class=" d-block overflow-hidden   ">
																<style>
																	p {
																		margin: 0;

																	}

																	.quote::before {
																		content: '●';
																		margin-right: 2px;
																		left: 0;
																		top: 0;
																		color: #333;
																		font-size: 10px;
																	}

																</style>
																<div class="d-flex flex-column h-100 w-100  ">

																	<div class=" align-items-start">
																		<span class="badge badge-danger mr-1">Trả góp
																			0%</span>
																	</div>

																	<a href="/views/web/product.jsp" class="text-dark">
																		<div
																			class="align-items-start cart-content  h-100">
																			<div
																				class="my-2 d-block overflow-hidden item hvr-float ">
																				<img class="object-cover mw-100 "
																					src="https://cdn.tgdd.vn/Products/Images/42/210652/iphone-11-pro-512gb-white-600x600.jpg"
																					alt="">
																			</div>
																			<h3 class="text-ellipsis product-title overflow-hidden  mb-1 fw-normal  text-break "
																				style="display: -webkit-box;
	-webkit-box-orient: vertical;
	-webkit-line-clamp: 2;font-size: 14px;">
																				iPhone 14 Pro Max 256GB Lorem ipsum
																				dolor
																				sit amet
																				consectetur
																				adipisicing elit. Iste, maiores.
																			</h3>
																			<div class="mb-1">
																				<span class="mr-2 badge badge-light">6.7
																					incheslor
																				</span>

																				<span class="mr-2 badge badge-light">128
																					GB</span>
																			</div>

																			<div class="mb-1">
																				<i class=" d-inline-block text-decoration-line-through price-old"
																					style="text-decoration: line-through">
																					40.000.000đ</i>
																				<b
																					class="d-inline-block price-new ">-25%</b>
																			</div>
																			<strong
																				class="fw-bold d-block mb-1 text-danger">38.990.000đ</strong>

																			<div class=" mb-1 d-flex flex-end">
																				<p class=" text-warning "
																					style="font-size: 12px;">
																					<i class=" fa-solid fa-star "></i>
																					<i class=" fa-solid fa-star "></i>
																					<i class=" fa-solid fa-star "></i>
																					<i
																						class="fa-solid fa-star-half-stroke "></i>
																					<i class="fa-regular fa-star "></i>
																				</p>
																				<p class="ms-1 fw-light d-inline-block align-middle "
																					style="font-size: 12px;">54</p>
																			</div>

																		</div>
																	</a>
																	<div
																		class="mt-2  d-flex justify-content-between align-items-end">
																		<a href="" class=" d-block  align-middle"
																			style="font-size:14px ;">
																			<i
																				class="fa-regular fa-square-plus fa-sm"></i>
																			so sánh
																		</a>

																		<a href="" class="d-block  align-middle"
																			style="font-size:14px ;">
																			<i class="fa-regular fa-heart fa-sm"></i>
																			yêu
																			thích
																		</a>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
													<div class="item">

													<div class="card   ">
														<div class="card-body rounded-0" style="padding: 0.75rem; ">
															<div class=" d-block overflow-hidden   ">
																<style>
																	p {
																		margin: 0;

																	}

																	.quote::before {
																		content: '●';
																		margin-right: 2px;
																		left: 0;
																		top: 0;
																		color: #333;
																		font-size: 10px;
																	}

																</style>
																<div class="d-flex flex-column h-100 w-100  ">

																	<div class=" align-items-start">
																		<span class="badge badge-danger mr-1">Trả góp
																			0%</span>
																	</div>

																	<a href="/views/web/product.jsp" class="text-dark">
																		<div
																			class="align-items-start cart-content  h-100">
																			<div
																				class="my-2 d-block overflow-hidden item hvr-float ">
																				<img class="object-cover mw-100 "
																					src="https://cdn.tgdd.vn/Products/Images/42/210652/iphone-11-pro-512gb-white-600x600.jpg"
																					alt="">
																			</div>
																			<h3 class="text-ellipsis product-title overflow-hidden  mb-1 fw-normal  text-break "
																				style="display: -webkit-box;
	-webkit-box-orient: vertical;
	-webkit-line-clamp: 2;font-size: 14px;">
																				iPhone 14 Pro Max 256GB Lorem ipsum
																				dolor
																				sit amet
																				consectetur
																				adipisicing elit. Iste, maiores.
																			</h3>
																			<div class="mb-1">
																				<span class="mr-2 badge badge-light">6.7
																					incheslor
																				</span>

																				<span class="mr-2 badge badge-light">128
																					GB</span>
																			</div>

																			<div class="mb-1">
																				<i class=" d-inline-block text-decoration-line-through price-old"
																					style="text-decoration: line-through">
																					40.000.000đ</i>
																				<b
																					class="d-inline-block price-new ">-25%</b>
																			</div>
																			<strong
																				class="fw-bold d-block mb-1 text-danger">38.990.000đ</strong>

																			<div class=" mb-1 d-flex flex-end">
																				<p class=" text-warning "
																					style="font-size: 12px;">
																					<i class=" fa-solid fa-star "></i>
																					<i class=" fa-solid fa-star "></i>
																					<i class=" fa-solid fa-star "></i>
																					<i
																						class="fa-solid fa-star-half-stroke "></i>
																					<i class="fa-regular fa-star "></i>
																				</p>
																				<p class="ms-1 fw-light d-inline-block align-middle "
																					style="font-size: 12px;">54</p>
																			</div>

																		</div>
																	</a>
																	<div
																		class="mt-2  d-flex justify-content-between align-items-end">
																		<a href="" class=" d-block  align-middle"
																			style="font-size:14px ;">
																			<i
																				class="fa-regular fa-square-plus fa-sm"></i>
																			so sánh
																		</a>

																		<a href="" class="d-block  align-middle"
																			style="font-size:14px ;">
																			<i class="fa-regular fa-heart fa-sm"></i>
																			yêu
																			thích
																		</a>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
													<div class="item">

													<div class="card   ">
														<div class="card-body rounded-0" style="padding: 0.75rem; ">
															<div class=" d-block overflow-hidden   ">
																<style>
																	p {
																		margin: 0;

																	}

																	.quote::before {
																		content: '●';
																		margin-right: 2px;
																		left: 0;
																		top: 0;
																		color: #333;
																		font-size: 10px;
																	}

																</style>
																<div class="d-flex flex-column h-100 w-100  ">

																	<div class=" align-items-start">
																		<span class="badge badge-danger mr-1">Trả góp
																			0%</span>
																	</div>

																	<a href="/views/web/product.jsp" class="text-dark">
																		<div
																			class="align-items-start cart-content  h-100">
																			<div
																				class="my-2 d-block overflow-hidden item hvr-float ">
																				<img class="object-cover mw-100 "
																					src="https://cdn.tgdd.vn/Products/Images/42/210652/iphone-11-pro-512gb-white-600x600.jpg"
																					alt="">
																			</div>
																			<h3 class="text-ellipsis product-title overflow-hidden  mb-1 fw-normal  text-break "
																				style="display: -webkit-box;
	-webkit-box-orient: vertical;
	-webkit-line-clamp: 2;font-size: 14px;">
																				iPhone 14 Pro Max 256GB Lorem ipsum
																				dolor
																				sit amet
																				consectetur
																				adipisicing elit. Iste, maiores.
																			</h3>
																			<div class="mb-1">
																				<span class="mr-2 badge badge-light">6.7
																					incheslor
																				</span>

																				<span class="mr-2 badge badge-light">128
																					GB</span>
																			</div>

																			<div class="mb-1">
																				<i class=" d-inline-block text-decoration-line-through price-old"
																					style="text-decoration: line-through">
																					40.000.000đ</i>
																				<b
																					class="d-inline-block price-new ">-25%</b>
																			</div>
																			<strong
																				class="fw-bold d-block mb-1 text-danger">38.990.000đ</strong>

																			<div class=" mb-1 d-flex flex-end">
																				<p class=" text-warning "
																					style="font-size: 12px;">
																					<i class=" fa-solid fa-star "></i>
																					<i class=" fa-solid fa-star "></i>
																					<i class=" fa-solid fa-star "></i>
																					<i
																						class="fa-solid fa-star-half-stroke "></i>
																					<i class="fa-regular fa-star "></i>
																				</p>
																				<p class="ms-1 fw-light d-inline-block align-middle "
																					style="font-size: 12px;">54</p>
																			</div>

																		</div>
																	</a>
																	<div
																		class="mt-2  d-flex justify-content-between align-items-end">
																		<a href="" class=" d-block  align-middle"
																			style="font-size:14px ;">
																			<i
																				class="fa-regular fa-square-plus fa-sm"></i>
																			so sánh
																		</a>

																		<a href="" class="d-block  align-middle"
																			style="font-size:14px ;">
																			<i class="fa-regular fa-heart fa-sm"></i>
																			yêu
																			thích
																		</a>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
													<div class="item">

													<div class="card   ">
														<div class="card-body rounded-0" style="padding: 0.75rem; ">
															<div class=" d-block overflow-hidden   ">
																<style>
																	p {
																		margin: 0;

																	}

																	.quote::before {
																		content: '●';
																		margin-right: 2px;
																		left: 0;
																		top: 0;
																		color: #333;
																		font-size: 10px;
																	}

																</style>
																<div class="d-flex flex-column h-100 w-100  ">

																	<div class=" align-items-start">
																		<span class="badge badge-danger mr-1">Trả góp
																			0%</span>
																	</div>

																	<a href="/views/web/product.jsp" class="text-dark">
																		<div
																			class="align-items-start cart-content  h-100">
																			<div
																				class="my-2 d-block overflow-hidden item hvr-float ">
																				<img class="object-cover mw-100 "
																					src="https://cdn.tgdd.vn/Products/Images/42/210652/iphone-11-pro-512gb-white-600x600.jpg"
																					alt="">
																			</div>
																			<h3 class="text-ellipsis product-title overflow-hidden  mb-1 fw-normal  text-break "
																				style="display: -webkit-box;
	-webkit-box-orient: vertical;
	-webkit-line-clamp: 2;font-size: 14px;">
																				iPhone 14 Pro Max 256GB Lorem ipsum
																				dolor
																				sit amet
																				consectetur
																				adipisicing elit. Iste, maiores.
																			</h3>
																			<div class="mb-1">
																				<span class="mr-2 badge badge-light">6.7
																					incheslor
																				</span>

																				<span class="mr-2 badge badge-light">128
																					GB</span>
																			</div>

																			<div class="mb-1">
																				<i class=" d-inline-block text-decoration-line-through price-old"
																					style="text-decoration: line-through">
																					40.000.000đ</i>
																				<b
																					class="d-inline-block price-new ">-25%</b>
																			</div>
																			<strong
																				class="fw-bold d-block mb-1 text-danger">38.990.000đ</strong>

																			<div class=" mb-1 d-flex flex-end">
																				<p class=" text-warning "
																					style="font-size: 12px;">
																					<i class=" fa-solid fa-star "></i>
																					<i class=" fa-solid fa-star "></i>
																					<i class=" fa-solid fa-star "></i>
																					<i
																						class="fa-solid fa-star-half-stroke "></i>
																					<i class="fa-regular fa-star "></i>
																				</p>
																				<p class="ms-1 fw-light d-inline-block align-middle "
																					style="font-size: 12px;">54</p>
																			</div>

																		</div>
																	</a>
																	<div
																		class="mt-2  d-flex justify-content-between align-items-end">
																		<a href="" class=" d-block  align-middle"
																			style="font-size:14px ;">
																			<i
																				class="fa-regular fa-square-plus fa-sm"></i>
																			so sánh
																		</a>

																		<a href="" class="d-block  align-middle"
																			style="font-size:14px ;">
																			<i class="fa-regular fa-heart fa-sm"></i>
																			yêu
																			thích
																		</a>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
													<div class="item">

													<div class="card   ">
														<div class="card-body rounded-0" style="padding: 0.75rem; ">
															<div class=" d-block overflow-hidden   ">
																<style>
																	p {
																		margin: 0;

																	}

																	.quote::before {
																		content: '●';
																		margin-right: 2px;
																		left: 0;
																		top: 0;
																		color: #333;
																		font-size: 10px;
																	}

																</style>
																<div class="d-flex flex-column h-100 w-100  ">

																	<div class=" align-items-start">
																		<span class="badge badge-danger mr-1">Trả góp
																			0%</span>
																	</div>

																	<a href="/views/web/product.jsp" class="text-dark">
																		<div
																			class="align-items-start cart-content  h-100">
																			<div
																				class="my-2 d-block overflow-hidden item hvr-float ">
																				<img class="object-cover mw-100 "
																					src="https://cdn.tgdd.vn/Products/Images/42/210652/iphone-11-pro-512gb-white-600x600.jpg"
																					alt="">
																			</div>
																			<h3 class="text-ellipsis product-title overflow-hidden  mb-1 fw-normal  text-break "
																				style="display: -webkit-box;
	-webkit-box-orient: vertical;
	-webkit-line-clamp: 2;font-size: 14px;">
																				iPhone 14 Pro Max 256GB Lorem ipsum
																				dolor
																				sit amet
																				consectetur
																				adipisicing elit. Iste, maiores.
																			</h3>
																			<div class="mb-1">
																				<span class="mr-2 badge badge-light">6.7
																					incheslor
																				</span>

																				<span class="mr-2 badge badge-light">128
																					GB</span>
																			</div>

																			<div class="mb-1">
																				<i class=" d-inline-block text-decoration-line-through price-old"
																					style="text-decoration: line-through">
																					40.000.000đ</i>
																				<b
																					class="d-inline-block price-new ">-25%</b>
																			</div>
																			<strong
																				class="fw-bold d-block mb-1 text-danger">38.990.000đ</strong>

																			<div class=" mb-1 d-flex flex-end">
																				<p class=" text-warning "
																					style="font-size: 12px;">
																					<i class=" fa-solid fa-star "></i>
																					<i class=" fa-solid fa-star "></i>
																					<i class=" fa-solid fa-star "></i>
																					<i
																						class="fa-solid fa-star-half-stroke "></i>
																					<i class="fa-regular fa-star "></i>
																				</p>
																				<p class="ms-1 fw-light d-inline-block align-middle "
																					style="font-size: 12px;">54</p>
																			</div>

																		</div>
																	</a>
																	<div
																		class="mt-2  d-flex justify-content-between align-items-end">
																		<a href="" class=" d-block  align-middle"
																			style="font-size:14px ;">
																			<i
																				class="fa-regular fa-square-plus fa-sm"></i>
																			so sánh
																		</a>

																		<a href="" class="d-block  align-middle"
																			style="font-size:14px ;">
																			<i class="fa-regular fa-heart fa-sm"></i>
																			yêu
																			thích
																		</a>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
													<div class="item">

													<div class="card   ">
														<div class="card-body rounded-0" style="padding: 0.75rem; ">
															<div class=" d-block overflow-hidden   ">
																<style>
																	p {
																		margin: 0;

																	}

																	.quote::before {
																		content: '●';
																		margin-right: 2px;
																		left: 0;
																		top: 0;
																		color: #333;
																		font-size: 10px;
																	}

																</style>
																<div class="d-flex flex-column h-100 w-100  ">

																	<div class=" align-items-start">
																		<span class="badge badge-danger mr-1">Trả góp
																			0%</span>
																	</div>

																	<a href="/views/web/product.jsp" class="text-dark">
																		<div
																			class="align-items-start cart-content  h-100">
																			<div
																				class="my-2 d-block overflow-hidden item hvr-float ">
																				<img class="object-cover mw-100 "
																					src="https://cdn.tgdd.vn/Products/Images/42/210652/iphone-11-pro-512gb-white-600x600.jpg"
																					alt="">
																			</div>
																			<h3 class="text-ellipsis product-title overflow-hidden  mb-1 fw-normal  text-break "
																				style="display: -webkit-box;
	-webkit-box-orient: vertical;
	-webkit-line-clamp: 2;font-size: 14px;">
																				iPhone 14 Pro Max 256GB Lorem ipsum
																				dolor
																				sit amet
																				consectetur
																				adipisicing elit. Iste, maiores.
																			</h3>
																			<div class="mb-1">
																				<span class="mr-2 badge badge-light">6.7
																					incheslor
																				</span>

																				<span class="mr-2 badge badge-light">128
																					GB</span>
																			</div>

																			<div class="mb-1">
																				<i class=" d-inline-block text-decoration-line-through price-old"
																					style="text-decoration: line-through">
																					40.000.000đ</i>
																				<b
																					class="d-inline-block price-new ">-25%</b>
																			</div>
																			<strong
																				class="fw-bold d-block mb-1 text-danger">38.990.000đ</strong>

																			<div class=" mb-1 d-flex flex-end">
																				<p class=" text-warning "
																					style="font-size: 12px;">
																					<i class=" fa-solid fa-star "></i>
																					<i class=" fa-solid fa-star "></i>
																					<i class=" fa-solid fa-star "></i>
																					<i
																						class="fa-solid fa-star-half-stroke "></i>
																					<i class="fa-regular fa-star "></i>
																				</p>
																				<p class="ms-1 fw-light d-inline-block align-middle "
																					style="font-size: 12px;">54</p>
																			</div>

																		</div>
																	</a>
																	<div
																		class="mt-2  d-flex justify-content-between align-items-end">
																		<a href="" class=" d-block  align-middle"
																			style="font-size:14px ;">
																			<i
																				class="fa-regular fa-square-plus fa-sm"></i>
																			so sánh
																		</a>

																		<a href="" class="d-block  align-middle"
																			style="font-size:14px ;">
																			<i class="fa-regular fa-heart fa-sm"></i>
																			yêu
																			thích
																		</a>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
													<div class="item">

													<div class="card   ">
														<div class="card-body rounded-0" style="padding: 0.75rem; ">
															<div class=" d-block overflow-hidden   ">
																<style>
																	p {
																		margin: 0;

																	}

																	.quote::before {
																		content: '●';
																		margin-right: 2px;
																		left: 0;
																		top: 0;
																		color: #333;
																		font-size: 10px;
																	}

																</style>
																<div class="d-flex flex-column h-100 w-100  ">

																	<div class=" align-items-start">
																		<span class="badge badge-danger mr-1">Trả góp
																			0%</span>
																	</div>

																	<a href="/views/web/product.jsp" class="text-dark">
																		<div
																			class="align-items-start cart-content  h-100">
																			<div
																				class="my-2 d-block overflow-hidden item hvr-float ">
																				<img class="object-cover mw-100 "
																					src="https://cdn.tgdd.vn/Products/Images/42/210652/iphone-11-pro-512gb-white-600x600.jpg"
																					alt="">
																			</div>
																			<h3 class="text-ellipsis product-title overflow-hidden  mb-1 fw-normal  text-break "
																				style="display: -webkit-box;
	-webkit-box-orient: vertical;
	-webkit-line-clamp: 2;font-size: 14px;">
																				iPhone 14 Pro Max 256GB Lorem ipsum
																				dolor
																				sit amet
																				consectetur
																				adipisicing elit. Iste, maiores.
																			</h3>
																			<div class="mb-1">
																				<span class="mr-2 badge badge-light">6.7
																					incheslor
																				</span>

																				<span class="mr-2 badge badge-light">128
																					GB</span>
																			</div>

																			<div class="mb-1">
																				<i class=" d-inline-block text-decoration-line-through price-old"
																					style="text-decoration: line-through">
																					40.000.000đ</i>
																				<b
																					class="d-inline-block price-new ">-25%</b>
																			</div>
																			<strong
																				class="fw-bold d-block mb-1 text-danger">38.990.000đ</strong>

																			<div class=" mb-1 d-flex flex-end">
																				<p class=" text-warning "
																					style="font-size: 12px;">
																					<i class=" fa-solid fa-star "></i>
																					<i class=" fa-solid fa-star "></i>
																					<i class=" fa-solid fa-star "></i>
																					<i
																						class="fa-solid fa-star-half-stroke "></i>
																					<i class="fa-regular fa-star "></i>
																				</p>
																				<p class="ms-1 fw-light d-inline-block align-middle "
																					style="font-size: 12px;">54</p>
																			</div>

																		</div>
																	</a>
																	<div
																		class="mt-2  d-flex justify-content-between align-items-end">
																		<a href="" class=" d-block  align-middle"
																			style="font-size:14px ;">
																			<i
																				class="fa-regular fa-square-plus fa-sm"></i>
																			so sánh
																		</a>

																		<a href="" class="d-block  align-middle"
																			style="font-size:14px ;">
																			<i class="fa-regular fa-heart fa-sm"></i>
																			yêu
																			thích
																		</a>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>

											<div class="text-center my-2 ">
												<button class="btn btn-danger px-5 text-white hvr-grow btn-md">Xem tất cả</button>
											</div>
										</div>
										<div class="tab-pane fade  " id="pills-profile" role="tabpanel"
											aria-labelledby="pills-profile-tab">

											<div class="owl-carousel owl-theme ">
												<div class="item">

													<div class="card  rounded-2 ">
														<div class="card-body "
															style="padding: 0.75rem; box-shadow: unset;">
															<div class=" d-block overflow-hidden   ">
																<style>
																	p {
																		margin: 0;

																	}

																	.quote::before {
																		content: '●';
																		margin-right: 2px;
																		left: 0;
																		top: 0;
																		color: #333;
																		font-size: 10px;
																	}

																</style>
																<div class="d-flex flex-column h-100 w-100  ">

																	<div class=" align-items-start">
																		<span class="badge badge-danger mr-1">Trả góp
																			0%</span>
																	</div>

																	<a href="/views/web/product.jsp" class="text-dark">
																		<div
																			class="align-items-start cart-content  h-100">
																			<div
																				class="my-2 d-block overflow-hidden item hvr-float ">
																				<img class="object-cover mw-100 "
																					src="https://cdn.tgdd.vn/Products/Images/42/210652/iphone-11-pro-512gb-white-600x600.jpg"
																					alt="">
																			</div>
																			<h3 class="text-ellipsis product-title overflow-hidden  mb-1 fw-normal  text-break "
																				style="display: -webkit-box;
	-webkit-box-orient: vertical;
	-webkit-line-clamp: 2;font-size: 14px;">
																				iPhone 14 Pro Max 256GB Lorem ipsum
																				dolor
																				sit amet
																				consectetur
																				adipisicing elit. Iste, maiores.
																			</h3>
																			<div class="mb-1">
																				<span class="mr-2 badge badge-light">6.7
																					incheslor
																				</span>

																				<span class="mr-2 badge badge-light">128
																					GB</span>
																			</div>

																			<div class="mb-1">
																				<i class=" d-inline-block text-decoration-line-through price-old"
																					style="text-decoration: line-through">
																					40.000.000đ</i>
																				<b
																					class="d-inline-block price-new ">-25%</b>
																			</div>
																			<strong
																				class="fw-bold d-block mb-1 text-danger">38.990.000đ</strong>

																			<div class=" mb-1 d-flex flex-end">
																				<p class=" text-warning "
																					style="font-size: 12px;">
																					<i class=" fa-solid fa-star "></i>
																					<i class=" fa-solid fa-star "></i>
																					<i class=" fa-solid fa-star "></i>
																					<i
																						class="fa-solid fa-star-half-stroke "></i>
																					<i class="fa-regular fa-star "></i>
																				</p>
																				<p class="ms-1 fw-light d-inline-block align-middle "
																					style="font-size: 12px;">54</p>
																			</div>

																		</div>
																	</a>
																	<div
																		class="mt-2  d-flex justify-content-between align-items-end">
																		<a href="" class=" d-block  align-middle"
																			style="font-size:14px ;">
																			<i
																				class="fa-regular fa-square-plus fa-sm"></i>
																			so sánh
																		</a>

																		<a href="" class="d-block  align-middle"
																			style="font-size:14px ;">
																			<i class="fa-regular fa-heart fa-sm"></i>
																			yêu
																			thích
																		</a>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>

											</div>

											<div class="text-center my-2">
												<button class="btn btn-danger px-5 text-white hvr-grow btn-md">Xem tất cả</button>
											</div>

										</div>
									</div>
								</div>
							</div>
							</div>
							</div>

				</section>


			</div>
		</div>
		<!--homeContent-->


		<!--homeContent-->


		<footer id="footer" class="p-4 border-top  bg-white"></footer>
		<script type="text/javascript" src="/lib/mdb4/js/jquery.min.js"></script>

		<script src="/lib/mdb4/js/popper.min.js"></script>
		<script src="/lib/mdb4/js/bootstrap.min.js"></script>
		<script src="/lib/mdb4/js/mdb.min.js"></script>
		<script type="text/javascript" src="/js/product.js"></script>
		<script type="text/javascript" src="/js/owl.carousel.min.js"></script>



	</body>

</html>
