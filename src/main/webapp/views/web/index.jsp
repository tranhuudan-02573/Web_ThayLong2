<%@ page import="vn.edu.hcmuaf.fit.model.phone.Image" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Set" %>
<%@ page import="vn.edu.hcmuaf.fit.model.phone.Sale" %>
<%@ page import="vn.edu.hcmuaf.fit.model.phone.Brand" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>


<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<title>Document</title>


	<meta name="viewport"
		  content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
</head>
<style type="text/css">
	.catetitle h2 {
		text-transform: uppercase;
		font-size: 22px;
		padding: 10px 0px;
		margin: 0;
	}

	.catetitle h2 a {
		color: #2e2e2e;
	}

	.carousel-indicators li {
		opacity: 1 !important;
	}

	.carousel-indicators .active {
		font-weight: bold;
	}

	.carousel-indicators {
		bottom: -0%;
	}
	.owl-nav button {
		background: unset !important;
	}
</style>

<body class="">

<div class="homecontent ">
	<div class="container ">
		<section class="homeslider py-5">
			<div class="row row-sm h-100 p-2">
				<div class="col-xl-8 col-lg-8 col-md-7">
					<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
						<div class="carousel-inner">
							<%   List<Sale> sales = (List<Sale> ) request.getAttribute("saleList");

								int size = sales.size();

							%>
						<%  for (int i = 0;i<sales.size();i++){ %>
								<% if(i==0){ %>
								<div class="carousel-item active ">
									<img src="<%= sales.get(i).getImg() %>" alt="" class="img-fluid w-100">
								</div>
								<% } else{%>


								<div class="carousel-item  ">
									<img src="<%= sales.get(i).getImg() %>" alt="" class="img-fluid w-100">
								</div>
							<% }%>
							<%}%>
						</div>
						<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button"
						   data-slide="prev">
							<i class="fa-solid fa-circle-chevron-left fa-lg" style="font-size: 50px !important;" ></i>
							<span class="sr-only">Previous</span>
						</a>
						<a class="carousel-control-next" href="#carouselExampleIndicators" role="button"
						   data-slide="next">
							<i class="fa-solid fa-circle-chevron-right fa-lg"  style="font-size: 50px !important;"></i>
							<span class="sr-only">Next</span>
						</a>
						<ol class="carousel-indicators m-0">

							<%  for (int i = 0;i<sales.size();i++){ %>
							<% if(i==0){ %>
							<li data-target="#carouselExampleIndicators" data-slide-to="<%=i%>"
								class=" w-100  text-center active" style="height: 0;">
								<div class="d-block d-sm-block">
									<br>
									<span><%=sales.get(i).getName()%></span>
									<hr class="m-0">
								</div>
							</li>
							<% } else{%>
							<li data-target="#carouselExampleIndicators" data-slide-to="<%=i%>"
								class=" w-100  text-center" style="height: 0;">
								<div class="d-block d-sm-block">
									<br>
									<span><%=sales.get(i).getName()%></span>
									<hr class="m-0">
								</div>
							</li>
							<% }%>
							<% }%>
						</ol>
					</div>
				</div>
				<div class="col-xl-4 col-lg-4 col-md-5 d-none d-sm-block">
					<div class="homeslider-right">
						<a href="#" title=""><img src="/images/anh7.jpg" alt="" class="img-fluid w-100"></a>
						<a href="#" title=""><img src="/images/anh8.png" alt=""
												  class="pt-1 img-fluid w-100"></a>
						<div class="news pt-1">
							<div class="d-flex justify-content-between align-items-center"><span
									class="text-uppercase fw-bold">news</span> <a href=""
																				  class="text-danger">Xem thêm</a></div>
							<ul class="list-unstyled m-0">
								<li class="media justify-content-center align-items-center  pb-1 ">
									<div class="bg-white mr-3 h-100">
										<img src="/images/anh9.jpg" class="" alt="...">
									</div>
									<div class="media-body  ">
										Đánh giá Galaxy Note 10+: Đẳng cấp “át chủ bài” của Samsung .
									</div>
								</li>
								<li
										class="media justify-content-center align-items-center pt-1 border-top border-danger pb-1">
									<img src="/images/anh10.jpg" class="mr-3" alt="...">
									<div class="media-body">
										Tech Offline: Khám phá siêu phẩm Samsung Galaxy Note 10 | Note 10+ cùng
									</div>
								</li>
								<li
										class="media justify-content-center align-items-center pt-1 border-top border-danger ">
									<img src="/images/anh10.jpg" class="mr-3" alt="...">
									<div class="media-body">
										Tech Offline: Khám phá siêu phẩm Samsung Galaxy Note 10 | Note 10+ cùng
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>
		<div class="homeads">
			<a href=""><img src="/images/Vui tuu truong.png" class="img-fluid w-100" style="height: 150px;"></a>
		</div>
		<section class="my-5 bg-light  ">
			<div class="card-header white-text danger-color text-center">
				<h5 class="mt-2 text-uppercase font-weight-bold">Các hãng hot</h5>
			</div>
			<div class="catebody">
				<div class="row w-100 mx-auto rounded-lg">

					<%
					List<Brand> brands = (List<Brand>) request.getAttribute("brandList");


						for (int i =0;i<brands.size();i++){%>

					<a class="border border-white  hvr-glow" href="/phone-filter?id=<%= brands.get(i).getId() %>" style="width:calc(100%/7) ; height: 100%;">
						<div class="p-2 ">
							<div class="picture bg-white mb-4 mx-auto " style="position:relative;  justify-content: center; align-items: center;
						border-radius: 50%;
					 width: 120px; height: 120px;">
								<img class="mx-auto" src="<%= brands.get(i).getLogo() %>" alt=""
									 style="position: absolute; right: 0; left: 0; top: 25%; object-fit: contain; max-width: 60px; max-height: 60px;">
							</div>
							<div class="text-center ">
								<h6 class="text-danger text-uppercase "><%= brands.get(i).getName() %></h6>
							</div>
						</div>

					</a>

					<%}%>
				</div>
			</div>

		</section>

		<!-- Modal: modalCart -->
		<div class="modal fade" id="modalCart" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
			 aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<!--Header-->
					<div class="modal-header">
						<h4 class="modal-title" id="myModalLabel">danh sách yêu thích của bạn</h4>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<!--Body-->
					<div class="modal-body">

						<table class="table table-hover">
							<thead>
							<tr>
								<th>#</th>
								<th>tên</th>
								<th>giá</th>
								<th>số lượng</th>
								<th>Remove</th>
							</tr>
							</thead>
							<tbody>
							<tr>
								<th scope="row">1</th>
								<td>iphone 14</td>
								<td>34000000$</td>
								<td>2</td>
								<td><a><i class="fas fa-times"></i></a></td>
							</tr>

							<tr class="total">
								<th scope="row">5</th>
								<td>Total</td>
								<td>400$</td>
								<td></td>
							</tr>
							</tbody>
						</table>

					</div>
					<!--Footer-->
					<div class="modal-footer">
						<button type="button" class="btn btn-outline-danger" data-dismiss="modal">Close</button>
						<button class="btn btn-danger">đến</button>
					</div>
				</div>
			</div>
		</div>
		<!-- Modal: modalCart -->


		<section class="my-5 select-event">


			<div class="card">

				<div class="card-body">
					<div class="title-image pb-4">
						<div class="text-center d-flex justify-content-between"
						><img src="https://cdn2.cellphones.com.vn/x/media/wysiwyg/json-hotsale/HOTSALE.png" alt="title" loading="lazy" >
							<div class="box-countdown " >
								<p class="title">Kết thúc sau: </p>
								<ul class="box-time  m-0 p-0">
									<li><p class="time">00</p> <p class="separate">:</p></li>
									<li><p class="time hourse">1</p> <p class="separate">:</p></li>
									<li><p class="time minutes">45</p> <p class="separate">:</p></li>
									<li><p class="time second">0</p> <p class="separate" style="margin: unset;"></p></li>
								</ul></div>
						</div>

					</div>
					<div class="introduce-products">
						<div class="owl-carousel owl-theme ">

							<c:forEach var="phone" items="${requestScope.phoneList}">

							<div class="item">

								<div class="card  " >
									<div class="card-body rounded-0" style="padding: 0.75rem;">
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
			</div>


		</section>
		<section class="homecate d-none d-sm-block my-5 select-toplike">
			<div class="card ">

				<div class="card-header bg-warning">
					<img src="https://cdn.tgdd.vn/2022/11/campaign/Top-sản-phẩm-Desk-1200x200.png" alt=""
						 class="w-100 img-fluid">
				</div>
				<div class="card-body select-toplike-body pad-section">
					<div class="introduce-products">
						<div class="owl-carousel owl-theme ">
							<div class="item">

								<div class="card  " >
									<div class="card-body rounded-0" style="padding: 0.75rem;">
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
											<div class="d-flex flex-column align-items-strech w-100  ">

												<div class=" align-self-start">
													<span class="badge badge-danger mr-1">Trả góp 0%</span>
												</div>

												<a href="/views/product.html " class="text-dark align-self-stretch" style="height: 375px;" >
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
							</div><div class="item">

							<div class="card  " >
								<div class="card-body rounded-0" style="padding: 0.75rem;">
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
										<div class="d-flex flex-column align-items-strech w-100  ">

											<div class=" align-self-start">
												<span class="badge badge-danger mr-1">Trả góp 0%</span>
											</div>

											<a href="/views/product.html " class="text-dark align-self-stretch" style="height: 375px;" >
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
						</div><div class="item">

							<div class="card  " >
								<div class="card-body rounded-0" style="padding: 0.75rem;">
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
										<div class="d-flex flex-column align-items-strech w-100  ">

											<div class=" align-self-start">
												<span class="badge badge-danger mr-1">Trả góp 0%</span>
											</div>

											<a href="/views/product.html " class="text-dark align-self-stretch" style="height: 375px;" >
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
						</div><div class="item">

							<div class="card  " >
								<div class="card-body rounded-0" style="padding: 0.75rem;">
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
										<div class="d-flex flex-column align-items-strech w-100  ">

											<div class=" align-self-start">
												<span class="badge badge-danger mr-1">Trả góp 0%</span>
											</div>

											<a href="/views/product.html " class="text-dark align-self-stretch" style="height: 375px;" >
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
						</div><div class="item">

							<div class="card  " >
								<div class="card-body rounded-0" style="padding: 0.75rem;">
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
										<div class="d-flex flex-column align-items-strech w-100  ">

											<div class=" align-self-start">
												<span class="badge badge-danger mr-1">Trả góp 0%</span>
											</div>

											<a href="/views/product.html " class="text-dark align-self-stretch" style="height: 375px;" >
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
						</div><div class="item">

							<div class="card  " >
								<div class="card-body rounded-0" style="padding: 0.75rem;">
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
										<div class="d-flex flex-column align-items-strech w-100  ">

											<div class=" align-self-start">
												<span class="badge badge-danger mr-1">Trả góp 0%</span>
											</div>

											<a href="/views/product.html " class="text-dark align-self-stretch" style="height: 375px;" >
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
						</div><div class="item">

							<div class="card  " >
								<div class="card-body rounded-0" style="padding: 0.75rem;">
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
										<div class="d-flex flex-column align-items-strech w-100  ">

											<div class=" align-self-start">
												<span class="badge badge-danger mr-1">Trả góp 0%</span>
											</div>

											<a href="/views/product.html " class="text-dark align-self-stretch" style="height: 375px;" >
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
						</div><div class="item">

							<div class="card  " >
								<div class="card-body rounded-0" style="padding: 0.75rem;">
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
										<div class="d-flex flex-column align-items-strech w-100  ">

											<div class=" align-self-start">
												<span class="badge badge-danger mr-1">Trả góp 0%</span>
											</div>

											<a href="/views/product.html " class="text-dark align-self-stretch" style="height: 375px;" >
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

			</div>


		</section>





		<!--end section sale-->
		<section class="sale-mobile d-block d-sm-none">
			<div class="catetitle">
				<h2><a href="">Điện thoại khuyến mại hot</a></h2>
			</div>
			<div class="item-sale">
				<ul class="nav">
					<li class="nav-item">
						<a class="nav-link text-dark rounded-pill" href="#">
							Samsung|Từ 6 - 10 triệu
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-dark rounded-pill" href="#">
							Oppo từ 3 - 6 triệu
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-dark rounded-pill" href="#">Xiaomi</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-dark rounded-pill" href="#">Apple</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-dark rounded-pill" href="#">Samsung|Từ 10 - 15 triệu</a>
					</li>
				</ul>

			</div>

			<div class="row row-md">
				<div class="col-6" style="border-right : 1px solid #e6e6e6; border-bottom : 1px solid #e6e6e6">
					<div class="card rounded-0 border-0">
						<a href="#" title="" class="mt-2"><img src="/images/mobile2.jpg" class=" img-fluid"
															   alt="..." style="width: 130px;height: 130px"></a>
						<div class="card-body">
							<h3><a href="#" title="" class="text-dark">SAMSUNG GALAXY</a></h3>
							<h5>14.990.000 <sup>đ</sup></h5>
							<p class="card-text">
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star-o" aria-hidden="true"></i>
								<br>
								<span>(66 đánh giá)</span>
							</p>
						</div>
						<p class="info-sale text-white">Trả góp 0%</p>
					</div>
				</div>
				<div class="col-6">
					<div class="card rounded-0 border-0">
						<a href="#" title="" class="mt-2"><img src="/images/mobile1.jpg" class=" img-fluid"
															   alt="..." style="width: 130px;height: 130px"></a>
						<div class="card-body">
							<h3><a href="#" title="" class="text-dark">SAMSUNG GALAXY</a></h3>
							<h5>14.990.000 <sup>đ</sup></h5>
							<p class="card-text">
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star-o" aria-hidden="true"></i>
								<br>
								<span>(66 đánh giá)</span>
							</p>
						</div>
						<p class="info-sale text-white">Trả góp 0%</p>
					</div>
				</div>
				<div class="col-6" style="border-right : 1px solid #e6e6e6">
					<div class="card rounded-0 border-0">
						<a href="#" title="" class="mt-2"><img src="/images/mobile3.jpg" class=" img-fluid"
															   alt="..." style="width: 130px;height: 130px"></a>
						<div class="card-body">
							<h3><a href="#" title="" class="text-dark">SAMSUNG GALAXY</a></h3>
							<h5>14.990.000 <sup>đ</sup></h5>
							<p class="card-text">
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star-o" aria-hidden="true"></i>
								<br>
								<span>(66 đánh giá)</span>
							</p>
						</div>
						<p class="info-sale text-white">Trả góp 0%</p>
					</div>
				</div>
				<div class="col-6" style="border-top : 1px solid #e6e6e6">
					<div class="card rounded-0 border-0">
						<a href="#" title="" class="mt-2"><img src="/images/mobile4.jpg" class=" img-fluid"
															   alt="..." style="width: 130px;height: 130px"></a>
						<div class="card-body">
							<h3><a href="#" title="" class="text-dark">SAMSUNG GALAXY</a></h3>
							<h5>14.990.000 <sup>đ</sup></h5>
							<p class="card-text">
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star-o" aria-hidden="true"></i>
								<br>
								<span>(66 đánh giá)</span>
							</p>
						</div>
						<p class="info-sale text-white">Trả góp 0%</p>
					</div>
				</div>

			</div>
		</section>
		<section class="lapBuyFast d-block d-sm-none">
			<div class="catetitle">
				<h2><a href="">Lap bán chạy</a></h2>
			</div>
			<div class="media">
				<a href="#" title=""><img src="/images/lap10.jpg" class="align-self-center mr-3" alt="..."
										  style="width: 126px;height: 126px"></a>
				<div class="media-body">
					<h3><a href="#" title="">Macbook Air 13 128GB 2018</a></h3>
					<h5 class="m-price">31.990.000 <u>đ</u></h5>
					<ul class="nav">
						<li class="nav-item">
							<a class="text-dark" href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#"><span>(80 đánh giá)</span></a>
						</li>

					</ul>
					<ul class="nav flex-column">
						<li class="nav-item">
							<a class="text-dark" href="#">
								<b>Màn hình :</b>
								<span>13.3 inchs LED Backlit</span>

							</a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#">
								<b>CPU: </b>
								Intel core i5 Dual-Core
							</a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#">
								<b>RAM: </b>
								8GB LPDDR3 213Mhz
							</a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#">
								<b>VGA: </b>
								Intel UHD Graphics 617 Shared
							</a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#">
								<b>HDH : </b>
								Mac0S
							</a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#">
								<b>Nặng : </b>
								1250g
							</a>
						</li>

					</ul>
				</div>
			</div>
			<hr>
			<div class="media">
				<a href="#" title=""><img src="/images/lap12.jpg" class="align-self-center mr-3" alt="..."
										  style="width: 126px;height: 126px"></a>
				<div class="media-body">
					<h3><a href="#" title="">Macbook Air 13 128GB 2018</a></h3>
					<h5 class="m-price">31.990.000 <u>đ</u></h5>
					<ul class="nav">
						<li class="nav-item">
							<a class="text-dark" href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#"><span>(80 đánh giá)</span></a>
						</li>

					</ul>
					<ul class="nav flex-column">
						<li class="nav-item">
							<a class="text-dark" href="#">
								<b>Màn hình :</b>
								<span>13.3 inchs LED Backlit</span>

							</a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#">
								<b>CPU: </b>
								Intel core i5 Dual-Core
							</a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#">
								<b>RAM: </b>
								8GB LPDDR3 213Mhz
							</a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#">
								<b>VGA: </b>
								Intel UHD Graphics 617 Shared
							</a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#">
								<b>HDH : </b>
								Mac0S
							</a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#">
								<b>Nặng : </b>
								1250g
							</a>
						</li>

					</ul>
				</div>
			</div>
			<hr>
			<div class="media">
				<a href="#" title=""><img src="/images/lap13.jpg" class="align-self-center mr-3" alt="..."
										  style="width: 126px;height: 126px"></a>
				<div class="media-body">
					<h3><a href="#" title="">Macbook Air 13 128GB 2018</a></h3>
					<h5 class="m-price">31.990.000 <u>đ</u></h5>
					<ul class="nav">
						<li class="nav-item">
							<a class="text-dark" href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#"><span>(80 đánh giá)</span></a>
						</li>

					</ul>
					<ul class="nav flex-column">
						<li class="nav-item">
							<a class="text-dark" href="#">
								<b>Màn hình :</b>
								<span>13.3 inchs LED Backlit</span>

							</a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#">
								<b>CPU: </b>
								Intel core i5 Dual-Core
							</a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#">
								<b>RAM: </b>
								8GB LPDDR3 213Mhz
							</a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#">
								<b>VGA: </b>
								Intel UHD Graphics 617 Shared
							</a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#">
								<b>HDH : </b>
								Mac0S
							</a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#">
								<b>Nặng : </b>
								1250g
							</a>
						</li>

					</ul>
				</div>
			</div>
			<hr>
			<div class="media">
				<a href="#" title=""><img src="/images/lap15.jpg" class="align-self-center mr-3" alt="..."
										  style="width: 126px;height: 126px"></a>
				<div class="media-body">
					<h3><a href="#" title="">Macbook Air 13 128GB 2018</a></h3>
					<h5 class="m-price">31.990.000 <u>đ</u></h5>
					<ul class="nav">
						<li class="nav-item">
							<a class="text-dark" href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#"><span>(80 đánh giá)</span></a>
						</li>

					</ul>
					<ul class="nav flex-column">
						<li class="nav-item">
							<a class="text-dark" href="#">
								<b>Màn hình :</b>
								<span>13.3 inchs LED Backlit</span>

							</a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#">
								<b>CPU: </b>
								Intel core i5 Dual-Core
							</a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#">
								<b>RAM: </b>
								8GB LPDDR3 213Mhz
							</a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#">
								<b>VGA: </b>
								Intel UHD Graphics 617 Shared
							</a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#">
								<b>HDH : </b>
								Mac0S
							</a>
						</li>
						<li class="nav-item">
							<a class="text-dark" href="#">
								<b>Nặng : </b>
								1250g
							</a>
						</li>

					</ul>
				</div>
			</div>
			<hr>
		</section>
		<!--end lapBuyFast-->
		<section class="foreign-product">

		</section>
		<!--end foreign-product-->
		<section class="accessories-mobile d-block d-sm-none">
			<div class="catetitle">
				<h2><a href="">Phụ kiện</a></h2>
			</div>
			<div class="row row-smm">
				<div class="col-sm-3 col-3">
					<a href="#" title=""><img src="/images/mob2.PNG" alt=""></a>
					<h6 class="text-center">Dán màn hình</h6>
				</div>
				<div class="col-sm-3 col-3">
					<a href="#" title=""><img src="/images/sac.png" alt=""></a>
					<h6 class="text-center">Sạc</h6>
				</div>
				<div class="col-sm-3 col-3">
					<a href="#" title=""><img src="/images/accessories6.PNG" alt=""></a>
					<h6 class="text-center">Phụ kiện khác</h6>
				</div>
				<div class="col-sm-3 col-3">
					<a href="#" title=""><img src="/images/memory.png" alt=""></a>
					<h6 class="text-center">Thẻ nhớ</h6>
				</div>
				<div class="col-sm-3 col-3">
					<a href="#" title=""><img src="/images/accessories6.PNG" alt=""></a>
					<h6 class="text-center">Phụ kiện khác</h6>
				</div>
				<div class="col-sm-3 col-3">
					<a href="#" title=""><img src="/images/memory.png" alt=""></a>
					<h6 class="text-center">Thẻ nhớ</h6>
				</div>
				<div class="col-sm-3 col-3">
					<a href="#" title=""><img src="/images/sac.png" alt=""></a>
					<h6 class="text-center">Sạc</h6>
				</div>
				<div class="col-sm-3 col-3">
					<a href="#" title=""><img src="/images/mob2.PNG" alt=""></a>
					<h6 class="text-center">Dán màn hình</h6>
				</div>
			</div>
		</section>
		<!--end accessories-mobile-->
		<section class="card-phone d-block d-sm-none mt-3">
			<div class="row">
				<div class="col-4">
					<a href="#" title=""><img src="/images/egift (1).png" class="img-fluid"></a>
				</div>
				<div class="col-4">
					<a href="#" title=""><img src="/images/the-cao (1).png" class="img-fluid"></a>
				</div>
				<div class="col-4">
					<a href="#" title=""><img src="/images/sim-so (1).png" class="img-fluid"></a>
				</div>
			</div>
		</section>
		<!--end card-phone-->
		<section class="news d-block d-sm-none">
			<div class="catetitle">
				<h2><a href="">Tin công nghệ</a></h2>
			</div>
			<ul class="list-unstyled">
				<li class="media">
					<img src="/images/anh11.PNG" class="mr-3" alt="...">
					<div class="media-body">
						<h5 class="mt-0 mb-1" style="font-size: 14px">Đây là 5 lý do bạn nên mua ngay siêu phẩm
							Samsung Galaxy Note 10</h5>
					</div>
				</li>
				<li class="media">
					<img src="/images/anh11.PNG" class="mr-3" alt="...">
					<div class="media-body">
						<h5 class="mt-0 mb-1" style="font-size: 14px">Đây là 5 lý do bạn nên mua ngay siêu phẩm
							Samsung Galaxy Note 10</h5>
					</div>
				</li>
				<li class="media">
					<img src="/images/anh11.PNG" class="mr-3" alt="...">
					<div class="media-body">
						<h5 class="mt-0 mb-1" style="font-size: 14px">Đây là 5 lý do bạn nên mua ngay siêu phẩm
							Samsung Galaxy Note 10</h5>
					</div>
				</li>
			</ul>
		</section>
		<!--end news-->

		<!--end section homecate-->

		<section class="my-5 tab-index section-multi" >
			<div class="d-flex w-100 justify-content-between text-center align-items-center">
				<h5 class="mt-2 text-uppercase font-weight-bold">gợi ý hôm nay</h5>
				<ul class="nav w-75 nav-tabs row " id="myTab" role="tablist" style="border: 0;">
					<li class="nav-item col-3 text-center " >
						<a class="nav-link bg-light text-dark text-uppercase	 active " id="home-tab"
						   data-toggle="tab" href="#tragop0" role="tab" aria-controls="home"
						   aria-selected="true"> <span class="btn-floating btn-md  btn-default m-0 mr-2"style="box-shadow: none;"><i class="fas fa-bolt"></i></span><strong>
							Trả góp 0%
						</strong></a>



					</li>
					<li class="nav-item   text-center col-3" >
						<a class="nav-link text-dark  bg-light text-uppercase" id="hot-tab" data-toggle="tab"
						   href="#hot" role="tab" aria-controls="profile" aria-selected="false"><span class="btn-floating btn-md bg-light  btn-default m-0 mr-2"style="box-shadow: none;"><i class="fas fa-bolt"></i></span>
							<strong>hot</strong></a>
					</li>
					<li class="nav-item  text-center col-3" >
						<a class="nav-link  text-dark bg-light text-uppercase " id="promot-tab" data-toggle="tab" href="#buyest"
						   role="tab" aria-controls="profile" aria-selected="false"><span class="btn-floating btn-md  btn-default m-0 mr-2"style="box-shadow: none;"><i class="fas fa-bolt"></i></span><strong>khuyến mãi</strong></a>
					</li>
					<li class="nav-item  text-center col-3"  >
						<a class="nav-link text-dark bg-light text-uppercase" id="buyest-tab" data-toggle="tab" href="#discount"
						   role="tab" aria-controls="profile" aria-selected="false"><span class="btn-floating btn-md  btn-default m-0 mr-2" style="box-shadow: none;"><i class="fas fa-bolt"></i></span><strong>mua nhiều</strong></a>
					</li>



				</ul>
			</div>
			<div class="catebody">
				<div class="tab-content    pl-0 pr-0 "  id="myTabContent">
					<div class="tab-pane fade show active" id="tragop0" role="tabpanel"
						 aria-labelledby="tragop0-tab">
						<div class="products-mobile mt-3 w-100 " style="margin-top: 0 !important;">
							<div class="row w-100 mx-auto  ">
								<div class="p-2" style="box-shadow: unset; width: 20%;">
									<div class="card border rounded-2 " >
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
												<div class="d-flex flex-column align-items-strech w-100  ">

													<div class=" align-self-start">
														<span class="badge badge-danger mr-1">Trả góp 0%</span>
													</div>

													<a href="/views/product.html " class="text-dark align-self-stretch" style="height: 375px;" >
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
								<div class="p-2" style="box-shadow: unset; width: 20%;">
									<div class="card border rounded-2 " >
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
												<div class="d-flex flex-column align-items-strech w-100  ">

													<div class=" align-self-start">
														<span class="badge badge-danger mr-1">Trả góp 0%</span>
													</div>

													<a href="/views/product.html " class="text-dark align-self-stretch" style="height: 375px;" >
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
								<div class="p-2" style="box-shadow: unset; width: 20%;">
									<div class="card border rounded-2 " >
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
												<div class="d-flex flex-column align-items-strech w-100  ">

													<div class=" align-self-start">
														<span class="badge badge-danger mr-1">Trả góp 0%</span>
													</div>

													<a href="/views/product.html " class="text-dark align-self-stretch" style="height: 375px;" >
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
								<div class="p-2" style="box-shadow: unset; width: 20%;">
									<div class="card border rounded-2 " >
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
												<div class="d-flex flex-column align-items-strech w-100  ">

													<div class=" align-self-start">
														<span class="badge badge-danger mr-1">Trả góp 0%</span>
													</div>

													<a href="/views/product.html " class="text-dark align-self-stretch" style="height: 375px;" >
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
								<div class="p-2" style="box-shadow: unset; width: 20%;">
									<div class="card border rounded-2 " >
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
												<div class="d-flex flex-column align-items-strech w-100  ">

													<div class=" align-self-start">
														<span class="badge badge-danger mr-1">Trả góp 0%</span>
													</div>

													<a href="/views/product.html " class="text-dark align-self-stretch" style="height: 375px;" >
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
						<div class="text-center mt-2">
							<button class="btn btn-danger text-uppercase px-5">xem thêm</button>
						</div>
					</div>
					<div class="tab-pane fade" id="hot" role="tabpanel" aria-labelledby="hot-tab">
						<div class="products-mobile mt-3 w-100 " style="margin-top: 0 !important;">
							<div class="row w-100 mx-auto  ">
								<div class="p-2" style="box-shadow: unset; width: 20%;">
									<div class="card border rounded-2 " >
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
												<div class="d-flex flex-column align-items-strech w-100  ">

													<div class=" align-self-start">
														<span class="badge badge-danger mr-1">Trả góp 0%</span>
													</div>

													<a href="/views/product.html " class="text-dark align-self-stretch" style="height: 375px;" >
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
								<div class="p-2" style="box-shadow: unset; width: 20%;">
									<div class="card border rounded-2 " >
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
												<div class="d-flex flex-column align-items-strech w-100  ">

													<div class=" align-self-start">
														<span class="badge badge-danger mr-1">Trả góp 0%</span>
													</div>

													<a href="/views/product.html " class="text-dark align-self-stretch" style="height: 375px;" >
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
								<div class="p-2" style="box-shadow: unset; width: 20%;">
									<div class="card border rounded-2 " >
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
												<div class="d-flex flex-column align-items-strech w-100  ">

													<div class=" align-self-start">
														<span class="badge badge-danger mr-1">Trả góp 0%</span>
													</div>

													<a href="/views/product.html " class="text-dark align-self-stretch" style="height: 375px;" >
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
								<div class="p-2" style="box-shadow: unset; width: 20%;">
									<div class="card border rounded-2 " >
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
												<div class="d-flex flex-column align-items-strech w-100  ">

													<div class=" align-self-start">
														<span class="badge badge-danger mr-1">Trả góp 0%</span>
													</div>

													<a href="/views/product.html " class="text-dark align-self-stretch" style="height: 375px;" >
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
								<div class="p-2" style="box-shadow: unset; width: 20%;">
									<div class="card border rounded-2 " >
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
												<div class="d-flex flex-column align-items-strech w-100  ">

													<div class=" align-self-start">
														<span class="badge badge-danger mr-1">Trả góp 0%</span>
													</div>

													<a href="/views/product.html " class="text-dark align-self-stretch" style="height: 375px;" >
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
								<div class="p-2" style="box-shadow: unset; width: 20%;">
									<div class="card border rounded-2 " >
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
												<div class="d-flex flex-column align-items-strech w-100  ">

													<div class=" align-self-start">
														<span class="badge badge-danger mr-1">Trả góp 0%</span>
													</div>

													<a href="/views/product.html " class="text-dark align-self-stretch" style="height: 375px;" >
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
								<div class="p-2" style="box-shadow: unset; width: 20%;">
									<div class="card border rounded-2 " >
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
												<div class="d-flex flex-column align-items-strech w-100  ">

													<div class=" align-self-start">
														<span class="badge badge-danger mr-1">Trả góp 0%</span>
													</div>

													<a href="/views/product.html " class="text-dark align-self-stretch" style="height: 375px;" >
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
						<div class="text-center mt-2">
							<button class="btn btn-danger text-uppercase px-5">xem thêm</button>
						</div>
					</div>
					<div class="tab-pane fade" id="buyest" role="tabpanel" aria-labelledby="buyest-tab">
						<div class="products-mobile mt-3 w-100 " style="margin-top: 0 !important;">
							<div class="row w-100 mx-auto  ">
								<div class="p-2" style="box-shadow: unset; width: 20%;">
									<div class="card border rounded-2 " >
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
												<div class="d-flex flex-column align-items-strech w-100  ">

													<div class=" align-self-start">
														<span class="badge badge-danger mr-1">Trả góp 0%</span>
													</div>

													<a href="/views/product.html " class="text-dark align-self-stretch" style="height: 375px;" >
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
								</div>	<div class="p-2" style="box-shadow: unset; width: 20%;">
								<div class="card border rounded-2 " >
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
											<div class="d-flex flex-column align-items-strech w-100  ">

												<div class=" align-self-start">
													<span class="badge badge-danger mr-1">Trả góp 0%</span>
												</div>

												<a href="/views/product.html " class="text-dark align-self-stretch" style="height: 375px;" >
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
							</div>	<div class="p-2" style="box-shadow: unset; width: 20%;">
								<div class="card border rounded-2 " >
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
											<div class="d-flex flex-column align-items-strech w-100  ">

												<div class=" align-self-start">
													<span class="badge badge-danger mr-1">Trả góp 0%</span>
												</div>

												<a href="/views/product.html " class="text-dark align-self-stretch" style="height: 375px;" >
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
							</div>	<div class="p-2" style="box-shadow: unset; width: 20%;">
								<div class="card border rounded-2 " >
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
											<div class="d-flex flex-column align-items-strech w-100  ">

												<div class=" align-self-start">
													<span class="badge badge-danger mr-1">Trả góp 0%</span>
												</div>

												<a href="/views/product.html " class="text-dark align-self-stretch" style="height: 375px;" >
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
							</div>	<div class="p-2" style="box-shadow: unset; width: 20%;">
								<div class="card border rounded-2 " >
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
											<div class="d-flex flex-column align-items-strech w-100  ">

												<div class=" align-self-start">
													<span class="badge badge-danger mr-1">Trả góp 0%</span>
												</div>

												<a href="/views/product.html " class="text-dark align-self-stretch" style="height: 375px;" >
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
						<div class="text-center mt-2">
							<button class="btn btn-danger text-uppercase px-5">xem thêm</button>
						</div>
					</div>
					<div class="tab-pane fade" id="discount" role="tabpanel" aria-labelledby="discount-tab">
						<div class="products-mobile mt-3 w-100 " style="margin-top: 0 !important;">
							<div class="row w-100 mx-auto  ">

								<div class="p-2" style="box-shadow: unset; width: 20%;">
									<div class="card border rounded-2 " >
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
												<div class="d-flex flex-column align-items-strech w-100  ">

													<div class=" align-self-start">
														<span class="badge badge-danger mr-1">Trả góp 0%</span>
													</div>

													<a href="/views/product.html " class="text-dark align-self-stretch" style="height: 375px;" >
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
								<div class="p-2" style="box-shadow: unset; width: 20%;">
									<div class="card border rounded-2 " >
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
												<div class="d-flex flex-column align-items-strech w-100  ">

													<div class=" align-self-start">
														<span class="badge badge-danger mr-1">Trả góp 0%</span>
													</div>

													<a href="/views/product.html " class="text-dark align-self-stretch" style="height: 375px;" >
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
								<div class="p-2" style="box-shadow: unset; width: 20%;">
									<div class="card border rounded-2 " >
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
												<div class="d-flex flex-column align-items-strech w-100  ">

													<div class=" align-self-start">
														<span class="badge badge-danger mr-1">Trả góp 0%</span>
													</div>

													<a href="/views/product.html " class="text-dark align-self-stretch" style="height: 375px;" >
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
						<div class="text-center mt-2">
							<button class="btn btn-danger text-uppercase px-5">xem thêm</button>
						</div>
					</div>

				</div>


			</div>




		</section>





		<section class="homecate d-none d-sm-block my-5 section-hot">
			<div class="card">
				<div class="card-header white-text danger-color d-flex justify-content-between align-items-center">
					<h5 class="mt-2 text-uppercase font-weight-bold">điện thoại hot</h5>
					<div>
						<button class="btn btn-white text-danger btn-sm m-0 btn-rounded  waves-effect waves-light"><span class="h6">samsung</span></button>
						<button class="btn btn-white text-danger btn-sm m-0 btn-rounded waves-effect waves-light"><span class="h6">Iphone</span></button>
						<button class="btn btn-white text-danger btn-sm m-0 btn-rounded waves-effect waves-light"><span class="h6">xem tấtcả</span></button>
					</div>
				</div>
				<div class="card-body hot-body">
					<div class="introduce-products">
						<div class="owl-carousel owl-theme ">
							<div class="item">

								<div class="card  " >
									<div class="card-body rounded-0" style="padding: 0.75rem;">
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
											<div class="d-flex flex-column align-items-strech w-100  ">

												<div class=" align-self-start">
													<span class="badge badge-danger mr-1">Trả góp 0%</span>
												</div>

												<a href="/views/product.html " class="text-dark align-self-stretch" style="height: 375px;" >
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
							<div class="item">

								<div class="card  " >
									<div class="card-body rounded-0" style="padding: 0.75rem;">
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
											<div class="d-flex flex-column align-items-strech w-100  ">

												<div class=" align-self-start">
													<span class="badge badge-danger mr-1">Trả góp 0%</span>
												</div>

												<a href="/views/product.html " class="text-dark align-self-stretch" style="height: 375px;" >
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
							<div class="item">

								<div class="card  " >
									<div class="card-body rounded-0" style="padding: 0.75rem;">
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
											<div class="d-flex flex-column align-items-strech w-100  ">

												<div class=" align-self-start">
													<span class="badge badge-danger mr-1">Trả góp 0%</span>
												</div>

												<a href="/views/product.html " class="text-dark align-self-stretch" style="height: 375px;" >
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
							<div class="item">

								<div class="card  " >
									<div class="card-body rounded-0" style="padding: 0.75rem;">
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
											<div class="d-flex flex-column align-items-strech w-100  ">

												<div class=" align-self-start">
													<span class="badge badge-danger mr-1">Trả góp 0%</span>
												</div>

												<a href="/views/product.html " class="text-dark align-self-stretch" style="height: 375px;" >
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
							<div class="item">

								<div class="card  " >
									<div class="card-body rounded-0" style="padding: 0.75rem;">
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
											<div class="d-flex flex-column align-items-strech w-100  ">

												<div class=" align-self-start">
													<span class="badge badge-danger mr-1">Trả góp 0%</span>
												</div>

												<a href="/views/product.html " class="text-dark align-self-stretch" style="height: 375px;" >
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
							<div class="item">

								<div class="card  " >
									<div class="card-body rounded-0" style="padding: 0.75rem;">
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
											<div class="d-flex flex-column align-items-strech w-100  ">

												<div class=" align-self-start">
													<span class="badge badge-danger mr-1">Trả góp 0%</span>
												</div>

												<a href="/views/product.html " class="text-dark align-self-stretch" style="height: 375px;" >
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
							<div class="item">

								<div class="card  " >
									<div class="card-body rounded-0" style="padding: 0.75rem;">
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
											<div class="d-flex flex-column align-items-strech w-100  ">

												<div class=" align-self-start">
													<span class="badge badge-danger mr-1">Trả góp 0%</span>
												</div>

												<a href="/views/product.html " class="text-dark align-self-stretch" style="height: 375px;" >
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

			</div>


		</section>



		<section class="my-5 brand">


			<div class="owl-carousel owl-theme my-owl-carousel">
				<c:forEach items="${requestScope.saleList}" var="i">
					<a href="" >  <img class="owl-lazy border border-danger  rounded" style="border-width: 2px !important;" data-src="${i.img}" data-src-retina="https://cdn2.cellphones.com.vn/690x300,webp,q100/https://dashboard.cellphones.com.vn/storage/uu-dai-tt-hp-1.png" alt=""></a>

				</c:forEach>
