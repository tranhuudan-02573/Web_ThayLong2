<!DOCTYPE html>
<html lang="en">

	<head>
		<meta charset="UTF-8">
		<meta name="viewport"
			content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
		<title>Document</title>

		<style>
			@media (min-width: 576px) {
				.col-sm-2 {
					-ms-flex: 0 0 16.666667%;
					flex: 1 0 15.666667%;
					max-width: 16.666667%;
				}

				.list-popular .owl-item {
					width: 258px !important
				}

				.col-sm-3 {
					-ms-flex: 0 0 25%;
					flex: 0 0 25%;
					max-width: 25%;
				}
			}

			@media (max-width: 576px) {
				.col-6 {
					-ms-flex: 0 0 50%;
					flex: 0 0 50%;
					max-width: 48%;
				}

				.list-popular .owl-item {
					width: 155px !important;
				}

				.fS {
					font-size: 25px !important;
				}

				.mdb-select.md-form .select-dropdown {
					margin-right: 150px;
				}
			}

			.sort .mdb-select input {
				margin-bottom: 0;
			}

		</style>
	</head>

	<body>

		<header id="header"></header>
		<div class="content my-5">
			<div class="container">
				<div id="breadcrumb"></div>
				<!--end homeSlider-->
				<section class="homeMenuMobile1 d-block d-sm-none nav-scroller">
					<ul class="nav">
						<li class="nav-item bg-white rounded-pill mr-1">
							<a class="nav-link text-dark " href="#">Dưới 1tr</a>
						</li>
						<li class="nav-item bg-white rounded-pill mr-1">
							<a class="nav-link text-dark" href="#">Từ 1tr-3tr</a>
						</li>
						<li class="nav-item bg-white rounded-pill mr-1">
							<a class="nav-link text-dark" href="#">Từ 3tr-6tr</a>
						</li>
						<li class="nav-item bg-white rounded-pill mr-1">
							<a class="nav-link text-dark" href="#">Từ 6tr-10tr</a>
						</li>
						<li class="nav-item bg-white rounded-pill mr-1">
							<a class="nav-link text-dark" href="#">Từ 10tr-15tr</a>
						</li>
						<li class="nav-item bg-white rounded-pill mr-1">
							<a class="nav-link text-dark" href="#">Trên 15tr</a>
						</li>
						<img src="/src/images/">
					</ul>
				</section>
				<!--end homeMenuMobile1-->
				<section class="homeMenuMobile2 d-block d-sm-none nav-scroller mt-2">
					<ul class="nav">
						<li class="nav-item rounded-pill bg-white mr-1">
							<a class="nav-link" href="#" style="width: 100px;"><img src="/src/images/apple.jpg"
									class="img-fluid"></a>
						</li>
						<li class="nav-item rounded-pill bg-white mr-1">
							<a class="nav-link" href="#" style="width: 100px;"><img src="/src/images/vivo.png"
									class="img-fluid"></a>
						</li>
						<li class="nav-item rounded-pill bg-white mr-1">
							<a class="nav-link" href="#" style="width: 100px;"><img src="/src/images/vivo.png"
									class="img-fluid"></a>
						</li>
						<li class="nav-item rounded-pill bg-white mr-1">
							<a class="nav-link" href="#" style="width: 100px;"><img src="/src/images/apple.jpg"
									class="img-fluid"></a>
						</li>
						<li class="nav-item rounded-pill bg-white mr-1 ">
							<a class="nav-link" href="#" style="width: 100px;"><img src="/src/images/samsung.png"
									class="img-fluid"></a>
						</li>
						<li class="nav-item rounded-pill bg-white mr-1 ">
							<a class="nav-link" href="#" style="width: 100px;"> <img src="/src/images/vivo.png"
									class="img-fluid"></a>
						</li>
						<li class="nav-item rounded-pill bg-white mr-1">
							<a class="nav-link" href="#" style="width: 100px;"><img src="/src/images/vivo.png"
									class="img-fluid"></a>
						</li>

					</ul>
				</section>
				<!--end homeMenuMobile2-->

				<section class="homeProducts">
					<div class="row row-sm">
						<div class="col-xl-3 bg-white pl-2 pr-2">
							<div class="cdt-filter__block mb-3">
								<div class="cdt-filter__title fw-bold fs-4 mb-2 h6">Lọc Theo</div>
								<div class="d-none d-sm-block">

									<div class="chip pink lighten-4">
										Tag 220
										<i class="close fas fa-times"></i>
									</div>
									<div class="chip pink lighten-4">
										Tag 220
										<i class="close fas fa-times"></i>
									</div>
									<div class="chip pink lighten-4">
										Tag 220
										<i class="close fas fa-times"></i>
									</div>


								</div>
							</div>
							<div class="cdt-filter__block mb-3">
								<div class="cdt-filter__title fw-bold fs-4 mb-2 h6">Sản phẩm</div>
								<div class="filter row ml-0">
									<div class="form-check form-check-block mb-2 col-6 pr-0 ">
										<a class="text-dark" href="#">
											<input type="checkbox" class="form-check-input" id="materialInline1">
											<label class="form-check-label w-100" for="materialInline1">Tất cả</label>
										</a>
									</div>
									<div class="form-check form-check-block mb-2 col-6 pr-0 ">
										<a class="text-dark" href="#">
											<input type="checkbox" class="form-check-input" id="materialiPhone">
											<label class="form-check-label w-100" for="materialiPhone">iPhone</label>
										</a>
									</div>
									<div class="form-check form-check-block mb-2 col-6 pr-0 ">
										<a class="text-dark" href="#">
											<input type="checkbox" class="form-check-input" id="materialSamSung">
											<label class="form-check-label w-100" for="materialSamSung">SamSung</label>
										</a>
									</div>
									<div class="form-check form-check-block mb-2 col-6 pr-0 ">
										<a class="text-dark" href="#">
											<input type="checkbox" class="form-check-input" id="materialOppo">
											<label class="form-check-label w-100" for="materialOppo">Oppo</label>
										</a>
									</div>
									<div class="form-check form-check-block mb-2 col-6 pr-0 ">
										<a class="text-dark" href="#">
											<input type="checkbox" class="form-check-input" id="materialXiaomi">
											<label class="form-check-label w-100" for="materialXiaomi">Xiaomi
											</label></a>
									</div>
									<div class="form-check form-check-block mb-2 col-6 pr-0 ">
										<a class="text-dark" href="#">
											<input type="checkbox" class="form-check-input" id="materialVivo">
											<label class="form-check-label w-100" for="materialVivo">Vivo</label>
										</a>
									</div>
									<div class="form-check form-check-block mb-2 col-6 pr-0 ">
										<a class="text-dark" href="#">
											<input type="checkbox" class="form-check-input" id="materialRealmi">
											<label class="form-check-label w-100" for="materialRealmi">Realmi</label>
										</a>
									</div>
									<div class="form-check form-check-block mb-2 col-6 pr-0 ">
										<a class="text-dark" href="#">
											<input type="checkbox" class="form-check-input" id="materialNokia">
											<label class="form-check-label w-100" for="materialNokia">Nokia</label>
										</a>
									</div>
									<div class="form-check form-check-block mb-2 col-6 pr-0 ">
										<a class="text-dark" href="#">
											<input type="checkbox" class="form-check-input" id="materialItel">
											<label class="form-check-label w-100" for="materialItel">Itel</label>
										</a>
									</div>
									<div class="form-check form-check-block mb-2 col-6 pr-0 ">
										<a class="text-dark" href="#">
											<input type="checkbox" class="form-check-input" id="materialMasstel">
											<label class="form-check-label w-100" for="materialMasstel">Masstel</label>
										</a>
									</div>
								</div>
							</div>
							<div class="cdt-filter__block mb-3">
								<div class="cdt-filter__title fw-bold fs-4 mb-2 h6">Mức Giá</div>
								<div class="filter">
									<div class="form-check form-check-block mb-2 pr-0 ">
										<a class="text-dark" href="#">
											<input type="checkbox" class="form-check-input" id="materialPriceAll">
											<label class="form-check-label w-100" for="materialPriceAll">Tất cả</label>
										</a>
									</div>

									<div class="form-check form-check-block mb-2 pr-0 ">
										<a class="text-dark" href="#">
											<input type="checkbox" class="form-check-input" id="material2MPrice">
											<label class="form-check-label w-100" for="material2MPrice">Từ 2
												triệu</label>
										</a>
									</div>
									<div class="form-check form-check-block mb-2 pr-0 ">
										<a class="text-dark" href="#">
											<input type="checkbox" class="form-check-input" id="material2T4MPrice">
											<label class="form-check-label w-100" for="material2T4MPrice">Từ 2-4
												triệu</label>
										</a>
									</div>
									<div class="form-check form-check-block mb-2 pr-0 ">
										<a class="text-dark" href="#">
											<input type="checkbox" class="form-check-input" id="material2T10MPrice">
											<label class="form-check-label w-100" for="material2T10MPrice">Từ 4-10
												triệu</label>
										</a>
									</div>
									<div class="form-check form-check-block mb-2 pr-0 ">
										<a class="text-dark" href="#">
											<input type="checkbox" class="form-check-input" id="materialL10MMPrice">
											<label class="form-check-label w-100" for="materialL10MMPrice">Trên 10
												triệu</label>
										</a>
									</div>
								</div>
							</div>
							<div class="cdt-filter__block mb-3">
								<div class="cdt-filter__title fw-bold fs-4 mb-2 h6">Tính năng</div>
								<div class="filter">
									<div class="form-check form-check-block mb-2 pr-0 ">
										<a class="text-dark" href="#">
											<input type="checkbox" class="form-check-input" id="materialSF">
											<label class="form-check-label w-100" for="materialSF">Bảo mật vân
												tay</label>
										</a>
									</div>
									<div class="form-check form-check-block mb-2 pr-0 ">
										<a class="text-dark" href="#">
											<input type="checkbox" class="form-check-input" id="materialL10MMFaceR">
											<label class="form-check-label w-100" for="materialL10MMFaceR">Nhận diện
												khuôn mặt</label>
										</a>
									</div>
									<div class="form-check form-check-block mb-2 pr-0 ">
										<a class="text-dark" href="#">
											<input type="checkbox" class="form-check-input" id="materialWaterProot">
											<label class="form-check-label w-100" for="materialWaterProot">Chống
												nước</label>
										</a>
									</div>
									<div class="form-check form-check-block mb-2 pr-0 ">
										<a class="text-dark" href="#">
											<input type="checkbox" class="form-check-input" id="materialFastCharg">
											<label class="form-check-label w-100" for="materialFastCharg">Sạc
												nhanh</label>
										</a>
									</div>
									<div class="form-check form-check-block mb-2 pr-0 ">
										<a class="text-dark" href="#">
											<input type="checkbox" class="form-check-input" id="materialWireless">
											<label class="form-check-label w-100" for="materialWireless">Sạc không
												dây</label>
										</a>
									</div>
								</div>
							</div>


							<div class="cdt-filter__block mb-3">
								<div class="cdt-filter__title fw-bold fs-4 mb-2 h6">Pin</div>
								<div class="filter">
									<div class="form-check form-check-block mb-2 pr-0 ">
										<a class="text-dark" href="#">
											<input type="checkbox" class="form-check-input" id="materialPinAll">
											<label class="form-check-label w-100" for="materialPinAll">Tất cả</label>
										</a>
									</div>
									<div class="form-check form-check-block mb-2 pr-0 ">
										<a class="text-dark" href="#">
											<input type="checkbox" class="form-check-input" id="materialS3000P">
											<label class="form-check-label w-100" for="materialS3000P">Dưới
												3000mah</label>
										</a>
									</div>
									<div class="form-check form-check-block mb-2 pr-0 ">
										<a class="text-dark" href="#">
											<input type="checkbox" class="form-check-input" id="material3000F4000P">
											<label class="form-check-label w-100" for="material3000F4000P">Từ 3000-4000
												mah</label>
										</a>
									</div>
									<div class="form-check form-check-block mb-2 pr-0 ">
										<a class="text-dark" href="#">
											<input type="checkbox" class="form-check-input" id="materialTF5000P">
											<label class="form-check-label w-100" for="materialTF5000P">Từ 5000 mah trở
												lên</label>
										</a>
									</div>
								</div>
							</div>

							<div class="cdt-filter__block mb-3">
								<div class="cdt-filter__title fw-bold fs-4 mb-2 h6">Camera</div>
								<div class="filter">
									<div class="form-check form-check-block mb-2 pr-0 ">
										<a class="text-dark" href="#">
											<input type="checkbox" class="form-check-input" id="materialCamera">
											<label class="form-check-label w-100" for="materialCamera">Tất cả</label>
										</a>
									</div>
									<div class="form-check form-check-block mb-2 pr-0 ">
										<a class="text-dark" href="#">
											<input type="checkbox" class="form-check-input" id="materialZoomoOptic">
											<label class="form-check-label w-100" for="materialZoomoOptic">Zoom quang
												học</label>
										</a>
									</div>
									<div class="form-check form-check-block mb-2 pr-0 ">
										<a class="text-dark" href="#">
											<input type="checkbox" class="form-check-input" id="materialAntiVid">
											<label class="form-check-label w-100" for="materialAntiVid">Chống
												rung</label>
										</a>
									</div>
									<div class="form-check form-check-block mb-2 pr-0 ">
										<a class="text-dark" href="#">
											<input type="checkbox" class="form-check-input" id="materialBeauEff">
											<label class="form-check-label w-100" for="materialBeauEff">Hiệu ứng làm
												đẹp</label>
										</a>
									</div>
									<div class="form-check form-check-block mb-2 pr-0 ">
										<a class="text-dark" href="#">
											<input type="checkbox" class="form-check-input" id="materialWideAngle">
											<label class="form-check-label w-100" for="materialWideAngle">Chụp góc
												rộng</label>
										</a>
									</div>
								</div>
							</div>
							<div class="cdt-filter__block mb-3">
								<div class="cdt-filter__title fw-bold fs-4 mb-2 h6">Trả góp</div>
								<div class="filter">
									<div class="form-check form-check-block mb-2 pr-0 ">
										<a class="text-dark" href="#">
											<input type="checkbox" class="form-check-input" id="materialInstallment">
											<label class="form-check-label w-100" for="materialInstallment">Tất
												cả</label>
										</a>
									</div>
									<div class="form-check form-check-block mb-2 pr-0 ">
										<a class="text-dark" href="#">
											<input type="checkbox" class="form-check-input" id="material0Percent">
											<label class="form-check-label w-100" for="material0Percent">Trả góp
												0%</label>
										</a>
									</div>
									<div class="form-check form-check-block mb-2 pr-0 ">
										<a class="text-dark" href="#">
											<input type="checkbox" class="form-check-input" id="material0VND">
											<label class="form-check-label w-100" for="material0VND">Trả góp 0đ</label>
										</a>
									</div>
									<div class="form-check form-check-block mb-2 pr-0 ">
										<a class="text-dark" href="#">
											<input type="checkbox" class="form-check-input" id="material0P0VND">
											<label class="form-check-label w-100" for="material0P0VND">Trả góp 0% và
												0đ</label>
										</a>
									</div>
								</div>
							</div>
						</div>
						<!--end col-xl-3-->
						<div class="col-xl-9 bg-white p-0 ">
							<div class="card mb-4">
								<div class="card-header">
									<div class="d-flex bd-highlight">
										<div class=" w-100 bd-highlight d-none d-sm-block">
											<h3 class="m-0">
												<a href="#" title="" class="text-dark h4" style="font-size: 22px">ĐIỆN
													THOẠI
													APPLE(IPHONE)
													<span style="font-size: 14px ; opacity: 0.7">(13+ sản phẩm)</span>
												</a>
											</h3>
										</div>
									</div>
								</div>
								<div class="cart-body p-4">
									<div class="owl-carousel owl-theme my-owl-carousel">
										<a href="" class="w-100 hvr-grow mx-2"> <img class="owl-lazy  "
												style="max-width: 108px !important; max-height: 40px !important;"
												data-src="https://images.fpt.shop/unsafe/fit-in/108x40/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2020/8/26/637340491304997311_Oppo@2x.jpg"

												alt=""></a>
										<a href="" class="w-100 hvr-grow mx-2"> <img class="owl-lazy"
												style="max-width: 108px !important; max-height: 40px !important;"
												data-src="https://images.fpt.shop/unsafe/fit-in/108x40/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/6/2/637582325361253577_Xiaomi@2x.jpg"

												alt=""></a>
										<a href="" class="w-100 hvr-grow mx-2"> <img class="owl-lazy "
												style="max-width: 108px !important; max-height: 40px !important;"
												data-src="https://images.fpt.shop/unsafe/fit-in/108x40/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2020/8/26/637340490904217021_Samsung@2x.jpg"

												alt=""></a>
	<a href="" class="w-100 hvr-grow mx-2"> <img class="owl-lazy "
												style="max-width: 108px !important; max-height: 40px !important;"
												data-src="https://images.fpt.shop/unsafe/fit-in/108x40/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2022/8/22/637967768466618842_vivo-icon.jpg"

												alt=""></a>
	<a href="" class="w-100 hvr-grow mx-2"> <img class="owl-lazy "
												style="max-width: 108px !important; max-height: 40px !important;"
												data-src="https://images.fpt.shop/unsafe/fit-in/108x40/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2020/8/26/637340490193124614_iPhone-Apple@2x.jpg"

												alt=""></a>








									</div>
								</div>





							</div>

							<div class="d-flex  justify-content-between align-items-center">
								<ul class="nav nav-tabs " id="myTabProductList" role="tablist">
									<li class="nav-item mr-2">
										<a class="nav-link active text-dark bg-light" id="home-tab" data-toggle="tab"
											href="#tragop0" role="tab" aria-controls="home" aria-selected="true">Trả góp
											0%</a>
									</li>
									<li class="nav-item mr-2">
										<a class="nav-link text-dark bg-light" id="hot-tab" data-toggle="tab"
											href="#hot" role="tab" aria-controls="profile" aria-selected="false">Sản
											phẩm hot</a>
									</li>
									<li class="nav-item mr-2">
										<a class="nav-link text-dark bg-light" id="buyest-tab" data-toggle="tab"
											href="#buyest" role="tab" aria-controls="profile" aria-selected="false">Sản
											phẩm mua
											nhiều</a>
									</li>
									<li class="nav-item">
										<a class="nav-link text-dark bg-light" id="promot-tab" data-toggle="tab"
											href="#discount" role="tab" aria-controls="profile"
											aria-selected="false">Sản phẩm ưu đãi khuyến
											mãi giảm giá</a>
									</li>


								</ul>
								<div class="sort float-right ml-auto ">


									<select class="mdb-select md-form m-0 " style="color:red !important;">
										<option value="1" class="text-danger">Sắp xếp theo A - Z</option>
										<option value="2">Sắp xếp theo Z - A</option>
										<option value="3">Sắp xếp theo giá giảm</option>
										<option value="4">Sắp xếp theo giá tăng</option>
										<option value="5">Sắp xếp theo lượt mua giảm</option>
										<option value="5">Sắp xếp theo lượt mua tăng</option>
									</select>



								</div>
							</div>
							<div class="tab-content pl-0 pr-0" id="myTabContent">
								<div class="tab-pane fade show active" id="tragop0" role="tabpanel"
									aria-labelledby="tragop0-tab">
									<div class="products-mobile mt-3 w-100">
										<div class="row w-100 mx-auto row-cols-4  ">

											<div class="col-6 col-sm-3 p-0">

