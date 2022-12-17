<%@ page import="vn.edu.hcmuaf.fit.model.phone.*" %>
<%@ page import="java.util.*" %>
<%@ page import="vn.edu.hcmuaf.fit.model.review.Review" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>Document</title>
    <content tag="local_style">
        <style>

            .my-custom-scrollbar {
                position: relative;
                height: 200px;
                overflow: auto;
            }

            .table-wrapper-scroll-y {
                display: block;
            }

            .form-check:has(.form-check-input[type="radio"]:checked) {
                border: 1px solid #d70018 !important;

            }

            .form-check:has(.form-check-input[type="radio"]:not(:checked)) {
                border: 1px solid #d7d7d7 !important;

            }

            .form-check-input[type="radio"]:not(:checked) + label::before {

                border-radius: 0;
                background-color: transparent !important;
                border-color: transparent;

            }

            .form-check-input[type="radio"]:checked + label::after {
                background-color: transparent !important;
                border-color: transparent;
                content: "✓";
                position: absolute;
                top: -8px;
                color: red;
                right: 0;
                left: 85%;
                border-radius: 0;
            }

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
                border: 1px solid red !important;
            }

            #modalSpecifications .modal-body .table tbody > tr:nth-child(even) td > div:last-child {
                border-bottom: unset !important;
            }

            @media not all and (min-resolution: .001dpcm) {
                @supports (-webkit-appearance: none) and (stroke-color:transparent) {

                    .number-input.def-number-input.safari_only button:before,
                    .number-input.def-number-input.safari_only button:after {
                        margin-top: -.3rem;
                    }
                }
            }

        </style>
    </content>
</head>


<body class="">


<header id="header"></header>
<div class="homeContent  mb-5">
    <div class="container">
        <div class="row w-100 mx-auto mb-2">
            <div class="col-12">
                <div id="breadcrumb"></div>
            </div>
        </div>
        <!-- Modal: modalAbandonedCart-->
        <div class="modal fade right" id="modalAbandonedCart" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
             aria-hidden="true" data-backdrop="false">
            <div class="modal-dialog modal-side modal-bottom-right modal-notify modal-info" role="document">
                <!--Content-->
                <div class="modal-content">
                    <!--Header-->
                    <div class="modal-header">
                        <p class="heading">đã thêm vào giỏ hàng
                        </p>

                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true" class="white-text">&times;</span>
                        </button>
                    </div>

                    <!--Body-->
                    <div class="modal-body">

                        <div class="row">
                            <div class="col-3">
                                <p></p>
                                <p class="text-center"><i class="fas fa-shopping-cart fa-4x"></i></p>
                            </div>

                            <div class="col-9">
                                <p>Do you need more time to make a purchase decision?</p>
                                <p>No pressure, your product will be waiting for you in the cart.</p>
                            </div>
                        </div>
                    </div>

                    <!--Footer-->
                    <div class="modal-footer justify-content-center">
                        <a type="button" class="btn btn-info">đến</a>
                        <a type="button" class="btn btn-outline-info waves-effect" data-dismiss="modal">thanh toán</a>
                    </div>
                </div>
                <!--/.Content-->
            </div>
        </div>
        <section class="">
            <div class="row w-100 mx-auto">
                <div class="col-12">
                    <div class="row w-100 mx-auto name-product  bg-white ">
                        <h3 class="mb-0 col-12 col-sm-8 pl-0">
                            <a href="#" title="" class="text-dark name-products mb-0">${phone.name}
                                <span class="note border-left-0">${phone.id}</span>

                            </a>
                        </h3>

                        <div class="media align-items-center col-12 col-sm-4 pl-0">
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
                    <hr/>
                    <div class="products-iphone bg-white  ">
                        <div class="row w-100 mx-auto">

                            <!--end col-xl-4-->
                            <div class="col-xl-4 pl-0">
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
                                <div id="carouselSlideImg" class="carousel slide pointer-event mb-4"
                                     data-ride="carousel">
                                    <div class="carousel-inner">
                                        <%
                                            Phone p = (Phone) request.getAttribute("phone");
