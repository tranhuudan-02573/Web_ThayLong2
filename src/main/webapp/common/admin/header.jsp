<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 11/14/2022
  Time: 4:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header text-center">
        <h4 class="modal-title w-100 font-weight-bold text-uppercase">Reset mật khẩu tài khoản</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body mx-3">
        <div class="md-form mb-4">
          <i class="fas fa-envelope prefix grey-text text-default"></i>
          <input type="email" id="defaultForm-email" class="form-control validate">
          <label data-error="wrong" data-success="right" for="defaultForm-email">Nhập email</label>
        </div>



        <div class="md-form mb-4">
          <i class="fas fa-lock prefix grey-text text-default"></i>
          <input type="password" id="defaultForm-pass" class="form-control validate">
          <label data-error="wrong" data-success="right" for="defaultForm-pass">Nhập mật khẩu</label>

        </div>
        <div class="md-form mb-4">
          <i class="fas fa-repeat prefix grey-text text-default"></i>
          <input type="password" id="defaultForm-repass" class="form-control validate">
          <label data-error="wrong" data-success="right" for="defaultForm-repass">Nhập lại mật khẩu</label>
        </div>
      </div>
      <!-- Material checked -->
      <!-- Material checked -->
      <div class="modal-footer d-flex justify-content-between">
        <span>Bạn chưa có tài khoản? <a href="/views/admin/profile.jsp" class="text-default">Đăng kí</a></span>
        <button class="btn btn-default ">Reset</button>
      </div>
    </div>
  </div>
</div>
<header>
  <!-- Sidebar navigation -->
  <div id="slide-out" class="side-nav fixed wide sn-bg-1">
    <ul class="custom-scrollbar">
      <!-- Logo -->
      <li>
        <div class="logo-wrapper sn-ad-avatar-wrapper">
          <a href="#"><img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(10).jpg" class="rounded-circle"><span>Anna Deynah</span></a>
        </div>
      </li>
      <!--/. Logo -->
      <!-- Side navigation links -->
      <li>
        <ul class="collapsible collapsible-accordion">
          <li><a class="collapsible-header waves-effect arrow-r active" style="font-size: 16px;"><i class="sv-slim-icon fas fa-chevron-rightfa-chevron-right fa-angle-double-left"></i>Quản lí<i class="fas fa-angle-down rotate-icon"></i></a>
            <div class="collapsible-body">
              <ul>
                <li><a href="/views/admin/manauser/index.jsp" class="waves-effect active">
                  <span class="sv-slim"> SL </span>
                  <span class="sv-normal" style="font-size: 16px;">Quản lí người dùng</span></a>
                </li>
                <li><a href="/views/admin/manaproduct/index.jsp" class="waves-effect" >
                  <span class="sv-slim"> RF </span>
                  <span class="sv-normal" style="font-size: 16px;">Quản lí sản phẩm</span></a>
                </li>
                <li><a href="/views/admin/manapromot/index.jsp" class="waves-effect" >
                  <span class="sv-slim"> RF </span>
                  <span class="sv-normal" style="font-size: 16px;">Quản lí chương trình</span></a>
                </li>
                <li><a href="/views/admin/manaorder/index.jsp" class="waves-effect">
                  <span class="sv-slim"> RF </span>
                  <span class="sv-normal" style="font-size: 16px;">Quản lí đơn hàng</span></a>
                </li>
                <li><a href="/views/admin/manasale/index.jsp" class="waves-effect">
                  <span class="sv-slim"> RF </span>
                  <span class="sv-normal" style="font-size: 16px;">Quản lí ưu đãi</span></a>
                </li>
                <li><a href="/views/admin/manareview/index.jsp" class="waves-effect">
                  <span class="sv-slim"> RF </span>
                  <span class="sv-normal" style="font-size: 16px;">Quản lí đánh giá</span></a>
                </li>

              </ul>
            </div>
          </li>

          <li><a id="toggle" class="waves-effect" >
            <i class="sv-slim-icon fas fa-angle-double-left" style="font-size: 18px;"></i>
            <span style="font-size: 17px;">Thu nhỏ menu</span></a>
          </li>
        </ul>
      </li>
      <!--/. Side navigation links -->
    </ul>
    <div class="sidenav-bg rgba-blue-strong"></div>
  </div>
  <!--/. Sidebar navigation -->
  <!-- Navbar -->
  <nav class="navbar fixed-top navbar-toggleable-md navbar-expand-lg scrolling-navbar double-nav">
    <!-- SideNav slide-out button -->
    <div class="float-left">
      <a href="#" data-activates="slide-out" class="button-collapse"><i class="fas fa-bars"></i></a>
    </div>
    <!-- Breadcrumb-->
    <div class="breadcrumb-dn mr-auto">
      <p>FPT shop.com.vn</p>
    </div>
    <ul class="nav navbar-nav nav-flex-icons ml-auto">

      <li class="nav-item">
        <a class="nav-link" href="/views/admin/index.jsp"><i class="fa-solid fa-house-user mr-1 fa-lg"></i><span class="clearfix d-none d-sm-inline-block">Trang chủ</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-target="#modal" data-toggle="modal"><i class="fa-solid fa-key"></i> <span class="clearfix d-none d-sm-inline-block">Đổi mật khẩu</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/views/admin/profile.jsp"><i class="fas fa-user"></i> <span class="clearfix d-none d-sm-inline-block">Thông tin cá nhân</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link"><i class="fa-solid fa-right-from-bracket"></i> <span class="clearfix d-none d-sm-inline-block">Thoát</span></a>
      </li>

    </ul>
  </nav>
  <!-- /.Navbar -->
</header>