<div class="card border rounded-0" style="box-shadow: unset;">
													<div class="card-body " style="padding: 0.75rem;">
													<div class=" d-block  overflow-hidden ">
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
													<div class="d-flex flex-column align-items-strech w-100  ">

														<div class=" align-self-start">
															<span class="badge badge-danger mr-1">Trả góp 0%</span>
														</div>

														<a href="/src/views/product.html " class="text-dark align-self-stretch" style="height: 525px;" >
															<div class=" cart-content  h-100">
																<div class="my-2 d-block overflow-hidden item hvr-float ">
																	<img class="object-cover mw-100 " src="https://cdn.tgdd.vn/Products/Images/42/210652/iphone-11-pro-512gb-white-600x600.jpg" alt="">
																</div>
																<h3 class=" product-title overflow-hidden   mb-1 " style="display: -webkit-box;
-webkit-box-orient: vertical;
-webkit-line-clamp: 2;font-size: 14px;">
																	iPhone 1
																</h3>

																<div class="mb-1">
																	<span class="mr-2 badge badge-light">6.7 incheslor
																	</span>

																	<span class="mr-2 badge badge-light">128 GB</span>
																</div>

																<div class="mb-1">
																	<i class=" d-inline-block text-decoration-line-through price-old" style="text-decoration: line-through">
																		40.000.000đ</i>
																		<span class="badge badge-default peach-gradient">-25%</span>
																	<b class="d-inline-block price-new "></b>
																</div>
																<strong class="fw-bold d-block mb-1 text-danger">38.990.000đ</strong>

																<div class=" mb-1 d-flex flex-end">
																	<p class=" text-warning " style="font-size: 12px;">
																		<i class=" fa-solid fa-star "></i>
																		<i class=" fa-solid fa-star "></i>
																		<i class=" fa-solid fa-star "></i>
																		<i class="fa-solid fa-star-half-stroke "></i>
																		<i class="fa-regular fa-star "></i>
																	</p>
																	<p class="ms-1 fw-light d-inline-block align-middle " style="font-size: 12px;">54</p>
																</div>
																	<div class="mt-2 text-ellipsis overflow-hidden text-break  d-none d-sm-block"
																			style="font-size:12px ;">
																			<p
																				class="d-flex quote  text-ellipsis overflow-hidden text-break">
																				Chip Snapdragon 8+ Gen 1

																			</p>
																			<p class="d-flex quote">RAM: 8 GB</p>
																			<p class="d-flex quote">Dung lượng: 256 GB
																			</p>
																			<p class="d-flex quote">Camera sau: Chính 50
																				MP &amp; Phụ 12 MP, 10
																				MP</p>
																			<p class="d-flex quote">Camera trước: 10 MP
																				&amp; 4 MP</p>
																			<p class="d-flex quote">Pin 44aaaaaaaaaaaaaaaa00 mAh, Sạc 25
																				W</p>
																		</div>

															</div>
														</a>
														<div class="mt-2  d-flex justify-content-between ">
															<a href="" class=" d-block  align-middle" style="font-size:14px ;">
																<i class="fa-regular fa-square-plus fa-sm"></i> so sánh
															</a>

															<a href="" class="d-block  align-middle" style="font-size:14px ;">
																<i class="fa-regular fa-heart fa-sm"></i> yêu thích
															</a>
														</div>
													</div>
												</div>
													</div>
												</div>

											</div>
											<div class="col-6 col-sm-3 p-0">
												<div class="card border rounded-0" style="box-shadow: unset;">
													<div class="card-body " style="padding: 0.75rem;">
													<div class=" d-block  overflow-hidden ">
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
													<div class="d-flex flex-column align-items-strech w-100  ">

														<div class=" align-self-start">
															<span class="badge badge-danger mr-1">Trả góp 0%</span>
														</div>

														<a href="/src/views/product.html " class="text-dark align-self-stretch" style="height: 525px;" >
															<div class=" cart-content  h-100">
																<div class="my-2 d-block overflow-hidden item hvr-float ">
																	<img class="object-cover mw-100 " src="https://cdn.tgdd.vn/Products/Images/42/210652/iphone-11-pro-512gb-white-600x600.jpg" alt="">
																</div>
																<h3 class=" product-title overflow-hidden   mb-1 " style="display: -webkit-box;
