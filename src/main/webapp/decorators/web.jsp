<%@ page import="vn.edu.hcmuaf.fit.until.SessionUntil" %>
<%@ page import="vn.edu.hcmuaf.fit.constant.Variable" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title><dec:title default="Trang chủ"/></title>
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <%@include file="/common/web/css.jsp" %>
    <dec:getProperty property="page.local_style"/>
</head>
<body>
<!-- header -->

<%@include file="/common/web/header.jsp" %>
<!-- header -->

<dec:body/>

<!-- footer -->
<%@ include file="/common/web/footer.jsp" %>
<!-- footer -->
<%@include file="/common/web/js.jsp" %>

<dec:getProperty property="page.local_script"/>
<%if (SessionUntil.get(request, Variable.Global.MESSAGE.toString()) != null) { %>
<script type="text/javascript">
    Swal.fire({
        position: 'top-end',
        icon: '<%=SessionUntil.get(request,Variable.Global.TYPE.toString())%>',
        title: '<%=SessionUntil.get(request,Variable.Global.MESSAGE.toString())%>',
        showConfirmButton: false,
        timer: 1500
    })
</script>
<%
    }
    SessionUntil.delItem(request, Variable.Global.TYPE.toString());
    SessionUntil.delItem(request, Variable.Global.MESSAGE.toString());

%>
<script type="text/javascript">
    $(document).ready(function () {
        $('#modalLoginForm .modal-footer button').click(function () {
            const ckFEmail = $('#defaultForm-email').hasClass('invalid') ? true : false;
            const ckFPass = $('#defaultForm-pass').hasClass('invalid') || $('#defaultForm-pass').val().length < 1 ? true : false;
            if (ckFEmail || ckFPass)
                $('#modalLoginForm form').attr('onsubmit', 'return false');
            else
                $('#modalLoginForm form').attr('onsubmit', 'return true');
        });
        popUp();

    })

    function popUp() {
        if ($('#mess-form').val() != undefined) {
            $('#btn-login').trigger('click')
        } else {
            $('#btn-login').trigger('')
        }
    }
</script>
</body>
</html>