<%--				<a href="" >  <img class="owl-lazy border border-danger  rounded" style="border-width: 2px !important;" data-src="https://cdn2.cellphones.com.vn/690x300,webp,q100/https://dashboard.cellphones.com.vn/storage/uu-dai-tt-hp-1.png" data-src-retina="https://cdn2.cellphones.com.vn/690x300,webp,q100/https://dashboard.cellphones.com.vn/storage/uu-dai-tt-hp-1.png" alt=""></a>--%>
<%--				<a href="" > <img class="owl-lazy border border-danger rounded" style="border-width: 2px !important;" data-src="https://cdn2.cellphones.com.vn/690x300,webp,q100/https://dashboard.cellphones.com.vn/storage/evo-690-300-max_189.png" data-src-retina="https://cdn2.cellphones.com.vn/690x300,webp,q100/https://dashboard.cellphones.com.vn/storage/evo-690-300-max_189.png" alt=""></a>--%>
<%--				<a href="" >    <img class="owl-lazy border border-danger rounded" style="border-width: 2px !important;" data-src="https://cdn2.cellphones.com.vn/690x300,webp,q100/https://dashboard.cellphones.com.vn/storage/690x300_uu-dai_JCB.png" data-src-retina="https://cdn2.cellphones.com.vn/690x300,webp,q100/https://dashboard.cellphones.com.vn/storage/690x300_uu-dai_JCB.png" alt=""></a>--%>
<%--				<a href="" >    <img class="owl-lazy border border-danger rounded" style="border-width: 2px !important;" data-src="https://cdn2.cellphones.com.vn/690x300,webp,q100/https://dashboard.cellphones.com.vn/storage/ban-viet-690-300-max.png" data-src-retina="https://cdn2.cellphones.com.vn/690x300,webp,q100/https://dashboard.cellphones.com.vn/storage/ban-viet-690-300-max.png" alt=""></a>--%>



			</div>

		</section>



		<!--end homeaccessories-->



		<!--end card-mobile-->
	</div>
</div>

<content tag="local_script">
	<script>// Material Select Initialization
	$(document).ready(function () {
		$('.mdb-select').materialSelect();
		$('.my-owl-carousel').owlCarousel({
			items:3,
			lazyLoad:true,
			loop:true,
			margin:10,
			autoplay:true,
			autoplayTimeout:3000,
			autoplayHoverPause:true,
			nav:true,
			dots:false,
			navText: ["<i class='fa-solid fa-circle-chevron-left fa-lg' style='font-size:40px'></i>","<i class='fa-solid fa-circle-chevron-right fa-lg' style='font-size:40px'></i>"],
		});
	});</script>

</content>


</body>

</html>
