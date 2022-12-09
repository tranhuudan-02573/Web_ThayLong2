<%--
Created by IntelliJ IDEA.
User: dell
Date: 11/14/2022
Time: 3:39 PM
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<header>
    <div class="modal fade" id="modalLoginForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <form method="post" action="">
                    <div class="modal-header text-center">
                        <h4 class="modal-title w-100 font-weight-bold text-uppercase">đăng nhập tài khoản</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body mx-3">

                        <div class="md-form mb-5">
                            <i class="fas fa-envelope prefix grey-text text-danger"></i>
                            <input type="email" id="defaultForm-email" class="form-control validate">
                            <label data-error="wrong" data-success="right" for="defaultForm-email"> Email</label>
                        </div>

                        <div class="md-form mb-4">
                            <i class="fas fa-lock prefix grey-text text-danger"></i>
                            <input type="password" id="defaultForm-pass" class="form-control validate">
                            <label data-error="wrong" data-success="right" for="defaultForm-pass">Mật khẩu</label>

                        </div>
                        <div class="d-flex justify-content-between">
                            <!-- Material checked -->
                            <!-- Material checked -->
                            <div class="form-check p-0">
                                <input type="checkbox" class="form-check-input" id="materialChecked2" checked>
                                <label class="form-check-label" for="materialChecked2">Nhớ mật khẩu</label>
                            </div>
                            <a href="/views/web/resetpass.jsp" class="text-danger">Quên mật khẩu</a>
                        </div>
                    </div>
                    <div class="modal-footer d-flex justify-content-between">
                        <span>Bạn chưa có tài khoản? <a href="/views/web/signup.jsp" class="text-danger">Đăng ký</a></span>
                        <input class="btn btn-danger " type="submit"> Đăng nhập
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="d-head ">
        <div class="head-top bg-danger">
            <div class="container">
                <div class="row align-items-center ">
                    <div class="col-1 d-block d-sm-none d-flex align-items-center text-white"><i class="fa fa-bars"></i>
                    </div>
                    <div class="col-9 position-absolute p-2 menu-multi-mobile">
                        <div class="row row-md">
                            <div class="col-8">
                                <a href="#" title="" class=""><img src="/images/fptshop-logo.png" class="img-fluid"></a>
                            </div>
                            <div class="col-4 d-flex justify-content-end">
                                <i class="fa fa-times text-white" aria-hidden="true"></i>
                            </div>

                            <div class="col-12">
                                <hr class="bg-light">
                            </div>
                            <div class="col-12">
                                <div class="accordion" id="accordionExample">
                                    <div class="card border-0">
                                        <div class=" p-2" id="headingOne">
                                            <a href="#" title="" class="text-dark">
                                                <i class="fa-solid fa-mobile"></i>
                                                Điện thoại
                                            </a>
                                            <h2 class="mb-0 pull-right">
                                                <button class="btn p-0" type="button" data-toggle="collapse"
                                                        data-target="#collapseOne" aria-expanded="true"
                                                        aria-controls="collapseOne">
                                                    <i class="fa fa-chevron-down" aria-hidden="true"></i>
                                                </button>
                                            </h2>
                                        </div>
                                        <div id="collapseOne" class="collapse show" aria-labelledby="headingOne"
                                             data-parent="#accordionExample">
                                            <div class="card-body">
                                                <div class="row row-md">
                                                    <div class="col-6">
                                                        <a href="#" title="" class="nav-link text-dark">Iphone</a>
                                                    </div>
                                                    <div class="col-6">
                                                        <a href="#" title="" class="nav-link text-dark">Samsung</a>
                                                    </div>
                                                    <div class="col-6">
                                                        <a href="#" title="" class="nav-link text-dark">Huawei</a>
                                                    </div>
                                                    <div class="col-6">
                                                        <a href="#" title="" class="nav-link text-dark">OPPO</a>
                                                    </div>
                                                    <div class="col-6">
                                                        <a href="#" title="" class="nav-link text-dark">Xixaomi</a>
                                                    </div>
                                                    <div class="col-6">
                                                        <a href="#" title="" class="nav-link text-dark">VSMart</a>
                                                    </div>
                                                    <div class="col-6">
                                                        <a href="#" title="" class="nav-link text-dark">NOKIA</a>
                                                    </div>
                                                    <div class="col-6">
                                                        <a href="#" title="" class="nav-link text-dark">HONOR</a>
                                                    </div>
                                                    <div class="col-12 text-center">
                                                        <a href="#" title="" class="nav-link text-dark">Mobiistar</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card border-0">
                                        <div class=" p-2" id="headingTwo">
                                            <a href="#" title="" class="text-dark">
                                                <i class="fa fa-mobile" aria-hidden="true"></i>
                                                Laptop
                                            </a>
                                            <h2 class="mb-0 pull-right">
                                                <button class="btn p-0  collapsed " type="button" data-toggle="collapse"
                                                        data-target="#collapseTwo" aria-expanded="false"
                                                        aria-controls="collapseTwo">
                                                    <i class="fa fa-chevron-down" aria-hidden="true"></i>
                                                </button>
                                            </h2>
                                        </div>
                                        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
                                             data-parent="#accordionExample">
                                            <div class="card-body">
                                                <div class="row row-md">
                                                    <div class="col-6">
                                                        <a href="#" title="" class="nav-link text-dark">Iphone</a>
                                                    </div>
                                                    <div class="col-6">
                                                        <a href="#" title="" class="nav-link text-dark">Samsung</a>
                                                    </div>
                                                    <div class="col-6">
                                                        <a href="#" title="" class="nav-link text-dark">Huawei</a>
                                                    </div>
                                                    <div class="col-6">
                                                        <a href="#" title="" class="nav-link text-dark">OPPO</a>
                                                    </div>
                                                    <div class="col-6">
                                                        <a href="#" title="" class="nav-link text-dark">Xixaomi</a>
                                                    </div>
                                                    <div class="col-6">
                                                        <a href="#" title="" class="nav-link text-dark">VSMart</a>
                                                    </div>
                                                    <div class="col-6">
                                                        <a href="#" title="" class="nav-link text-dark">NOKIA</a>
                                                    </div>
                                                    <div class="col-6">
                                                        <a href="#" title="" class="nav-link text-dark">HONOR</a>
                                                    </div>
                                                    <div class="col-12 text-center">
                                                        <a href="#" title="" class="nav-link text-dark">Mobiistar</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card border-0">
                                        <div class=" p-2" id="headingThree">
                                            <a href="#" title="" class="text-dark">
                                                <i class="fa fa-mobile" aria-hidden="true"></i>
                                                Tablet
                                            </a>
                                            <h2 class="mb-0 pull-right">
                                                <button class="btn p-0 collapsed " type="button" data-toggle="collapse"
                                                        data-target="#collapseThree" aria-expanded="false"
                                                        aria-controls="collapseThree">
                                                    <i class="fa fa-chevron-down" aria-hidden="true"></i>
                                                </button>
                                            </h2>
                                        </div>
                                        <div id="collapseThree" class="collapse" aria-labelledby="headingThree"
                                             data-parent="#accordionExample">
                                            <div class="row row-md">
                                                <div class="col-6">
                                                    <a href="#" title="" class="nav-link text-dark">Iphone</a>
                                                </div>
                                                <div class="col-6">
                                                    <a href="#" title="" class="nav-link text-dark">Samsung</a>
                                                </div>
                                                <div class="col-6">
                                                    <a href="#" title="" class="nav-link text-dark">Huawei</a>
                                                </div>
                                                <div class="col-6">
                                                    <a href="#" title="" class="nav-link text-dark">OPPO</a>
                                                </div>
                                                <div class="col-6">
                                                    <a href="#" title="" class="nav-link text-dark">Xixaomi</a>
                                                </div>
                                                <div class="col-6">
                                                    <a href="#" title="" class="nav-link text-dark">VSMart</a>
                                                </div>
                                                <div class="col-6">
                                                    <a href="#" title="" class="nav-link text-dark">NOKIA</a>
                                                </div>
                                                <div class="col-6">
                                                    <a href="#" title="" class="nav-link text-dark">HONOR</a>
                                                </div>
                                                <div class="col-12 text-center">
                                                    <a href="#" title="" class="nav-link text-dark">Mobiistar</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card border-0">
                                        <div class=" p-2" id="headingFour">
                                            <a href="#" title="" class="text-dark">
                                                <i class="fa fa-mobile" aria-hidden="true"></i>
                                                Apple
                                            </a>
                                            <h2 class="mb-0 pull-right">
                                                <button class="btn p-0  collapsed " type="button" data-toggle="collapse"
                                                        data-target="#collapseFour" aria-expanded="false"
                                                        aria-controls="collapseFour">
                                                    <i class="fa fa-chevron-down" aria-hidden="true"></i>
                                                </button>
                                            </h2>
                                        </div>
                                        <div id="collapseFour" class="collapse" aria-labelledby="headingFour"
                                             data-parent="#accordionExample">
                                            <div class="card-body">
                                                <div class="row row-md">
                                                    <div class="col-6">
                                                        <a href="#" title="" class="nav-link text-dark">Iphone</a>
                                                    </div>
                                                    <div class="col-6">
                                                        <a href="#" title="" class="nav-link text-dark">Samsung</a>
                                                    </div>
                                                    <div class="col-6">
                                                        <a href="#" title="" class="nav-link text-dark">Huawei</a>
                                                    </div>
                                                    <div class="col-6">
                                                        <a href="#" title="" class="nav-link text-dark">OPPO</a>
                                                    </div>
                                                    <div class="col-6">
                                                        <a href="#" title="" class="nav-link text-dark">Xixaomi</a>
                                                    </div>
                                                    <div class="col-6">
                                                        <a href="#" title="" class="nav-link text-dark">VSMart</a>
                                                    </div>
                                                    <div class="col-6">
                                                        <a href="#" title="" class="nav-link text-dark">NOKIA</a>
                                                    </div>
                                                    <div class="col-6">
                                                        <a href="#" title="" class="nav-link text-dark">HONOR</a>
                                                    </div>
                                                    <div class="col-12 text-center">
                                                        <a href="#" title="" class="nav-link text-dark">Mobiistar</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <ul class="nav flex-column">
                                    <li class="p-2 nav-item">
                                        <a class="text-dark" href="#">
                                            <i class="fa fa-mobile" aria-hidden="true"></i>
                                            Phụ kiện
                                        </a>
                                    </li>
                                    <li class="p-2 nav-item">
                                        <a class="text-dark" href="#">
                                            <i class="fa fa-mobile" aria-hidden="true"></i>
                                            Máy đổi trả</a>
                                    </li>
                                    <li class="p-2 nav-item">
                                        <a class="text-dark" href="#">
                                            <i class="fa fa-mobile" aria-hidden="true"></i>
                                            Sim</a>
                                    </li>
                                    <li class="nav-item p-2">
                                        <a class="text-dark" href="#">
                                            <i class="fa fa-mobile" aria-hidden="true"></i>
                                            Phần mềm</a>
                                    </li>
                                </ul>
                            </div>
                            <!--end col-12-->
                            <div class="col-12">
                                <hr class="bg-light">
                            </div>
                            <!--end col-12-->
                            <div class="col-12">

                                <ul class="nav flex-column">
                                    <li class="nav-item p-2">
                                        <a class="text-dark" href="#">
                                            <i class="fa fa-mobile" aria-hidden="true"></i>
                                            Khuyến mãi</a>
                                    </li>
                                    <li class="nav-item p-2">
                                        <a class="text-dark" href="#">
                                            <i class="fa fa-mobile" aria-hidden="true"></i>
                                            Thông tin trao thưởng</a>
                                    </li>
                                </ul>
                            </div>
                            <!--end col-12-->
                        </div>
                        <!--end-row-->
                    </div>
                    <!--end col-9-->
                    <div class="col-3 position-absolute overplay"></div>
                    <div class="col-xl-2 col-lg-2 col-md-2 col-4  pl-1 pr-1 ">
                        <a href="/index.jsp" title=""><img src="/images/fptshop-logo.png" class="img-fluid"></a>
                    </div>
                    <div class="col-7 pull-right d-flex justify-content-end align-items-center d-sm-none text-white"><i
                            class="fa fa-shopping-cart"></i></div>
                    <div class="col-xl-4 col-lg-4 col-md-4 col-12 ">
                        <div class="input-group ">
                            <input type="text" class="form-control " placeholder="Tìm kiếm sản phẩm"
                                   aria-label="Recipient's username" aria-describedby="basic-addon2">
                            <div class="input-group-append ">
                                <a class="input-group-text bg-dark text-white  border-0 " id="basic-addon2"><i
                                        class="fa fa-search"></i></a>
                            </div>
                        </div>
                    </div>
                    <!--end col-6-->
                    <div class="col-xl-6 col-lg-6 col-md-6 col-12 d-none d-sm-block pl-1 pr-1">
                        <ul class="nav justify-content-end">

                            <li class="nav-item">
                                <a class="nav-link text-center text-white " href="/views/web/user.jsp">
                                    <div><i class="fa-solid fa-clock-rotate-left fa-lg"></i></div>
                                    lịch sử mua hàng</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link text-center text-white " href="/views/web/cart.jsp">
                                    <div><i class="fa fa-shopping-cart fa-lg" aria-hidden="true"></i></div>
                                    Giỏ hàng</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link text-center text-white " href="/views/web/user.jsp">
                                    <div><i class="fa fa-heart fa-lg" aria-hidden="true"></i></div>
                                    Sản phẩm đã thích</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-center text-white " href="/views/web/user.jsp" data-toggle="modal"
                                   data-target="#modalLoginForm">
                                    <div><i class="fa fa-user fa-lg" aria-hidden="true"></i></div>
                                    Tài khoản
                                </a>
                            </li>

                        </ul>
                        <!-- <ul class="d ml-auto justify-content-center">


     <li class="nav-item">
                  <a href="" class="nav-link waves-effect text-center" target="_blank">
                     <div class="text-center">
                   <i class="fa-regular fa-heart fa-lg"></i>
                    </div>
                        <span>yeu thich</span>
                  </a>
                </li>


    <li class="nav-item">
     <a href="html/cart.jsp" class="nav-link waves-effect text-center " target="_blank">
               <div class="text-center"> <i class="fa-solid fa-cart-arrow-down fa-lg"></i> </div>
               <span>gio hang</span>

                  </a>
    </li>

          <li class="nav-item dropdown">
                <a class="nav-link  waves-effect text-center" href="#" id="userDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                 <div class="text-center"> <i class="fa-regular fa-user fa-lg"></i></div>
               <span>tai khoan cua toi</span>
                </a>
                <div class="dropdown-menu" aria-labelledby="userDropdown">
                <a class="dropdown-item waves-effect waves-light" href="#">log in</a>
                <a class="dropdown-item waves-effect waves-light" href="#">Log Out</a>
                </div>
              </li>




              </ul> -->
                    </div>
                </div>
            </div>
        </div>
        <!--end head-top-->
        <div class="head-menu bg-dark nav-scroller">
            <div class="container">
                <ul class="nav row row-sm">
                    <li class="nav-item ol-md-4 hvr-grow_color">
                        <a class="nav-link text-white text-uppercase" href="/views/web/productlist.jsp"><i
                                class="fa-solid fa-mobile-screen mr-2"></i></i></i>iPhone
                        </a>
                    </li>
                    <li class="nav-item ol-md-4 hvr-grow_color">
                        <a class="nav-link text-white text-uppercase" href="/views/web/productlist.jsp"><i
                                class="fa-solid fa-mobile-screen mr-2"></i></i></i>SamSung
                        </a>
                    </li>
                    <li class="nav-item ol-md-4 hvr-grow_color">
                        <a class="nav-link text-white text-uppercase" href="/views/web/productlist.jsp"><i
                                class="fa-solid fa-mobile-screen mr-2"></i></i></i>Oppo
                        </a>
                    </li>
                    <li class="nav-item ol-md-4 hvr-grow_color">
                        <a class="nav-link text-white text-uppercase" href="/views/web/productlist.jsp"><i
                                class="fa-solid fa-mobile-screen mr-2"></i></i></i>Xiaomi
                        </a>
                    </li>
                    <li class="nav-item ol-md-4 hvr-grow_color">
                        <a class="nav-link text-white text-uppercase" href="/views/web/productlist.jsp"><i
                                class="fa-solid fa-mobile-screen mr-2"></i></i></i>Vivo
                        </a>
                    </li>
                    <li class="nav-item ol-md-4 hvr-grow_color">
                        <a class="nav-link text-white text-uppercase" href="/views/web/productlist.jsp"><i
                                class="fa-solid fa-mobile-screen mr-2"></i></i></i>Realme
                        </a>
                    </li>
                    <li class="nav-item ol-md-4 hvr-grow_color">
                        <a class="nav-link text-white text-uppercase" href="/views/web/productlist.jsp"><i
                                class="fa-solid fa-mobile-screen mr-2"></i></i></i>Nokia
                        </a>
                    </li>
                    <li class="nav-item ol-md-4 hvr-grow_color">
                        <a class="nav-link text-white text-uppercase" href="/views/web/productlist.jsp"><i
                                class="fa-solid fa-mobile-screen mr-2"></i></i></i>Itel
                        </a>
                    </li>
                    <li class="nav-item ol-md-4 hvr-grow_color">
                        <a class="nav-link text-white text-uppercase" href="/views/web/productlist.jsp"><i
                                class="fa-solid fa-mobile-screen mr-2"></i></i></i>Msstel
                        </a>
                    </li>

                </ul>
            </div>
        </div>
        <!--end head-menu-->
    </div>
    <!--end d-head-->

    <div class="m-head d-block d-sm-none"></div>

</header>