-webkit-box-orient: vertical;
-webkit-line-clamp: 2;font-size: 14px;">
																	iPhone 1
																</h3>

																<div class="mb-1">
																	<span class="mr-2 badge badge-light">6.7 incheslor
																	</span>

																	<span class="mr-2 badge badge-light">128 GB</span>
																</div>

																<div class="mb-1">
																	<i class=" d-inline-block text-decoration-line-through price-old" style="text-decoration: line-through">
																		40.000.000đ</i>
																		<span class="badge badge-default peach-gradient">-25%</span>
																	<b class="d-inline-block price-new "></b>
																</div>
																<strong class="fw-bold d-block mb-1 text-danger">38.990.000đ</strong>

																<div class=" mb-1 d-flex flex-end">
																	<p class=" text-warning " style="font-size: 12px;">
																		<i class=" fa-solid fa-star "></i>
																		<i class=" fa-solid fa-star "></i>
																		<i class=" fa-solid fa-star "></i>
																		<i class="fa-solid fa-star-half-stroke "></i>
																		<i class="fa-regular fa-star "></i>
																	</p>
																	<p class="ms-1 fw-light d-inline-block align-middle " style="font-size: 12px;">54</p>
																</div>
																	<div class="mt-2 text-ellipsis overflow-hidden text-break  d-none d-sm-block"
																			style="font-size:12px ;">
																			<p
																				class="d-flex quote  text-ellipsis overflow-hidden text-break">
																				Chip Snapdragon 8+ Gen 1

																			</p>
																			<p class="d-flex quote">RAM: 8 GB</p>
																			<p class="d-flex quote">Dung lượng: 256 GB
																			</p>
																			<p class="d-flex quote">Camera sau: Chính 50
																				MP &amp; Phụ 12 MP, 10
																				MP</p>
																			<p class="d-flex quote">Camera trước: 10 MP
																				&amp; 4 MP</p>
																			<p class="d-flex quote">Pin 44aaaaaaaaaaaaaaaa00 mAh, Sạc 25
																				W</p>
																		</div>

															</div>
														</a>
														<div class="mt-2  d-flex justify-content-between ">
															<a href="" class=" d-block  align-middle" style="font-size:14px ;">
																<i class="fa-regular fa-square-plus fa-sm"></i> so sánh
															</a>

															<a href="" class="d-block  align-middle" style="font-size:14px ;">
																<i class="fa-regular fa-heart fa-sm"></i> yêu thích
															</a>
														</div>
													</div>
												</div>
													</div>
												</div>


											</div>


											<div class="col-6 col-sm-3 p-0">

