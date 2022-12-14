<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.model.phone.Phone" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.*" %>
<%@ page import="vn.edu.hcmuaf.fit.model.phone.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>Document</title>

    <content tag="local_style">
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

            .sort .mdb-select input.select-dropdown.form-control {
                margin-bottom: 0;
            }

        </style>
    </content>

</head>

<body>


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
            </ul>
        </section>
        <!--end homeMenuMobile1-->
        <section class="homeMenuMobile2 d-block d-sm-none nav-scroller mt-2">
            <ul class="nav">
                <li class="nav-item rounded-pill bg-white mr-1">
                    <a class="nav-link" href="#" style="width: 100px;"><img src="/images/apple.jpg"
                                                                            class="img-fluid"></a>
                </li>
                <li class="nav-item rounded-pill bg-white mr-1">
                    <a class="nav-link" href="#" style="width: 100px;"><img src="/images/vivo.png"
                                                                            class="img-fluid"></a>
                </li>
                <li class="nav-item rounded-pill bg-white mr-1">
                    <a class="nav-link" href="#" style="width: 100px;"><img src="/images/vivo.png"
                                                                            class="img-fluid"></a>
                </li>
                <li class="nav-item rounded-pill bg-white mr-1">
                    <a class="nav-link" href="#" style="width: 100px;"><img src="/images/apple.jpg"
                                                                            class="img-fluid"></a>
                </li>
                <li class="nav-item rounded-pill bg-white mr-1 ">
                    <a class="nav-link" href="#" style="width: 100px;"><img src="/images/samsung.png"
                                                                            class="img-fluid"></a>
                </li>
                <li class="nav-item rounded-pill bg-white mr-1 ">
                    <a class="nav-link" href="#" style="width: 100px;"> <img src="/images/vivo.png"
                                                                             class="img-fluid"></a>
                </li>
                <li class="nav-item rounded-pill bg-white mr-1">
                    <a class="nav-link" href="#" style="width: 100px;"><img src="/images/vivo.png"
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

                            <form method="get" action="/phone-filter" id="form">

                                <div class="form-check form-check-block mb-2 col-6 pr-0 ">
                                    <a class="text-dark"
                                       href="${pageContext.request.contextPath}/phone-filter?name=brand">
                                        <input type="checkbox" class="form-check-input" id="materialInline1" value="0">
                                        <label class="form-check-label w-100" for="materialInline1">Tất cả</label>
                                    </a>
                                </div>

                                <c:forEach var="brand" items="${requestScope.brands}">
                                    <div class="form-check form-check-block mb-2 col-6 pr-0 ">
                                        <a class="text-dark"
                                           href="${pageContext.request.contextPath}/phone-filter?name=brand&id=${brand.id}">
                                            <input type="checkbox" class="form-check-input" name="brand"
                                                   id="brandId${brand.id}">
                                            <label class="form-check-label w-100"
                                                   for="brandId${brand.id}">${brand.name}</label>
                                        </a>
                                    </div>
                                </c:forEach>
                            </form>
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

                </div>
                <div class="col-xl-9 bg-white p-0 ">
                    <c:choose>
                        <c:when test="${requestScope.brand!=null && requestScope.model ==null}">
                            <div class="card border  mb-4" style="box-shadow: unset;">
                                <div class="card-header">
                                    <div class="d-flex bd-highlight">
                                        <div class=" w-100 bd-highlight d-none d-sm-block">
                                            <h3 class="m-0">
                                                <a href="" title="" class="text-dark h4  " style="font-size: 22px">
                                                        ${requestScope.brand.name}
                                                    <span style="font-size: 14px ; opacity: 0.7">(${requestScope.total} sản phẩm)</span>
                                                </a>
                                            </h3>
                                        </div>
                                    </div>
                                </div>


                            </div>
                        </c:when>

                        <c:when test="${requestScope.brand ==null&& requestScope.model !=null}">
                            <div class="card border  mb-4" style="box-shadow: unset;">
                                <div class="card-header">
                                    <div class="d-flex bd-highlight">
                                        <div class=" w-100 bd-highlight d-none d-sm-block">
                                            <h3 class="m-0">
                                                <a href="" title="" class="text-dark h4  " style="font-size: 22px">
                                                        ${requestScope.model.name}
                                                    <span style="font-size: 14px ; opacity: 0.7">(${requestScope.total} sản phẩm)</span>
                                                </a>
                                            </h3>
                                        </div>
                                    </div>
                                </div>


                            </div>

                        </c:when>
                        <c:otherwise>

                            <div class="card border  mb-4" style="box-shadow: unset;">
                                <div class="card-header">
                                    <div class="d-flex bd-highlight">
                                        <div class=" w-100 bd-highlight d-none d-sm-block">
                                            <h3 class="m-0">

                                                <a href="#" title="" class="text-dark h4  " style="font-size: 22px">
                                                    ĐIỆN THOẠI


                                                    <span style="font-size: 14px ; opacity: 0.7">(${requestScope.total}+ sản phẩm)</span>
                                                </a>
                                            </h3>
                                        </div>
                                    </div>
                                </div>
                                <div class="cart-body p-4">
                                    <div class="owl-carousel owl-theme my-owl-carousel">

                                        <c:forEach var="brand" items="${requestScope.brands}">

                                            <a href="${pageContext.request.contextPath}/phone-filter?name=brand&id=${brand.id}"
                                               class="w-100 hvr-grow mx-2">
                                                <img class="owl-lazy "
                                                     style="max-width: 108px !important; max-height: 40px !important;"
                                                     data-src="${brand.logo}" alt="">
                                            </a>
                                        </c:forEach>

                                    </div>
                                </div>


                            </div>


                        </c:otherwise>
                    </c:choose>


                    <%
                        List<Model> models = (List<Model>) request.getAttribute("models");
                        if (!models.isEmpty()) { %>

                    <div class="card  border  mb-4" style="box-shadow: unset;">
                        <div class="card-header">
                            <h5 class=" font-weight-bold   m-0 text-uppercase ">
                                dòng sản phẩm
                            </h5>
                        </div>

                        <div class="card-body  ">
                            <div class="model-owl">
                                <div class="owl-carousel owl-theme ">

                                    <c:forEach var="model" items="<%=models %>">

                                        <div class="item  ">
                                            <div class="cdt-product text-center w-100 p-2">
                                                <a href="${pageContext.request.contextPath}/phone-filter?name=model&id=${model.id}"
                                                   title="iPhone 12 Series">
                                                    <div class="cdt-product__img hvr-shrink mb-2">
                                                        <img src="${model.img}"
                                                             alt="iPhone 12 Series" title="iPhone 12 Series">
                                                    </div>
                                                    <div class="cdt-product__info text-center ">
                                                        <div class="cdt-product__name  mb-1">${model.name}</div>
                                                        <div class="cdt-product__show-promo">
                                                            <div class="strike-price">Chỉ từ 15.999.000đ</div>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </c:forEach>

                                </div>
                            </div>

                        </div>
                    </div>
                    <%}%>
                    <div class="d-flex  justify-content-between align-items-center">
                        <ul class="nav nav-tabs " id="myTabProductList" role="tablist">
                            <%
                                Map<Sale, List<Phone>> sales = (Map<Sale, List<Phone>>) request.getAttribute("phones");
                                List<Sale> key = new ArrayList<>(sales.keySet());

                                for (int j = 0; j < key.size(); j++) {
                            %>
                            <li class="nav-item mr-2">
                                <a class="nav-link <%=(j==0)?"active":""%> text-dark bg-light"
                                   id="<%= key.get(j).getName() %>"
                                   data-toggle="tab"
                                   href="#tabpane-<%=key.get(j).getId()  %>" role="tab" aria-controls="home"
                                   aria-selected="true"><%= key.get(j).getName() %>
                                </a>
                            </li>


                            <%}%>

                        </ul>
                        <div class="sort float-right ml-auto ">

                            <form action="" method="get">

                                <select class="mdb-select md-form m-0 " style="color:red !important;">
                                    <option value="1" class="text-danger">Sắp xếp theo A - Z</option>
                                    <option value="2">Sắp xếp theo Z - A</option>
                                    <option value="3">Sắp xếp theo giá giảm</option>
                                    <option value="4">Sắp xếp theo giá tăng</option>
                                    <option value="5">Sắp xếp theo lượt mua giảm</option>
                                    <option value="5">Sắp xếp theo lượt mua tăng</option>
                                </select>

                            </form>

                        </div>
                    </div>
                    <div class="tab-content pl-0 pr-0" id="myTabContent">
                        <%
                            for (int i = 0; i < key.size(); i++) {
                        %>
                        <div class="tab-pane fade show <%=(i==0)?"active":""%>" id="tabpane-<%=key.get(i).getId()  %>"
                             role="tabpanel"
                             aria-labelledby="<%= key.get(i).getName()  %>">
                            <div class="products-mobile mt-3 w-100">
                                <div class="row w-100 mx-auto row-cols-4  ">
                                    <%

                                        for (Phone phone : sales.get(key.get(i))
                                        ) {


                                    %>
                                    <div class="col-6 col-sm-3 p-0">
                                        <div class="card border rounded-0" style="box-shadow: unset;">
                                            <div class="card-body " style="padding: 0.75rem;">

                                                <%--
                                                  Created by IntelliJ IDEA.
                                                  User: dell
                                                  Date: 12/10/2022
                                                  Time: 6:26 PM
                                                  To change this template use File | Settings | File Templates.
                                                --%>

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
                                                        <div class=" align-self-start" style="height:18px;">
                                                            <% for (vn.edu.hcmuaf.fit.model.phone.PhonePromot promot : phone.getPromotList()
                                                            ) {
                                                            %>


                                                            <span class="badge badge-danger mr-1"><%=(promot.getPromotId() == 1) ? promot.getPromot().getName() : ""%></span>
                                                            <%

                                                                }
                                                            %>
                                                        </div>
                                                        <a href="${pageContext.request.contextPath}phone-detail?id=<%=phone.getId()%> "
                                                           class="text-dark align-self-stretch"
                                                           style="height: 525px;">
                                                            <div class=" cart-content  h-100">
                                                                <div
                                                                        class="my-2 d-block overflow-hidden item hvr-float ">
                                                                    <img class="object-cover mw-100 "
                                                                         src="<%=phone.getThumbnail()%>"
                                                                         alt="">
                                                                </div>
                                                                <h3 class=" product-title overflow-hidden   mb-1 "
                                                                    style="display: -webkit-box;
-webkit-box-orient: vertical;
-webkit-line-clamp: 2;font-size: 14px;">
                                                                    <%=phone.getName()%>
                                                                </h3>

                                                                <div class="mb-1">
                                                                    <%
                                                                        for (PhoneSpec spec : phone.getSpecList()
                                                                        ) {

                                                                    %>
                                                                    <span class="mr-2 badge badge-light mb-1">
																				<%=(spec.getSpecId() == 1 || spec.getSpecId() == 2) ? spec.getValue() : ""%>
																			</span>


                                                                    <%}%>
                                                                </div>

                                                                <div class="mb-1">
                                                                    <i class=" d-inline-block text-decoration-line-through price-old"
                                                                       style="text-decoration: line-through">
                                                                        243242đ</i>
                                                                    <span
                                                                            class="badge badge-default peach-gradient">-25%</span>
                                                                    <b class="d-inline-block price-new "></b>
                                                                </div>
                                                                <strong
                                                                        class="fw-bold d-block mb-1 text-danger"><%=phone.getPrice()%>
                                                                    đ</strong>

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
                                                                    <%
                                                                        java.util.Set<PhoneSpec> specs = phone.getSpecList();
                                                                        List<PhoneSpec> specList = new ArrayList<>(specs);

                                                                        for (int j = 2; j < specList.size(); j++) {


                                                                    %>
                                                                    <p
                                                                            class="d-flex quote  text-ellipsis overflow-hidden text-break">
                                                                        <%=specList.get(j).getSpec().getName() %>
                                                                        : <%=specList.get(j).getValue() %>

                                                                    </p>
                                                                    <%}%>
                                                                </div>

                                                            </div>
                                                        </a>
                                                        <div class="mt-2  d-flex justify-content-between ">
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
                                    <% }%>
                                </div>
                            </div>
                        </div>
                        <%}%>
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
            </div>
        </section>
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

                                                <a href="/views/product.html" class="text-dark">
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

                                                <a href="/views/product.html" class="text-dark">
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

                                                <a href="/views/product.html" class="text-dark">
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

                                                <a href="/views/product.html" class="text-dark">
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

                                                <a href="/views/product.html" class="text-dark">
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

                                                <a href="/views/product.html" class="text-dark">
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

                                                <a href="/views/product.html" class="text-dark">
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

                                        <a href="/views/product.html" class="text-dark">
                                            <div class="align-items-start cart-content  h-100">
                                                <div class="my-2 d-block overflow-hidden item hvr-float "><img
                                                        class="object-cover mw-100 "
                                                        src="https://cdn.tgdd.vn/Products/Images/42/210652/iphone-11-pro-512gb-white-600x600.jpg"
                                                        alt=""/></div>
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

                                        <a href="/views/product.html" class="text-dark">
                                            <div class="align-items-start cart-content  h-100">
                                                <div class="my-2 d-block overflow-hidden item hvr-float "><img
                                                        class="object-cover mw-100 "
                                                        src="https://cdn.tgdd.vn/Products/Images/42/210652/iphone-11-pro-512gb-white-600x600.jpg"
                                                        alt=""/></div>
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

                                        <a href="/views/product.html" class="text-dark">
                                            <div class="align-items-start cart-content  h-100">
                                                <div class="my-2 d-block overflow-hidden item hvr-float "><img
                                                        class="object-cover mw-100 "
                                                        src="https://cdn.tgdd.vn/Products/Images/42/210652/iphone-11-pro-512gb-white-600x600.jpg"
                                                        alt=""/></div>
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

                                        <a href="/views/product.html" class="text-dark">
                                            <div class="align-items-start cart-content  h-100">
                                                <div class="my-2 d-block overflow-hidden item hvr-float "><img
                                                        class="object-cover mw-100 "
                                                        src="https://cdn.tgdd.vn/Products/Images/42/210652/iphone-11-pro-512gb-white-600x600.jpg"
                                                        alt=""/></div>
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

                                        <a href="/views/product.html" class="text-dark">
                                            <div class="align-items-start cart-content  h-100">
                                                <div class="my-2 d-block overflow-hidden item hvr-float "><img
                                                        class="object-cover mw-100 "
                                                        src="https://cdn.tgdd.vn/Products/Images/42/210652/iphone-11-pro-512gb-white-600x600.jpg"
                                                        alt=""/></div>
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

                                        <a href="/views/product.html" class="text-dark">
                                            <div class="align-items-start cart-content  h-100">
                                                <div class="my-2 d-block overflow-hidden item hvr-float "><img
                                                        class="object-cover mw-100 "
                                                        src="https://cdn.tgdd.vn/Products/Images/42/210652/iphone-11-pro-512gb-white-600x600.jpg"
                                                        alt=""/></div>
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
<content tag="local_script">
    <script>// Material Select Initialization
    $(document).ready(function () {


        $("input[type=checkbox]").click(function () {
            $("#form").submit();
        });


        $('.mdb-select').materialSelect();


        $('.model-owl .owl-carousel').owlCarousel({
            lazyLoad: true,
            margin: 10,
            autoplayHoverPause: true,
            nav: true,
            dots: true,
            navText: ["<i class='fa-solid fa-circle-chevron-left fa-lg' style='font-size:40px'></i>", "<i class='fa-solid fa-circle-chevron-right fa-lg' style='font-size:40px'></i>"],
        });
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
</content>
</body>

</html>
