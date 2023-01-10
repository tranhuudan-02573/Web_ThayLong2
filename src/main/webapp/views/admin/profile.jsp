<%@ page import="vn.edu.hcmuaf.fit.until.SessionUntil" %>
<%@ page import="vn.edu.hcmuaf.fit.constant.Variable" %>
<%@ page import="vn.edu.hcmuaf.fit.model.user.User" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.model.user.UserState" %>
<%@ page import="vn.edu.hcmuaf.fit.model.phone.Brand" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body class="fixed-sn mdb-skin">

<!--Double navigation-->
<%
    List<UserState> us = (List<UserState>) request.getAttribute("userStates");

%>
<!--/.Double navigation-->
<main class="mt-1">
    <%
        User user = (User) SessionUntil.get(request, Variable.Global.USER.toString());

    %>
    <div class="container-fluid panel-scroll">

        <div id="container">
            <div class="row col col-12 col-sm-12 col-md-12 col-lg-12 ml-auto mr-auto float-none pl-1 pr-0">
                <div class="col col-12 p-0">
                    <div class="card card-cascade narrower ml-2 mr-2 mb-1 ">
                        <div class="view view-cascade gradient-card-header blue-gradient   ">
                            <div class="text-center w-100 text-uppercase"> THÔNG TIN CÁ NHÂN</div>
                        </div>

                        <div class="card-body">
                            <div class="row w-100 mx-auto">
                                <div class="col-12">
                                    <form id="form">
                                        <!-- Grid row -->
                                        <div class="form-row">
                                            <!-- Grid column -->
                                            <div class="col-md-6">
                                                <!-- Material input -->
                                                <div class="md-form form-group">
                                                    <input type="text" name="phone" value="<%=user.getPhone()%>"
                                                           class="form-control" id="phone">
                                                    <label for="phone">Số điện thoại</label>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <!-- Material input -->
                                                <div class="md-form form-group">
                                                    <input type="text" class="form-control"
                                                           value="<%=(user.getName()!=null)?user.getName():""%>"
                                                           name="name" id="name">
                                                    <label for="name">Tên</label>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <!-- Material input -->
                                                <div class="md-form form-group">
                                                    <input type="text" class="form-control" name="address"
                                                           value="<%=(user.getAddress()!=null)?user.getAddress():""%>"
                                                           id="address">
                                                    <label for="address">Địa chỉ</label>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <!-- Material input -->
                                                <div class="md-form form-group">
                                                    <input type="text" class="form-control" name="email"
                                                           value="<%=(user.getEmail()!=null)?user.getEmail():""%>"
                                                           id="email">
                                                    <label for="email">Email</label>
                                                </div>
                                            </div>

                                            <div class="col-md-4 my-2">
                                                <h6>Gới tính</h6>
                                                <div class="form-check form-check-inline">
                                                    <input type="radio" data-value-type="number"
                                                           class="form-check-input" <%=(user.isGender())?"checked":""%>
                                                           id="gender" value="1"
                                                           name="gender">
                                                    <label class="form-check-label" for="gender">Nam </label>
                                                </div>

                                                <!-- Material inline 2 -->
                                                <div class="form-check form-check-inline">
                                                    <input type="radio" data-value-type="number"
                                                           class="form-check-input" <%=(!user.isGender())?"checked":""%>
                                                           id="gender2" value="1"
                                                           name="gender">
                                                    <label class="form-check-label" for="gender2">Nữ</label>
                                                </div>
                                            </div>

                                            <div class="col-md-4 my-2">
                                                <h6>Phân quyền</h6>
                                                <div class="form-check form-check-inline">
                                                    <input type="radio" class="form-check-input" id="role"
                                                        <%=(user.getPermission().equals(Variable.Global.ADMIN.toString()))?"checked":""%>
                                                           name="permission" value="ADMIN">
                                                    <label class="form-check-label" for="role">Admin </label>
                                                </div>

                                                <!-- Material inline 2 -->
                                                <div class="form-check form-check-inline">
                                                    <input type="radio" class="form-check-input" id="role2" value="USER"
                                                           name="role"  <%=(user.getPermission().equals(Variable.Global.USER.toString()))?"checked":""%>>
                                                    <label class="form-check-label" for="role2">User</label>
                                                </div>
                                            </div>
                                            <div class="col-md-4 my-2">
                                                <h6>Trạng thái</h6>
                                                <div class="form-check form-check-inline">
                                                    <select data-value-type="number" class="mdb-select md-form"
                                                            name="user_stateId">
                                                        <%

                                                            for (UserState pc : us
                                                            ) {
                                                        %>
                                                        <option <%=(user.getUser_stateId() != null && pc.getId() == user.getUser_stateId()) ? "selected" : ""%>
                                                                value="<%=pc.getId()%>">
                                                            <%=pc.getName()%>
                                                        </option>
                                                        <%
                                                            }
                                                        %>
                                                    </select>

                                                </div>

                                            </div>

                                        </div>
                                        <!-- Grid row -->
                                        <div class="text-center mt-4">
                                            <input type="submit" class="btn btn-default ">
                                        </div>
                                    </form>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    </div>
</main>
<content tag="local_script">


    <script src="/src/js/admin/form.js"></script>
    <script>
        $(document).ready(function () {

            $('.mdb-select').materialSelect();

            $('form#form').submit(function (event) {
                event.preventDefault();
                var form = $(this);
                var j = {};
                j = form.serializeJSON();
                j['id'] = <%=user.getId()%>;
                update(j, "/api/user");
            });
            // SideNav Initialization
            $(".button-collapse").sideNav({
                slim: true
            });
            new WOW().init();

            $('#tableData').DataTable();


        })
    </script>
</content>
</body>

</html>