<div class="card border rounded-0" style="box-shadow: unset;">
													<div class="card-body " style="padding: 0.75rem;">
													<div class=" d-block  overflow-hidden ">
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
													<div class="d-flex flex-column align-items-strech w-100  ">

														<div class=" align-self-start">
															<span class="badge badge-danger mr-1">Trả góp 0%</span>
														</div>

														<a href="/src/views/product.html " class="text-dark align-self-stretch" style="height: 525px;" >
															<div class=" cart-content  h-100">
																<div class="my-2 d-block overflow-hidden item hvr-float ">
																	<img class="object-cover mw-100 " src="https://cdn.tgdd.vn/Products/Images/42/210652/iphone-11-pro-512gb-white-600x600.jpg" alt="">
																</div>
																<h3 class=" product-title overflow-hidden   mb-1 " style="display: -webkit-box;
-webkit-box-orient: vertical;
-webkit-line-clamp: 2;font-size: 14px;">
																	iPhone 1
																</h3>

																<div class="mb-1">
																	<span class="mr-2 badge badge-light">6.7 incheslor
																	</span>

																	<span class="mr-2 badge badge-light">128 GB</span>
																</div>

																<div class="mb-1">
																	<i class=" d-inline-block text-decoration-line-through price-old" style="text-decoration: line-through">
																		40.000.000đ</i>
																		<span class="badge badge-default peach-gradient">-25%</span>
																	<b class="d-inline-block price-new "></b>
																</div>
																<strong class="fw-bold d-block mb-1 text-danger">38.990.000đ</strong>

																<div class=" mb-1 d-flex flex-end">
																	<p class=" text-warning " style="font-size: 12px;">
																		<i class=" fa-solid fa-star "></i>
																		<i class=" fa-solid fa-star "></i>
																		<i class=" fa-solid fa-star "></i>
																		<i class="fa-solid fa-star-half-stroke "></i>
																		<i class="fa-regular fa-star "></i>
																	</p>
																	<p class="ms-1 fw-light d-inline-block align-middle " style="font-size: 12px;">54</p>
																</div>
																	<div class="mt-2 text-ellipsis overflow-hidden text-break  d-none d-sm-block"
																			style="font-size:12px ;">
																			<p
																				class="d-flex quote  text-ellipsis overflow-hidden text-break">
																				Chip Snapdragon 8+ Gen 1

																			</p>
																			<p class="d-flex quote">RAM: 8 GB</p>
																			<p class="d-flex quote">Dung lượng: 256 GB
																			</p>
																			<p class="d-flex quote">Camera sau: Chính 50
																				MP &amp; Phụ 12 MP, 10
																				MP</p>
																			<p class="d-flex quote">Camera trước: 10 MP
																				&amp; 4 MP</p>
																			<p class="d-flex quote">Pin 44aaaaaaaaaaaaaaaa00 mAh, Sạc 25
																				W</p>
																		</div>

															</div>
														</a>
														<div class="mt-2  d-flex justify-content-between ">
															<a href="" class=" d-block  align-middle" style="font-size:14px ;">
																<i class="fa-regular fa-square-plus fa-sm"></i> so sánh
															</a>

															<a href="" class="d-block  align-middle" style="font-size:14px ;">
																<i class="fa-regular fa-heart fa-sm"></i> yêu thích
															</a>
														</div>
													</div>
												</div>
													</div>
												</div>

											</div>
											<div class="col-6 col-sm-3 p-0">
												<div class="card border rounded-0" style="box-shadow: unset;">
													<div class="card-body " style="padding: 0.75rem;">
													<div class=" d-block  overflow-hidden ">
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
													<div class="d-flex flex-column align-items-strech w-100  ">

														<div class=" align-self-start">
															<span class="badge badge-danger mr-1">Trả góp 0%</span>
														</div>

														<a href="/src/views/product.html " class="text-dark align-self-stretch" style="height: 525px;" >
															<div class=" cart-content  h-100">
																<div class="my-2 d-block overflow-hidden item hvr-float ">
																	<img class="object-cover mw-100 " src="https://cdn.tgdd.vn/Products/Images/42/210652/iphone-11-pro-512gb-white-600x600.jpg" alt="">
																</div>
																<h3 class=" product-title overflow-hidden   mb-1 " style="display: -webkit-box;
-webkit-box-orient: vertical;
-webkit-line-clamp: 2;font-size: 14px;">
																	iPhone 1
																</h3>

																<div class="mb-1">
																	<span class="mr-2 badge badge-light">6.7 incheslor
																	</span>

																	<span class="mr-2 badge badge-light">128 GB</span>
																</div>

																<div class="mb-1">
																	<i class=" d-inline-block text-decoration-line-through price-old" style="text-decoration: line-through">
																		40.000.000đ</i>
																		<span class="badge badge-default peach-gradient">-25%</span>
																	<b class="d-inline-block price-new "></b>
																</div>
																<strong class="fw-bold d-block mb-1 text-danger">38.990.000đ</strong>

																<div class=" mb-1 d-flex flex-end">
																	<p class=" text-warning " style="font-size: 12px;">
																		<i class=" fa-solid fa-star "></i>
																		<i class=" fa-solid fa-star "></i>
																		<i class=" fa-solid fa-star "></i>
																		<i class="fa-solid fa-star-half-stroke "></i>
																		<i class="fa-regular fa-star "></i>
																	</p>
																	<p class="ms-1 fw-light d-inline-block align-middle " style="font-size: 12px;">54</p>
																</div>
																	<div class="mt-2 text-ellipsis overflow-hidden text-break  d-none d-sm-block"
																			style="font-size:12px ;">
																			<p
																				class="d-flex quote  text-ellipsis overflow-hidden text-break">
																				Chip Snapdragon 8+ Gen 1

																			</p>
																			<p class="d-flex quote">RAM: 8 GB</p>
																			<p class="d-flex quote">Dung lượng: 256 GB
																			</p>
																			<p class="d-flex quote">Camera sau: Chính 50
																				MP &amp; Phụ 12 MP, 10
																				MP</p>
																			<p class="d-flex quote">Camera trước: 10 MP
																				&amp; 4 MP</p>
																			<p class="d-flex quote">Pin 44aaaaaaaaaaaaaaaa00 mAh, Sạc 25
																				W</p>
																		</div>

															</div>
														</a>
														<div class="mt-2  d-flex justify-content-between ">
															<a href="" class=" d-block  align-middle" style="font-size:14px ;">
																<i class="fa-regular fa-square-plus fa-sm"></i> so sánh
															</a>

															<a href="" class="d-block  align-middle" style="font-size:14px ;">
																<i class="fa-regular fa-heart fa-sm"></i> yêu thích
															</a>
														</div>
													</div>
												</div>
													</div>
												</div>


											</div>


											<div class="col-6 col-sm-3 p-0">