//                                            Set<SpecType> spt = new HashSet<>();
//                                            for (PhoneSpec st : specs
//                                            ) {
//                                                spt.add(st.getSpec().getSpecType());
//                                            }
                                        %>
                                        <c:forEach var="image" items="<%=p._images() %>">
                                            <div class="carousel-item text-center ">
                                                <img src="${image.link}" alt="" class="img-fluid"
                                                     style="width: 300px;height:300px;">
                                            </div>
                                        </c:forEach>
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
                                    <ol class="carousel-indicators m-0   " style="bottom: -100px !important;">

                                        <c:forEach var="image" items="<%=p._images() %>">
                                            <li data-target="#carouselSlideImg" data-slide-to="0"
                                                class="w-100 h-100 text-center" style="background-color: transparent;">
                                                <div class="d-sm-block ">
                                                    <br>
                                                    <img class="object-fit border border-dark rounded"
                                                         style="width: 55px;height: auto;"
                                                         src="${image.link}">
                                                </div>
                                            </li>
                                        </c:forEach>
                                    </ol>
                                </div>
                                <div style="height: 70px;"></div>
                                <div class="card border-0 ">
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
                            <div class="col-xl-4 pl-0 bg-white ">
                                <div class="mb-2">
                                    <span href="" class="badge badge-danger">Trả góp 0%</span>
                                </div>

                                <div class="d-flex align-items-center mb-2">
                                    <strong class="prices text-danger"><%=p.getPrice()%> <sup>đ</sup></strong>
                                    <strong class="pl-2" style="text-decoration: line-through;">34.500.000đ</strong>
                                </div>

                                <div class="style-product mb-3 w-100 mx-auto row  ">
                                    <%
                                        List<PhoneCap> pcs = p._caps();
                                        for (int i = 0; i < pcs.size(); i++) {

                                    %>
                                    <div class="p-1  col-4 ">
                                        <div class="form-check p-0   rounded">
                                            <input type="radio" class="form-check-input"
                                                   id="cap-<%=pcs.get(i)._cap().getId()%>"
                                                   name="cap" <%=(i==0)?"checked":""%>>
                                            <label class="form-check-label  px-3 "
                                                   for="cap-<%=pcs.get(i)._cap().getId()%>"
                                                   style="width: 96.5%; height: 100%; ">
                                                <div class="text-center">
                                                    <div class=" text-center">
                                                        <strong class="font-weight-bold  "
                                                                style="font-size: 12px;"><%=pcs.get(i)._cap().getCap()%>
                                                        </strong>
                                                    </div>
                                                    <span class="font-weight-light"
                                                          style="font-size: 12px;"><%=pcs.get(i)._cap()._phone().getPrice()%>đ</span>
                                                </div>
                                            </label>
                                        </div>

                                    </div>
                                    <%}%>
                                </div>

                                <strong class="font-weight-bold">Chọn màu để xem giá và chi nhánh có hàng</strong>
                                <div class="style-product mb-3 w-100 mx-auto row  ">
                                    <%
                                        List<PhoneColor> colors = p._colors();
                                        for (int i = 0; i < colors.size(); i++) {
                                    %>
                                    <div class="p-1  col-4 ">
                                        <div class="form-check p-0 rounded">
                                            <input type="radio" class="form-check-input"
                                                   id="color-<%=colors.get(i)._color().getId()%>"
                                                   name="color" <%=(i==0)?"checked":""%>  >
                                            <label class="form-check-label  px-1 " style=" height: 100%; "
                                                   for="color-<%=colors.get(i)._color().getId()%>">
                                                <div class="d-flex justify-content-center align-items-center  ">
                                                    <img src="<%=colors.get(i).getImg()%>"
                                                         alt="" class="img-fluid">
                                                    <div class="">
                                                        <div class="d-block text-start">
                                                            <strong class="font-weight-bold  "
                                                                    style="font-size: 12px;"><%=colors.get(i)._color().getName()%>
                                                            </strong>
                                                        </div>
                                                        <span class="font-weight-light"
                                                              style="font-size: 12px;"><%=p.getPrice()%>đ</span>
                                                    </div>
                                                </div>

                                            </label>
                                        </div>
                                    </div>
                                    <%}%>

                                </div>
                                <div class="mb-4  ">

                                    <strong class=" font-weight-bold  ">Số lượng đặt hàng </strong>
                                    <div class="def-number-input number-input safari_only ">

                                        <button
                                                onclick="this.parentNode.querySelector('input[type=number]').stepDown()"
                                                class="minus"></button>
                                        <input class="quantity" min="0" name="quantity" value="1" type="number">
                                        <button
                                                onclick="this.parentNode.querySelector('input[type=number]').stepUp()"
                                                class="plus"></button>
                                    </div>
                                </div>
                                <div class="card mb-4 border  " style="box-shadow: unset;">
                                    <div class="card-header bg-danger text-start text-white text-uppercase ">
                                        Thông tin sản phẩm
                                    </div>
                                    <div class="card-body">
                                        <%=p.getDesc()%>
                                    </div>
                                </div>
                                <ul class="nav text-center mt-2 ">
                                    <li class="nav-item w-100 bg-danger mb-2 hvr-round-corners">
                                        <a class="nav-link text-white " href="#">
                                            <h6>MUA NGAY</h6>
                                            <span class="font-text">Giao hàng trong 1 giờ hoặc nhận tại
														shop</span>
                                        </a>
                                    </li>

                                    <li class="nav-item bg-primary   card-shop hvr-round-corners d-inline-block mr-auto"
                                        style="width: 49%">
                                        <a class="nav-link text-white p-2 " href="#">
                                            <h6>TRẢ GÓP QUA THẺ</h6>
                                            <span class="font-text">Visa , Master card, JCB</span>
                                        </a>
                                    </li>


                                    <li class="nav-item bg-primary ml-auto  d-inline-block card-shop hvr-round-corners"
                                        style="width: 49%">
                                        <a class="nav-link text-white p-2  " href="" data-toggle="modal"
                                           data-target="#modalAbandonedCart">
                                            <h6>THÊM VÀO GIỎ HÀNG</h6>
                                            <span class="font-text">thanh toán sau</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <!--end col-xl-5-->
                            <div class="col-xl-4 pl-0 bg-white ">
                                <div class="card border-0 my-4">
                                    <div class="card-header">
                                        <i class="fa fa-clock-o text-danger" aria-hidden="true"></i>
                                        <span class="size">SẢN PHẨM NHẬN GIAO HÀNG TRONG 1 GIỜ</span>
                                    </div>
                                    <div class="mt-2" style="border: 1px dashed #d7d7d7;">
                                        <h5 class="card-title text-white bg-success nav-link size"
                                            style="border: 1px dashed #d7d7d7;">Khuyến mại đặc biệt </h5>
                                        <ul class="nav flex-column">

                                            <%
                                                for (PhonePromot pp : p._promots()
                                                ) {

                                            %>

                                            <li class="nav-item">
                                                <a class="nav-link active text-dark" href="#">
                                                    <i class="fa fa-circle text-success" aria-hidden="true"></i>
                                                    <span class="font-text"><%=pp._promot().getName()%></span>
                                                </a>


                                            </li>
                                            <%}%>

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
            <hr/>
            <div data-spy="scroll" data-target="#navbar-example3" data-offset="0">
                <div class="row w-100 mx-auto">
                    <div class="col-xl-8 pl-0">
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
                                                                                                    title=""
                                                                                                    class="text-info size-text">iPhone
                                                    Xs Max
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
                                                        <p class="card-text mb-0 size-text"><%=p.avg()%>
                                                        </p>
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
                                                        <p class="card-text"><small class="text-muted"><%=p.count()%>
                                                            đánh
                                                            giá
                                                            và nhận xét</small></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-5">
                                                <div class="card border-0 rounded-0">
                                                    <div class="card-body">
                                                        <ul class="nav flex-column">

                                                            <%
                                                                for (int i = 5; i >=1; i--) {
                                                            %>
                                                            <li class="nav-item mt-4 position-relative">
                                                                <span class="stars font-text"><%=i%> sao</span>
                                                                <div class="progress">
                                                                    <div class="progress-bar <%=(i==1)?"bg-danger":""%><%=(i==2)?"bg-warning":""%> <%=(i==3)?"bg-info":""%> <%=(i==4)?"bg-primary":""%> <%=(i==5)?"bg-success":""%> "
                                                                         style="width: <%=(int)(p.avg(i)*100)%>%"
                                                                         aria-valuenow="<%= (int)(p.avg(i)*100)%>"
                                                                         aria-valuemin="0" aria-valuemax="100">
                                                                    </div>
                                                                </div>
                                                                <span class="number-evaluate font-text"><%=p.count(i)%></span>
                                                            </li>

                                                            <%}%>
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
                                                           data-target="#modalStarRating">Gửi
                                                            đánh giá của
                                                            bạn</a>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class=" my-3 border  p-2">
                                            <span>lọc xem theo: </span>
                                            <!-- Material inline 1 -->
                                            <%
                                                for (int i = 1; i <= 5; i++) {
                                            %>
                                            <div class="form-check form-check-inline">
                                                <input type="checkbox" class="form-check-input"
                                                       id="star-<%=i%>">
                                                <label class="form-check-label" for="star-<%=i%>"><%=i %>
                                                    sao</label>
                                            </div>
                                            <%}%>


                                        </div>


                                        <div class="cmt ">

                                            <%
                                                List<Review> reviews = p._reviews();
                                                for (Review r : reviews
                                                ) {

                                            %>

                                            <div class="d-flex  flex-row p-2 ">
                                                <div class="d-flex justify-content-center align-items-center rounded-circle mr-3"
                                                     style="background-color: #cbd1d6; color: #fff; width: 6%; height: 7%; align-items: center; justify-content: center; display: inline-block;">
															<span
                                                                    style="font-weight: 500; font-size: 20px; line-height: 47px; margin: 0 auto;"><%=r._user().avatar()%></span>
                                                </div>
                                                <div>
                                                    <h6 class="font-weight-bold"><%=r._user().getName()%>
                                                    </h6>
                                                    <p class=" text-warning " style="font-size: 12px;">
                                                        <%
                                                            for (int i = 1; i <= 5; i++) {
                                                                if (i <= r.getStar()) {
                                                        %>
                                                        <i class=" fa-solid fa-star "></i>
                                                        <%} else {%>
                                                        <i class="fa-regular fa-star "></i>
                                                        <%
                                                                }
                                                            }
                                                        %>
                                                    </p>
                                                    <p><%=r.getContent()%>
                                                    </p>
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
                                                    <span class="text-light text-weight-500 "><%=r.getCreated_at()%><a
                                                            class="like pr-2 pl-2" href="">thích
																	<span>(<%=r._votes().size()%>)</span>
																</a> <a class="rep" href="">trả lời</a></span>
                                                </div>
                                            </div>
                                            <%}%>

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
                                                <h6 class="font-weight-bold">Nguyễn Thị Ngọc Nghi</h6>
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
                    <div class="col-xl-4 pl-0 ">
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
                                                <%
                                                    for (PhoneSpec ps : p._specs()
                                                    ) {

                                                %>
                                                <tr>
                                                    <th scope="row"><%=ps._spec().getName()%>
                                                    </th>
                                                    <td><%=ps.getValue()%>
                                                    </td>
                                                </tr>
                                                <%}%>
                                                </tbody>
                                            </table>

                                        </div>

                                    </div>
                                </div>
                                <div class="card-header red-text  text-center">
                                    <a href="" class="hvr-underline-from-center" data-toggle="modal"
                                       data-target="#modalSpecifications">
                                        Xem cấu hình chi tiết</a>
                                </div>
                            </div>
                        </div>


                        <div class="modal fade show" id="modalSpecifications" tabindex="-1" role="dialog"
                             aria-labelledby="myModalLabel" style="display: none;" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content" style="width: 620px;">
                                    <div class="modal-header bg-danger text-white text-center pt-1 pb-1">
                                        <h4 class="modal-title w-100 font-weight-bold text-uppercase">Thông số
                                            kỹ
                                            thuật</h4>
                                        <button type="button" class="close" data-dismiss="modal"
                                                aria-label="Close">
                                            <span aria-hidden="true" class="text-white">×</span>
                                        </button>
                                    </div>
                                    <div class="modal-body p-0">

                                        <div class="card">

                                            <div class="card-body">
                                                <div class="table-wrapper-scroll-y my-custom-scrollbar">
                                                    <table class="table table-bordered mb-0">

                                                        <tbody>
                                                        <%
                                                            for (SpecType st : p._specTypes()
                                                            ) {
                                                        %>
                                                        <tr>
                                                            <th class="p-2 bg-light"><%=st.getName() %>
                                                            </th>
                                                        </tr>
                                                        <% for (PhoneSpec sp : p._specs()
                                                        ) {
                                                            if (sp._spec()._specType().getId() == st.getId()) {
                                                        %>
                                                        <tr>
                                                            <td class="p-1">
                                                                <div class="row ml-2 mr-2 pt-2 pb-2"
                                                                     style="border-bottom: 1px solid #edeeef;">
                                                                    <div class="col-sm-5 pl-1">
                                                                        <%=sp._spec().getName()%>
                                                                    </div>
                                                                    <div class="col-sm-7"><span
                                                                            style="color: #495057; font-weight:400"> <%=sp.getValue() %></span>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <%}%>
                                                        <%}%>
                                                        <%}%>
                                                        </tbody>
                                                    </table>

                                                </div>
                                            </div>
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
                                                        <h3 class="nameApple">Apple Ốp lưng iPhone XS Max
                                                            Silicon
                                                            Red</h3>
                                                        <b class="size text-dark"
                                                           style="text-decoration: line-through;">1.290.000
                                                            ₫</b>
                                                        <b class="text-danger size">1.290.000 ₫</b>
                                                    </a>
                                                </div>
                                            </li>
                                            <li class="media my-4">
                                                <a href="#" title=""><img src="/images/c3.jpg" class="mr-3"
                                                                          alt="..."></a>
                                                <div class="media-body">
                                                    <a href="#" title="">
                                                        <h3 class="nameApple">Apple Ốp lưng iPhone XS Max
                                                            Silicon
                                                            Red</h3>
                                                        <b class="size text-dark"
                                                           style="text-decoration: line-through;">1.290.000
                                                            ₫</b>
                                                        <b class="text-danger  size">1.290.000 ₫</b>
                                                    </a>
                                                </div>
                                            </li>
                                            <li class="media mt-2">
                                                <a href="#" title=""><img src="/images/c2.jpg" class="mr-3"
                                                                          alt="..."></a>
                                                <div class="media-body">
                                                    <a href="#" title="">
                                                        <h3 class="nameApple">Apple Ốp lưng iPhone XS Max
                                                            Silicon
                                                            Red</h3>
                                                        <b class="size text-dark"
                                                           style="text-decoration: line-through;">1.290.000
                                                            ₫</b>
                                                        <b class="text-danger size">1.290.000 ₫</b>
                                                    </a>
                                                </div>
                                            </li>
                                            <li class="media my-4">
                                                <a href="#" title=""><img src="/images/c3.jpg" class="mr-3"
                                                                          alt="..."></a>
                                                <div class="media-body">
                                                    <a href="#" title="">
                                                        <h3 class="nameApple">Apple Ốp lưng iPhone XS Max
                                                            Silicon
                                                            Red</h3>
                                                        <b class="size text-dark"
                                                           style="text-decoration: line-through;">1.290.000
                                                            ₫</b>
                                                        <b class="text-danger  size">1.290.000 ₫</b>
                                                    </a>
                                                </div>
                                            </li>
                                            <li class="media mt-2">
                                                <a href="#" title=""><img src="/images/c2.jpg" class="mr-3"
                                                                          alt="..."></a>
                                                <div class="media-body">
                                                    <a href="#" title="">
                                                        <h3 class="nameApple">Apple Ốp lưng iPhone XS Max
                                                            Silicon
                                                            Red</h3>
                                                        <b class="size text-dark"
                                                           style="text-decoration: line-through;">1.290.000
                                                            ₫</b>
                                                        <b class="text-danger size">1.290.000 ₫</b>
                                                    </a>
                                                </div>
                                            </li>

                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="mb-4">

                            <div class="card ">

                                <div class="card-header red-text  text-center">
                                    <h5 class="font-weight-500 my-1">Các hãng phổ biến</h5>
                                </div>
                                <div class="card-body ">
                                    <div class="mt-4">
                                        <div class="chip bg-danger  text-white">
                                            Samsung
                                        </div>
                                        <div class="chip bg-danger  text-white">
                                            Iphone
                                        </div>
                                        <div class="chip bg-danger  text-white">
                                            Asus
                                        </div>


                                    </div>

                                </div>
                            </div>
                        </div>
                        <!--end phụ kiện-->
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
                                                           id="defaultInline1" value="1"
                                                           name="inlineDefaultRadiosExample">
                                                    <label class="custom-control-label"
                                                           for="defaultInline1">Tệ</label>
                                                </div>

                                                <!-- Default inline 2-->
                                                <div class="custom-control custom-radio custom-control-inline">
                                                    <input type="radio" class="custom-control-input"
                                                           id="defaultInline2" value="2"
                                                           name="inlineDefaultRadiosExample">
                                                    <label class="custom-control-label"
                                                           for="defaultInline2">Trung
                                                        bình</label>
                                                </div>

                                                <!-- Default inline 3-->
                                                <div class="custom-control custom-radio custom-control-inline">
                                                    <input type="radio" class="custom-control-input"
                                                           id="defaultInline3" value="3"
                                                           name="inlineDefaultRadiosExample">
                                                    <label class="custom-control-label" for="defaultInline3">Khá
                                                        Tốt</label>
                                                </div>
                                                <div class="custom-control custom-radio custom-control-inline">
                                                    <input type="radio" class="custom-control-input"
                                                           id="defaultInline4" value="4"
                                                           name="inlineDefaultRadiosExample">
                                                    <label class="custom-control-label"
                                                           for="defaultInline4">Tốt</label>
                                                </div>
                                                <div class="custom-control custom-radio custom-control-inline">
                                                    <input type="radio" class="custom-control-input"
                                                           id="defaultInline5" value="5"
                                                           name="inlineDefaultRadiosExample">
                                                    <label class="custom-control-label"
                                                           for="defaultInline5">Tuyệt
                                                        vời</label>
                                                </div>
                                            </div>
                                            <hr>
                                        </div>
                                        <div class="md-form  pink-textarea active-pink-textarea mb-0">
													<textarea id="form18"
                                                              class="md-textarea form-control validate mb-0 pb-0"
                                                              style="padding-top: 30px;" rows="3"></textarea>
                                            <label for="form18">Cãm nhận của bạn về sản phẩm</label>
                                        </div>
                                        <div class="pr-0">
                                            <div class="md-form col-12 pl-0 pr-0">
                                                <input id="name-horizontal" type="text"
                                                       class="validate form-control m-0" required="">
                                                <label id="name-label" class="" for="name-horizontal">Nhập họ
                                                    tên</label>
                                            </div>
                                        </div>
                                        <div class=" pr-0">
                                            <div class="md-form col-12 pl-0 pr-0">
                                                <input id="phone-horizontal" type="text"
                                                       class="validate form-control m-0" required="">
                                                <label id="phone-label" class="" for="phone-horizontal">Nhập số
                                                    điện thoại</label>
                                            </div>
                                        </div>
                                        <div class="md-form mb-2 mt-2">
                                            <input type="email" id="email-horizontal"
                                                   class="form-control validate m-0">
                                            <label data-error="Vui lòng kiểm tra lại thông tin"
                                                   data-success="right" for="email-horizontal">Nhập email</label>
                                        </div>
                                    </div>

                                    <div class="modal-footer d-flex justify-content-center pt-1 pb-1">
                                        <button class="btn btn-danger ">Gửi</button>
                                    </div>
                                </div>
                            </div>
                        </div>

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

                                <li class="nav-item ">
                                    <a class="nav-link active " style="font-size: 15px;"
                                       id="brand-tab"
                                       data-toggle="tab" href="#phone-brand" role="tab"
                                       aria-controls="home"
                                       aria-selected="true">san pham cung hang
                                    </a>
                                </li>
                                <%
                                    if (p.getModelId() != null && p.getModelId() != 0) {
                                %>
                                <li class="nav-item ">
                                    <a class="nav-link active " style="font-size: 15px;"
                                       id="model-tab"
                                       data-toggle="tab" href="#phone-model" role="tab"
                                       aria-controls="home"
                                       aria-selected="true">san pham cung dong
                                    </a>
                                </li>
                                <%}%>

                            </ul>
                        </div>

                        <div class="card-body bg-light bg-gradient ">
                            <div class="tab-content p-0" style="padding: 0 !important;" id="pills-tabContent">


                                <div class="tab-pane fade show active"
                                     id="phone-brand" style="" role="tabpanel"
                                     aria-labelledby="pills-home-tab">
                                    <div class="owl-carousel owl-theme ">

                                        <%
                                            for (Phone phone : p._brand()._phones()
                                            ) {

                                        %>


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

                                                            <div class=" align-items-start" style="height: 18px;">
                                                                <% for (PhonePromot promot : phone._promots()
                                                                ) {
                                                                    if ("TG0".equalsIgnoreCase(promot._promot().getKey())) {
                                                                %>
                                                                <span class="badge badge-danger mr-1"><%=promot._promot().getName()%></span>
                                                                <%
                                                                        }
                                                                    }
                                                                %>
                                                            </div>

                                                            <a href="/phone-detail?id=<%=phone.getId()%>"
                                                               class="text-dark">
                                                                <div
                                                                        class="align-items-start cart-content  h-100">
                                                                    <div
                                                                            class="my-2 d-block overflow-hidden item hvr-float ">
                                                                        <img class="object-cover mw-100 "
                                                                             src="<%=phone.getThumbnail()%>"
                                                                             alt="">
                                                                    </div>
                                                                    <h3 class="text-ellipsis product-title overflow-hidden  mb-1 fw-normal  text-break "
                                                                        style="display: -webkit-box;
	-webkit-box-orient: vertical;
	-webkit-line-clamp: 2;font-size: 14px;">
                                                                        <%=phone.getName()%>
                                                                    </h3>
                                                                    <div class="mb-1">
																				<span class="mr-2 badge badge-light">6.7
																					incheslor
																				</span>

                                                                        <span class="mr-2 badge badge-light">128
																					GB</span>
                                                                    </div>

                                                                    <div class="mb-1">
                                                                        <%
                                                                            for (PhoneSpec spec : phone._specs()
                                                                            ) {
                                                                                if ("LR".equalsIgnoreCase(spec._spec().getKey()) || "TDR".equalsIgnoreCase(spec._spec().getKey())) {
                                                                        %>
                                                                        <span class="mr-2 badge badge-light mb-1">
																				<%=spec.getValue()%>
																			</span>
                                                                        <%
                                                                                }
                                                                            }
                                                                        %>
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
                                        <%}%>
                                    </div>
                                </div>
                                <%
                                    if (p.getModelId() != null && p.getModelId() != 0) {
                                %>
                                <div class="tab-pane fade "
                                     id="phone-brand" style="" role="tabpanel"
                                     aria-labelledby="pills-home-tab">
                                    <div class="owl-carousel owl-theme ">

                                        <%
                                            for (Phone phone : p._model()._phones()
                                            ) {

                                        %>


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

                                                            <div class=" align-items-start" style="height: 18px;">
                                                                <% for (PhonePromot promot : phone._promots()
                                                                ) {
                                                                    if ("TG0".equalsIgnoreCase(promot._promot().getKey())) {
                                                                %>
                                                                <span class="badge badge-danger mr-1"><%=promot._promot().getName()%></span>
                                                                <%
                                                                        }
                                                                    }
                                                                %>
                                                            </div>

                                                            <a href="/phone-detail?id=<%=phone.getId()%>"
                                                               class="text-dark">
                                                                <div
                                                                        class="align-items-start cart-content  h-100">
                                                                    <div
                                                                            class="my-2 d-block overflow-hidden item hvr-float ">
                                                                        <img class="object-cover mw-100 "
                                                                             src="<%=phone.getThumbnail()%>"
                                                                             alt="">
                                                                    </div>
                                                                    <h3 class="text-ellipsis product-title overflow-hidden  mb-1 fw-normal  text-break "
                                                                        style="display: -webkit-box;
	-webkit-box-orient: vertical;
	-webkit-line-clamp: 2;font-size: 14px;">
                                                                        <%=phone.getName()%>
                                                                    </h3>
                                                                    <div class="mb-1">
																				<span class="mr-2 badge badge-light">6.7
																					incheslor
																				</span>

                                                                        <span class="mr-2 badge badge-light">128
																					GB</span>
                                                                    </div>

                                                                    <div class="mb-1">
                                                                        <%
                                                                            for (PhoneSpec spec : phone._specs()
                                                                            ) {
                                                                                if ("LR".equalsIgnoreCase(spec._spec().getKey()) || "TDR".equalsIgnoreCase(spec._spec().getKey())) {
                                                                        %>
                                                                        <span class="mr-2 badge badge-light mb-1">
																				<%=spec.getValue()%>
																			</span>
                                                                        <%
                                                                                }
                                                                            }
                                                                        %>
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
                                        <%}%>
                                    </div>
                                </div>
                                <%}%>

                                <div class="text-center my-2 ">
                                    <button class="btn btn-danger px-5 text-white hvr-grow btn-md">Xem tất
                                        cả
                                    </button>
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

</body>

</html>
