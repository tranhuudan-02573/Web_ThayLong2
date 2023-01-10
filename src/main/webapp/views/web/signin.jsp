<%@ page import="vn.edu.hcmuaf.fit.model.user.User" %>
<%@ page import="vn.edu.hcmuaf.fit.until.SessionUntil" %>
<%@ page import="vn.edu.hcmuaf.fit.constant.Variable" %>
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
<div class="container ">
    <%
        String password = (String) request.getAttribute("password");
        String username = (String) request.getAttribute("username");
        User user = (User) SessionUntil.get(request, Variable.Global.USER.toString());
    %>
    <section class="my-5 ">

        <div class="row justify-content-center">

            <%

                if (user == null) {
            %>
            <div class="col-xl-6 p-4 ">
                <div class="card" id="form-login">
                    <form action="/login" method="post" class="needs-validation2" novalidate>
                        <div class="card-header text-white text-center bg-danger text-uppercase font-weight-bold ">
                            <h4 class="mt-2"> đăng nhập tài khoản</h4>
                        </div>
                        <c:if test="${requestScope.messErr != null}">
                            <div>
                                <p style="color: red;text-align: center;padding-top: 19px;margin: 0;font-size: 18px;">${requestScope.messErr}</p>
                            </div>
                        </c:if>
                        <div class="card-body">

                            <div class="md-form mb-3">
                                <i class="fas fa-envelope prefix grey-text text-danger"></i>
                                <input type="email" name="fEmail" value="<%=(username!=null)?username:""%>"
                                       id="defaultForm-email" class="form-control validate" required>
                                <label data-error="wrong" data-success="right" for="defaultForm-email"> Email</label>
                            </div>

                            <div class="md-form mb-4">
                                <i class="fas fa-lock prefix grey-text text-danger"></i>
                                <input type="password" name="fPass" id="defaultForm-pass"
                                       value="<%=(password!=null)?password:""%>" class="form-control validate" required>
                                <label data-error="wrong" data-success="right" for="defaultForm-pass">Mật khẩu</label>

                            </div>
                            <div class="d-flex justify-content-between">
                                <!-- Material checked -->
                                <!-- Material checked -->
                                <div class="form-check p-0">

                                    <input type="checkbox" name="remember" class="form-check-input"
                                           id="remember"
                                        <%=(username!=null&&password!=null)?"checked":""%>>
                                    <label class="form-check-label" for="remember">Nhớ mật khẩu</label>
                                </div>
                                <a href="/reset-pass" class="text-danger">Quên mật khẩu</a>
                            </div>
                        </div>
                        <div class=" card-footer d-flex justify-content-between align-items-center">
											<span>Bạn chưa có tài khoản?<a href="/register"
                                                                           target="_blank"
                                                                           class="text-danger">Đăng ký</a></span>
                            <button type="submit" class="btn btn-danger waves-effect" id="btn-login">
                                Đăng nhập
                            </button>
                            <c:if test="${requestScope.messActive!=null}">
                                <script>
                                    alert("${requestScope.messActive}")
                                </script>
                            </c:if>
                        </div>
                    </form>

                </div>
            </div>
            <%}%>
        </div>


    </section>

</div>

</main>

<content tag="local_script">
    <script>
        (function () {
            'use strict';
            window.addEventListener('load', function () {
                // Fetch all the forms we want to apply custom Bootstrap validation styles to
                var forms = document.getElementsByClassName('needs-validation');
                // Loop over them and prevent submission
                var ids = jQuery.unique($('[partner]').map(function () {
                    return $(this).attr('partner');
                }).get());
                var validation = Array.prototype.filter.call(forms, function (form) {
                    form.addEventListener('submit', function (event) {
                        var i;
                        var c = false;

                        // Handle the initial form
                        for (i = 0; i < ids.length; ++i) {
                            var p = $('[partner=' + ids[i] + ']');
                            if ((p[0].value !== '' && p[1].value === '') ||
                                (p[0].value === '' && p[1].value !== '') ||
                                (p[0].value === '' && p[1].value === '') ||
                                (p[0].value !== p[1].value)) {
                                p[1].classList.remove('match');
                                p[1].classList.add('no-match');
                                c = false;
                            } else {
                                p[1].classList.remove('no-match');
                                p[1].classList.add('match');
                                c = true;
                            }
                        }

                        // Handle changes in the form
                        $('[partner]').on('keyup', function () {
                            for (i = 0; i < ids.length; ++i) {
                                var p = $('[partner=' + ids[i] + ']');
                                c = false;
                                if ((p[0].value !== '' && p[1].value === '') ||
                                    (p[0].value === '' && p[1].value !== '') ||
                                    (p[0].value === '' && p[1].value === '') ||
                                    (p[0].value !== p[1].value)) {
                                    c = false;
                                    p[1].classList.remove('match');
                                    p[1].classList.add('no-match');
                                } else {
                                    c = true;
                                    p[1].classList.remove('no-match');
                                    p[1].classList.add('match');
                                }
                            }
                        });
                        if (form.checkValidity() === false || c === false) {
                            event.preventDefault();
                            event.stopPropagation();
                        }

                        form.classList.add('was-compared');
                        form.classList.add('was-validated');
                    }, false);
                });
            }, false);
        })();
        $(document).ready(function () {
            // $('#btn-register').click(function () {
            //     if ($('#pass').val() !== $('#repass').val()) {
            //         $('#repass').addClass('invalid');
            //         $('#form-register form').attr('onsubmit', 'return false');
            //     } else
            //         $('#form-register form').attr('onsubmit', 'return true');
            // });

        });
    </script>

</content>
</body>

</html>