<div class="card border rounded-0" style="box-shadow: unset;">
													<div class="card-body " style="padding: 0.75rem;">
													<div class=" d-block  overflow-hidden ">
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
													<div class="d-flex flex-column align-items-strech w-100  ">

														<div class=" align-self-start">
															<span class="badge badge-danger mr-1">Trả góp 0%</span>
														</div>

														<a href="/src/views/product.html " class="text-dark align-self-stretch" style="height: 525px;" >
															<div class=" cart-content  h-100">
																<div class="my-2 d-block overflow-hidden item hvr-float ">
																	<img class="object-cover mw-100 " src="https://cdn.tgdd.vn/Products/Images/42/210652/iphone-11-pro-512gb-white-600x600.jpg" alt="">
																</div>
																<h3 class=" product-title overflow-hidden   mb-1 " style="display: -webkit-box;
-webkit-box-orient: vertical;
-webkit-line-clamp: 2;font-size: 14px;">
																	iPhone 1
																</h3>

																<div class="mb-1">
																	<span class="mr-2 badge badge-light">6.7 incheslor
																	</span>

																	<span class="mr-2 badge badge-light">128 GB</span>
																</div>

																<div class="mb-1">
																	<i class=" d-inline-block text-decoration-line-through price-old" style="text-decoration: line-through">
																		40.000.000đ</i>
																		<span class="badge badge-default peach-gradient">-25%</span>
																	<b class="d-inline-block price-new "></b>
																</div>
																<strong class="fw-bold d-block mb-1 text-danger">38.990.000đ</strong>

																<div class=" mb-1 d-flex flex-end">
																	<p class=" text-warning " style="font-size: 12px;">
																		<i class=" fa-solid fa-star "></i>
																		<i class=" fa-solid fa-star "></i>
																		<i class=" fa-solid fa-star "></i>
																		<i class="fa-solid fa-star-half-stroke "></i>
																		<i class="fa-regular fa-star "></i>
																	</p>
																	<p class="ms-1 fw-light d-inline-block align-middle " style="font-size: 12px;">54</p>
																</div>
																	<div class="mt-2 text-ellipsis overflow-hidden text-break  d-none d-sm-block"
																			style="font-size:12px ;">
																			<p
																				class="d-flex quote  text-ellipsis overflow-hidden text-break">
																				Chip Snapdragon 8+ Gen 1

																			</p>
																			<p class="d-flex quote">RAM: 8 GB</p>
																			<p class="d-flex quote">Dung lượng: 256 GB
																			</p>
																			<p class="d-flex quote">Camera sau: Chính 50
																				MP &amp; Phụ 12 MP, 10
																				MP</p>
																			<p class="d-flex quote">Camera trước: 10 MP
																				&amp; 4 MP</p>
																			<p class="d-flex quote">Pin 44aaaaaaaaaaaaaaaa00 mAh, Sạc 25
																				W</p>
																		</div>

															</div>
														</a>
														<div class="mt-2  d-flex justify-content-between ">
															<a href="" class=" d-block  align-middle" style="font-size:14px ;">
																<i class="fa-regular fa-square-plus fa-sm"></i> so sánh
															</a>

															<a href="" class="d-block  align-middle" style="font-size:14px ;">
																<i class="fa-regular fa-heart fa-sm"></i> yêu thích
															</a>
														</div>
													</div>
												</div>
													</div>
												</div>

											</div>
											<div class="col-6 col-sm-3 p-0">
												<div class="card border rounded-0" style="box-shadow: unset;">
													<div class="card-body " style="padding: 0.75rem;">
													<div class=" d-block  overflow-hidden ">
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
													<div class="d-flex flex-column align-items-strech w-100  ">

														<div class=" align-self-start">
															<span class="badge badge-danger mr-1">Trả góp 0%</span>
														</div>

														<a href="/src/views/product.html " class="text-dark align-self-stretch" style="height: 525px;" >
															<div class=" cart-content  h-100">
																<div class="my-2 d-block overflow-hidden item hvr-float ">
																	<img class="object-cover mw-100 " src="https://cdn.tgdd.vn/Products/Images/42/210652/iphone-11-pro-512gb-white-600x600.jpg" alt="">
																</div>
																<h3 class=" product-title overflow-hidden   mb-1 " style="display: -webkit-box;
