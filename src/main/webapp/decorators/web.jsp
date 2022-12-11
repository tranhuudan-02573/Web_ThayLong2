<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title><dec:title default="Trang chủ" /></title>
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <%@include file="/common/web/css.jsp" %>
    <dec:getProperty property="page.local_style"/>
</head>
<body>
	<!-- header -->
    <jsp:include page="/common/web/header.jsp">
        <jsp:param name="brandList" value="${requestScope.brandList}"/>

    </jsp:include>
    <!-- header -->
    
    	<dec:body/>

	<!-- footer -->
	<%@ include file="/common/web/footer.jsp" %>
	<!-- footer -->
    <%@include file="/common/web/js.jsp" %>

    <dec:getProperty property="page.local_script"/>

</body>
</html>