-webkit-box-orient: vertical;
-webkit-line-clamp: 2;font-size: 14px;">
																	iPhone 1
																</h3>

																<div class="mb-1">
																	<span class="mr-2 badge badge-light">6.7 incheslor
																	</span>

																	<span class="mr-2 badge badge-light">128 GB</span>
																</div>

																<div class="mb-1">
																	<i class=" d-inline-block text-decoration-line-through price-old" style="text-decoration: line-through">
																		40.000.000đ</i>
																		<span class="badge badge-default peach-gradient">-25%</span>
																	<b class="d-inline-block price-new "></b>
																</div>
																<strong class="fw-bold d-block mb-1 text-danger">38.990.000đ</strong>

																<div class=" mb-1 d-flex flex-end">
																	<p class=" text-warning " style="font-size: 12px;">
																		<i class=" fa-solid fa-star "></i>
																		<i class=" fa-solid fa-star "></i>
																		<i class=" fa-solid fa-star "></i>
																		<i class="fa-solid fa-star-half-stroke "></i>
																		<i class="fa-regular fa-star "></i>
																	</p>
																	<p class="ms-1 fw-light d-inline-block align-middle " style="font-size: 12px;">54</p>
																</div>
																	<div class="mt-2 text-ellipsis overflow-hidden text-break  d-none d-sm-block"
																			style="font-size:12px ;">
																			<p
																				class="d-flex quote  text-ellipsis overflow-hidden text-break">
																				Chip Snapdragon 8+ Gen 1

																			</p>
																			<p class="d-flex quote">RAM: 8 GB</p>

																		</div>

															</div>
														</a>
														<div class="mt-2  d-flex justify-content-between ">
															<a href="" class=" d-block  align-middle" style="font-size:14px ;">
																<i class="fa-regular fa-square-plus fa-sm"></i> so sánh
															</a>

															<a href="" class="d-block  align-middle" style="font-size:14px ;">
																<i class="fa-regular fa-heart fa-sm"></i> yêu thích
															</a>
														</div>
													</div>
												</div>
													</div>
												</div>


											</div>


										</div>
									</div>


								</div>
								<div class="tab-pane fade" id="hot" role="tabpanel" aria-labelledby="hot-tab">
									<div class="products-mobile mt-3 w-100">
										<div class="row w-100 mx-auto row-cols-4  ">
											<c:forEach var="phone" items="${requestScope.phoneList}">
											<div class="col-6 col-sm-3 p-0">
												<div class="card border rounded-0" style="box-shadow: unset;">
													<div class="card-body " style="padding: 0.75rem;">
														<jsp:include page="/common/web/card.jsp">
															<jsp:param name="thumbnail" value="${phone.thumbnail}"/>
															<jsp:param name="name" value="${phone.name}"/>
															<jsp:param name="price" value="${phone.price}"/>
															<jsp:param name="id" value="${phone.id}"/>
															<jsp:param name="capname" value="${phone.cap.name}"/>
														</jsp:include>



													</div>
												</div>


											</div>
											</c:forEach>

										</div>
									</div>
								</div>
								<div class="tab-pane fade" id="buyest" role="tabpanel" aria-labelledby="buyest-tab">
									<div class="products-mobile mt-3 w-100">
										<div class="row w-100 mx-auto row-cols-4  ">

											<div class="col-6 col-sm-3 p-0">
												<div class="card border rounded-0" style="box-shadow: unset;">
													<div class="card-body " style="padding: 0.75rem;">
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

																<a href="/src/views/product.html" class="text-dark">
																	<div class="align-items-start cart-content  h-100">
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
																			iPhone 14 Pro Max 256GB Lorem ipsum dolor
																			sit amet consectetur
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
																		<div class="mt-2 text-ellipsis overflow-hidden text-break  d-none d-sm-block"
																			style="font-size:12px ;">
																			<p
																				class="d-flex quote  text-ellipsis overflow-hidden text-break">
																				Chip Snapdragon 8+ Gen 1

																			</p>
																			<p class="d-flex quote">RAM: 8 GB</p>
																			<p class="d-flex quote">Dung lượng: 256 GB
																			</p>
																			<p class="d-flex quote">Camera sau: Chính 50
																				MP &amp; Phụ 12 MP, 10
																				MP</p>
																			<p class="d-flex quote">Camera trước: 10 MP
																				&amp; 4 MP</p>
																			<p class="d-flex quote">Pin 4400 mAh, Sạc 25
																				W</p>
																		</div>
																	</div>
																</a>
																<div
																	class="mt-2  d-flex justify-content-between align-items-end">
																	<a href="" class=" d-block  align-middle"
																		style="font-size:14px ;">
																		<i class="fa-regular fa-square-plus fa-sm"></i>
																		so sánh
																	</a>

																	<a href="" class="d-block  align-middle"
																		style="font-size:14px ;">
																		<i class="fa-regular fa-heart fa-sm"></i> yêu
																		thích
																	</a>
																</div>
															</div>
														</div>
													</div>
												</div>


											</div>




										</div>
									</div>
								</div>
								<div class="tab-pane fade" id="discount" role="tabpanel" aria-labelledby="discount-tab">
									<div class="products-mobile mt-3 w-100">
										<div class="row w-100 mx-auto row-cols-4  ">

											<div class="col-6 col-sm-3 p-0">
												<div class="card border rounded-0" style="box-shadow: unset;">
													<div class="card-body " style="padding: 0.75rem;">
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

																<a href="/src/views/product.html" class="text-dark">
																	<div class="align-items-start cart-content  h-100">
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
																			iPhone 14 Pro Max 256GB Lorem ipsum dolor
																			sit amet consectetur
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
																		<div class="mt-2 text-ellipsis overflow-hidden text-break  d-none d-sm-block"
																			style="font-size:12px ;">
																			<p
																				class="d-flex quote  text-ellipsis overflow-hidden text-break">
																				Chip Snapdragon 8+ Gen 1

																			</p>
																			<p class="d-flex quote">RAM: 8 GB</p>
																			<p class="d-flex quote">Dung lượng: 256 GB
																			</p>
																			<p class="d-flex quote">Camera sau: Chính 50
																				MP &amp; Phụ 12 MP, 10
																				MP</p>
																			<p class="d-flex quote">Camera trước: 10 MP
																				&amp; 4 MP</p>
																			<p class="d-flex quote">Pin 4400 mAh, Sạc 25
																				W</p>
																		</div>
																	</div>
																</a>
																<div
																	class="mt-2  d-flex justify-content-between align-items-end">
																	<a href="" class=" d-block  align-middle"
																		style="font-size:14px ;">
																		<i class="fa-regular fa-square-plus fa-sm"></i>
																		so sánh
																	</a>

																	<a href="" class="d-block  align-middle"
																		style="font-size:14px ;">
																		<i class="fa-regular fa-heart fa-sm"></i> yêu
																		thích
																	</a>
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
							<div class="d-flex justify-content-center align-items-center">
								<nav>
									<ul class="pagination pg-red">
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


						<!--Blue select-->


						<!--/Blue select-->

						<!--end col-xl-9-->

					</div>

				</section>
				<!--end homeProducts-->
				<section class="py-5">
					<div class="card">
						<div
							class="card-header mb-0 bg-danger d-flex justify-content-between text-white align-items-center ">
							<h5 class="mt-2 text-uppercase ">Sản phẩm phổ biến</h5>
							<button class="btn btn-white border-danger px-5 red-text btn-md m-0"
								style="box-shadow: unset;"><strong>Xem tất cả</strong></button>
						</div>
						<div class="card-body bg-light">
							<div class="introduce-products">
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

														<a href="/src/views/product.html" class="text-dark">
															<div class="align-items-start cart-content  h-100">
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
																	<b class="d-inline-block price-new ">-25%</b>
																</div>
																<strong
																	class="fw-bold d-block mb-1 text-danger">38.990.000đ</strong>

																<div class=" mb-1 d-flex flex-end">
																	<p class=" text-warning " style="font-size: 12px;">
																		<i class=" fa-solid fa-star "></i>
																		<i class=" fa-solid fa-star "></i>
																		<i class=" fa-solid fa-star "></i>
																		<i class="fa-solid fa-star-half-stroke "></i>
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
																<i class="fa-regular fa-square-plus fa-sm"></i>
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

														<a href="/src/views/product.html" class="text-dark">
															<div class="align-items-start cart-content  h-100">
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
																	<b class="d-inline-block price-new ">-25%</b>
																</div>
																<strong
																	class="fw-bold d-block mb-1 text-danger">38.990.000đ</strong>

																<div class=" mb-1 d-flex flex-end">
																	<p class=" text-warning " style="font-size: 12px;">
																		<i class=" fa-solid fa-star "></i>
																		<i class=" fa-solid fa-star "></i>
																		<i class=" fa-solid fa-star "></i>
																		<i class="fa-solid fa-star-half-stroke "></i>
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
																<i class="fa-regular fa-square-plus fa-sm"></i>
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

														<a href="/src/views/product.html" class="text-dark">
															<div class="align-items-start cart-content  h-100">
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
																	<b class="d-inline-block price-new ">-25%</b>
																</div>
																<strong
																	class="fw-bold d-block mb-1 text-danger">38.990.000đ</strong>

																<div class=" mb-1 d-flex flex-end">
																	<p class=" text-warning " style="font-size: 12px;">
																		<i class=" fa-solid fa-star "></i>
																		<i class=" fa-solid fa-star "></i>
																		<i class=" fa-solid fa-star "></i>
																		<i class="fa-solid fa-star-half-stroke "></i>
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
																<i class="fa-regular fa-square-plus fa-sm"></i>
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

														<a href="/src/views/product.html" class="text-dark">
															<div class="align-items-start cart-content  h-100">
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
																	<b class="d-inline-block price-new ">-25%</b>
																</div>
																<strong
																	class="fw-bold d-block mb-1 text-danger">38.990.000đ</strong>

																<div class=" mb-1 d-flex flex-end">
																	<p class=" text-warning " style="font-size: 12px;">
																		<i class=" fa-solid fa-star "></i>
																		<i class=" fa-solid fa-star "></i>
																		<i class=" fa-solid fa-star "></i>
																		<i class="fa-solid fa-star-half-stroke "></i>
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
																<i class="fa-regular fa-square-plus fa-sm"></i>
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

														<a href="/src/views/product.html" class="text-dark">
															<div class="align-items-start cart-content  h-100">
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
																	<b class="d-inline-block price-new ">-25%</b>
																</div>
																<strong
																	class="fw-bold d-block mb-1 text-danger">38.990.000đ</strong>

																<div class=" mb-1 d-flex flex-end">
																	<p class=" text-warning " style="font-size: 12px;">
																		<i class=" fa-solid fa-star "></i>
																		<i class=" fa-solid fa-star "></i>
																		<i class=" fa-solid fa-star "></i>
																		<i class="fa-solid fa-star-half-stroke "></i>
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
																<i class="fa-regular fa-square-plus fa-sm"></i>
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

														<a href="/src/views/product.html" class="text-dark">
															<div class="align-items-start cart-content  h-100">
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
																	<b class="d-inline-block price-new ">-25%</b>
																</div>
																<strong
																	class="fw-bold d-block mb-1 text-danger">38.990.000đ</strong>

																<div class=" mb-1 d-flex flex-end">
																	<p class=" text-warning " style="font-size: 12px;">
																		<i class=" fa-solid fa-star "></i>
																		<i class=" fa-solid fa-star "></i>
																		<i class=" fa-solid fa-star "></i>
																		<i class="fa-solid fa-star-half-stroke "></i>
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
																<i class="fa-regular fa-square-plus fa-sm"></i>
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

										<div class="card  ">
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

														<a href="/src/views/product.html" class="text-dark">
															<div class="align-items-start cart-content  h-100">
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
																	<b class="d-inline-block price-new ">-25%</b>
																</div>
																<strong
																	class="fw-bold d-block mb-1 text-danger">38.990.000đ</strong>

																<div class=" mb-1 d-flex flex-end">
																	<p class=" text-warning " style="font-size: 12px;">
																		<i class=" fa-solid fa-star "></i>
																		<i class=" fa-solid fa-star "></i>
																		<i class=" fa-solid fa-star "></i>
																		<i class="fa-solid fa-star-half-stroke "></i>
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
																<i class="fa-regular fa-square-plus fa-sm"></i>
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
							</div>
						</div>

					</div>


				</section>
				<section class="py-5">
					<div class="card">
						<div class="card-header bg-danger white-text">
							<h5 class="mt-2 text-uppercase ">Sản phẩm đã xem gần đây</h5>
						</div>
						<div class="row w-100 mx-auto">

							<div class="col-6 col-sm-2 p-0">
								<div class="card border rounded-0" style="box-shadow: unset;">
									<div class="card-body" style="padding: 0.75rem;">
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
													<span class="badge badge-danger mr-1">Trả góp 0%</span>
												</div>

												<a href="/src/views/product.html" class="text-dark">
													<div class="align-items-start cart-content  h-100">
														<div class="my-2 d-block overflow-hidden item hvr-float "><img
																class="object-cover mw-100 "
																src="https://cdn.tgdd.vn/Products/Images/42/210652/iphone-11-pro-512gb-white-600x600.jpg"
																alt="" /></div>
														<h3 class="text-ellipsis product-title overflow-hidden  mb-1 fw-normal  text-break "
															style="display: -webkit-box;
    -webkit-box-orient: vertical;
    -webkit-line-clamp: 2;font-size: 14px;">
															iPhone 14 Pro Max 256GB Lorem ipsum dolor sit amet
															consectetur
															adipisicing elit. Iste, maiores.
														</h3>
														<div class="mb-1">
															<span class="mr-2 badge badge-light">6.7 incheslor
															</span>

															<span class="mr-2 badge badge-light">128 GB</span>
														</div>

														<div class="mb-1">
															<i class=" d-inline-block text-decoration-line-through price-old"
																style="text-decoration: line-through">
																40.000.000đ</i>
															<b class="d-inline-block price-new ">-25%</b>
														</div>
														<strong
															class="fw-bold d-block mb-1 text-danger">38.990.000đ</strong>

														<div class=" mb-1 d-flex flex-end">
															<p class=" text-warning " style="font-size: 12px;">
																<i class=" fa-solid fa-star "></i>
																<i class=" fa-solid fa-star "></i>
																<i class=" fa-solid fa-star "></i>
																<i class="fa-solid fa-star-half-stroke "></i>
																<i class="fa-regular fa-star "></i>
															</p>
															<p class="ms-1 fw-light d-inline-block align-middle "
																style="font-size: 12px;">54</p>
														</div>

													</div>
												</a>
												<div class="mt-2  d-flex justify-content-between align-items-end">
													<a href="" class=" d-block  align-middle" style="font-size:14px ;">
														<i class="fa-regular fa-square-plus fa-sm"></i> so sánh
													</a>

													<a href="" class="d-block  align-middle" style="font-size:14px ;">
														<i class="fa-regular fa-heart fa-sm"></i> yêu thích
													</a>
												</div>
											</div>
										</div>
									</div>
								</div>


							</div>
							<div class="col-6 col-sm-2 p-0">
								<div class="card border rounded-0" style="box-shadow: unset;">
									<div class="card-body" style="padding: 0.75rem;">
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
													<span class="badge badge-danger mr-1">Trả góp 0%</span>
												</div>

												<a href="/src/views/product.html" class="text-dark">
													<div class="align-items-start cart-content  h-100">
														<div class="my-2 d-block overflow-hidden item hvr-float "><img
																class="object-cover mw-100 "
																src="https://cdn.tgdd.vn/Products/Images/42/210652/iphone-11-pro-512gb-white-600x600.jpg"
																alt="" /></div>
														<h3 class="text-ellipsis product-title overflow-hidden  mb-1 fw-normal  text-break "
															style="display: -webkit-box;
    -webkit-box-orient: vertical;
    -webkit-line-clamp: 2;font-size: 14px;">
															iPhone 14 Pro Max 256GB Lorem ipsum dolor sit amet
															consectetur
															adipisicing elit. Iste, maiores.
														</h3>
														<div class="mb-1">
															<span class="mr-2 badge badge-light">6.7 incheslor
															</span>

															<span class="mr-2 badge badge-light">128 GB</span>
														</div>

														<div class="mb-1">
															<i class=" d-inline-block text-decoration-line-through price-old"
																style="text-decoration: line-through">
																40.000.000đ</i>
															<b class="d-inline-block price-new ">-25%</b>
														</div>
														<strong
															class="fw-bold d-block mb-1 text-danger">38.990.000đ</strong>

														<div class=" mb-1 d-flex flex-end">
															<p class=" text-warning " style="font-size: 12px;">
																<i class=" fa-solid fa-star "></i>
																<i class=" fa-solid fa-star "></i>
																<i class=" fa-solid fa-star "></i>
																<i class="fa-solid fa-star-half-stroke "></i>
																<i class="fa-regular fa-star "></i>
															</p>
															<p class="ms-1 fw-light d-inline-block align-middle "
																style="font-size: 12px;">54</p>
														</div>

													</div>
												</a>
												<div class="mt-2  d-flex justify-content-between align-items-end">
													<a href="" class=" d-block  align-middle" style="font-size:14px ;">
														<i class="fa-regular fa-square-plus fa-sm"></i> so sánh
													</a>

													<a href="" class="d-block  align-middle" style="font-size:14px ;">
														<i class="fa-regular fa-heart fa-sm"></i> yêu thích
													</a>
												</div>
											</div>
										</div>
									</div>
								</div>


							</div>
							<div class="col-6 col-sm-2 p-0">
								<div class="card border rounded-0" style="box-shadow: unset;">
									<div class="card-body" style="padding: 0.75rem;">
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
													<span class="badge badge-danger mr-1">Trả góp 0%</span>
												</div>

												<a href="/src/views/product.html" class="text-dark">
													<div class="align-items-start cart-content  h-100">
														<div class="my-2 d-block overflow-hidden item hvr-float "><img
																class="object-cover mw-100 "
																src="https://cdn.tgdd.vn/Products/Images/42/210652/iphone-11-pro-512gb-white-600x600.jpg"
																alt="" /></div>
														<h3 class="text-ellipsis product-title overflow-hidden  mb-1 fw-normal  text-break "
															style="display: -webkit-box;
    -webkit-box-orient: vertical;
    -webkit-line-clamp: 2;font-size: 14px;">
															iPhone 14 Pro Max 256GB Lorem ipsum dolor sit amet
															consectetur
															adipisicing elit. Iste, maiores.
														</h3>
														<div class="mb-1">
															<span class="mr-2 badge badge-light">6.7 incheslor
															</span>

															<span class="mr-2 badge badge-light">128 GB</span>
														</div>

														<div class="mb-1">
															<i class=" d-inline-block text-decoration-line-through price-old"
																style="text-decoration: line-through">
																40.000.000đ</i>
															<b class="d-inline-block price-new ">-25%</b>
														</div>
														<strong
															class="fw-bold d-block mb-1 text-danger">38.990.000đ</strong>

														<div class=" mb-1 d-flex flex-end">
															<p class=" text-warning " style="font-size: 12px;">
																<i class=" fa-solid fa-star "></i>
																<i class=" fa-solid fa-star "></i>
																<i class=" fa-solid fa-star "></i>
																<i class="fa-solid fa-star-half-stroke "></i>
																<i class="fa-regular fa-star "></i>
															</p>
															<p class="ms-1 fw-light d-inline-block align-middle "
																style="font-size: 12px;">54</p>
														</div>

													</div>
												</a>
												<div class="mt-2  d-flex justify-content-between align-items-end">
													<a href="" class=" d-block  align-middle" style="font-size:14px ;">
														<i class="fa-regular fa-square-plus fa-sm"></i> so sánh
													</a>

													<a href="" class="d-block  align-middle" style="font-size:14px ;">
														<i class="fa-regular fa-heart fa-sm"></i> yêu thích
													</a>
												</div>
											</div>
										</div>
									</div>
								</div>


							</div>
							<div class="col-6 col-sm-2 p-0">
								<div class="card border rounded-0" style="box-shadow: unset;">
									<div class="card-body" style="padding: 0.75rem;">
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
													<span class="badge badge-danger mr-1">Trả góp 0%</span>
												</div>

												<a href="/src/views/product.html" class="text-dark">
													<div class="align-items-start cart-content  h-100">
														<div class="my-2 d-block overflow-hidden item hvr-float "><img
																class="object-cover mw-100 "
																src="https://cdn.tgdd.vn/Products/Images/42/210652/iphone-11-pro-512gb-white-600x600.jpg"
																alt="" /></div>
														<h3 class="text-ellipsis product-title overflow-hidden  mb-1 fw-normal  text-break "
															style="display: -webkit-box;
    -webkit-box-orient: vertical;
    -webkit-line-clamp: 2;font-size: 14px;">
															iPhone 14 Pro Max 256GB Lorem ipsum dolor sit amet
															consectetur
															adipisicing elit. Iste, maiores.
														</h3>
														<div class="mb-1">
															<span class="mr-2 badge badge-light">6.7 incheslor
															</span>

															<span class="mr-2 badge badge-light">128 GB</span>
														</div>

														<div class="mb-1">
															<i class=" d-inline-block text-decoration-line-through price-old"
																style="text-decoration: line-through">
																40.000.000đ</i>
															<b class="d-inline-block price-new ">-25%</b>
														</div>
														<strong
															class="fw-bold d-block mb-1 text-danger">38.990.000đ</strong>

														<div class=" mb-1 d-flex flex-end">
															<p class=" text-warning " style="font-size: 12px;">
																<i class=" fa-solid fa-star "></i>
																<i class=" fa-solid fa-star "></i>
																<i class=" fa-solid fa-star "></i>
																<i class="fa-solid fa-star-half-stroke "></i>
																<i class="fa-regular fa-star "></i>
															</p>
															<p class="ms-1 fw-light d-inline-block align-middle "
																style="font-size: 12px;">54</p>
														</div>

													</div>
												</a>
												<div class="mt-2  d-flex justify-content-between align-items-end">
													<a href="" class=" d-block  align-middle" style="font-size:14px ;">
														<i class="fa-regular fa-square-plus fa-sm"></i> so sánh
													</a>

													<a href="" class="d-block  align-middle" style="font-size:14px ;">
														<i class="fa-regular fa-heart fa-sm"></i> yêu thích
													</a>
												</div>
											</div>
										</div>
									</div>
								</div>


							</div>
							<div class="col-6 col-sm-2 p-0">
								<div class="card border rounded-0" style="box-shadow: unset;">
									<div class="card-body" style="padding: 0.75rem;">
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
													<span class="badge badge-danger mr-1">Trả góp 0%</span>
												</div>

												<a href="/src/views/product.html" class="text-dark">
													<div class="align-items-start cart-content  h-100">
														<div class="my-2 d-block overflow-hidden item hvr-float "><img
																class="object-cover mw-100 "
																src="https://cdn.tgdd.vn/Products/Images/42/210652/iphone-11-pro-512gb-white-600x600.jpg"
																alt="" /></div>
														<h3 class="text-ellipsis product-title overflow-hidden  mb-1 fw-normal  text-break "
															style="display: -webkit-box;
    -webkit-box-orient: vertical;
    -webkit-line-clamp: 2;font-size: 14px;">
															iPhone 14 Pro Max 256GB Lorem ipsum dolor sit amet
															consectetur
															adipisicing elit. Iste, maiores.
														</h3>
														<div class="mb-1">
															<span class="mr-2 badge badge-light">6.7 incheslor
															</span>

															<span class="mr-2 badge badge-light">128 GB</span>
														</div>

														<div class="mb-1">
															<i class=" d-inline-block text-decoration-line-through price-old"
																style="text-decoration: line-through">
																40.000.000đ</i>
															<b class="d-inline-block price-new ">-25%</b>
														</div>
														<strong
															class="fw-bold d-block mb-1 text-danger">38.990.000đ</strong>

														<div class=" mb-1 d-flex flex-end">
															<p class=" text-warning " style="font-size: 12px;">
																<i class=" fa-solid fa-star "></i>
																<i class=" fa-solid fa-star "></i>
																<i class=" fa-solid fa-star "></i>
																<i class="fa-solid fa-star-half-stroke "></i>
																<i class="fa-regular fa-star "></i>
															</p>
															<p class="ms-1 fw-light d-inline-block align-middle "
																style="font-size: 12px;">54</p>
														</div>

													</div>
												</a>
												<div class="mt-2  d-flex justify-content-between align-items-end">
													<a href="" class=" d-block  align-middle" style="font-size:14px ;">
														<i class="fa-regular fa-square-plus fa-sm"></i> so sánh
													</a>

													<a href="" class="d-block  align-middle" style="font-size:14px ;">
														<i class="fa-regular fa-heart fa-sm"></i> yêu thích
													</a>
												</div>
											</div>
										</div>
									</div>
								</div>


							</div>
							<div class="col-6 col-sm-2 p-0">
								<div class="card border rounded-0" style="box-shadow: unset;">
									<div class="card-body" style="padding: 0.75rem;">
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
													<span class="badge badge-danger mr-1">Trả góp 0%</span>
												</div>

												<a href="/src/views/product.html" class="text-dark">
													<div class="align-items-start cart-content  h-100">
														<div class="my-2 d-block overflow-hidden item hvr-float "><img
																class="object-cover mw-100 "
																src="https://cdn.tgdd.vn/Products/Images/42/210652/iphone-11-pro-512gb-white-600x600.jpg"
																alt="" /></div>
														<h3 class="text-ellipsis product-title overflow-hidden  mb-1 fw-normal  text-break "
															style="display: -webkit-box;
    -webkit-box-orient: vertical;
    -webkit-line-clamp: 2;font-size: 14px;">
															iPhone 14 Pro Max 256GB Lorem ipsum dolor sit amet
															consectetur
															adipisicing elit. Iste, maiores.
														</h3>
														<div class="mb-1">
															<span class="mr-2 badge badge-light">6.7 incheslor
															</span>

															<span class="mr-2 badge badge-light">128 GB</span>
														</div>

														<div class="mb-1">
															<i class=" d-inline-block text-decoration-line-through price-old"
																style="text-decoration: line-through">
																40.000.000đ</i>
															<b class="d-inline-block price-new ">-25%</b>
														</div>
														<strong
															class="fw-bold d-block mb-1 text-danger">38.990.000đ</strong>

														<div class=" mb-1 d-flex flex-end">
															<p class=" text-warning " style="font-size: 12px;">
																<i class=" fa-solid fa-star "></i>
																<i class=" fa-solid fa-star "></i>
																<i class=" fa-solid fa-star "></i>
																<i class="fa-solid fa-star-half-stroke "></i>
																<i class="fa-regular fa-star "></i>
															</p>
															<p class="ms-1 fw-light d-inline-block align-middle "
																style="font-size: 12px;">54</p>
														</div>

													</div>
												</a>
												<div class="mt-2  d-flex justify-content-between align-items-end">
													<a href="" class=" d-block  align-middle" style="font-size:14px ;">
														<i class="fa-regular fa-square-plus fa-sm"></i> so sánh
													</a>

													<a href="" class="d-block  align-middle" style="font-size:14px ;">
														<i class="fa-regular fa-heart fa-sm"></i> yêu thích
													</a>
												</div>
											</div>
										</div>
									</div>
								</div>


							</div>


						</div>


					</div>


		</section>

		</div>
		<!--end container-->
		</div>
		<!--end content-->

		<script>// Material Select Initialization
			$(document).ready(function () {
				$('.mdb-select').materialSelect();
				$('.my-owl-carousel').owlCarousel({
					items: 7,
					lazyLoad: true,
					loop: true,
					margin: 10, loop: true,
					autoplay: true,
					autoplayTimeout: 3000,
					autoplayHoverPause: true,
					nav: true,
					dots: true,
					navText: ["<i class='fa-solid fa-circle-chevron-left fa-lg' style='font-size:40px'></i>", "<i class='fa-solid fa-circle-chevron-right fa-lg' style='font-size:40px'></i>"],
				});
			});</script>
		<script src="/src/js/breadcrumb.js"></script>
		<script src="/src/js/backtop.js"></script>
	</body>

</html>
