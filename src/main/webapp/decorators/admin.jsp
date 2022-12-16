<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>


	<%@include file="/common/admin/css.jsp"%>

	<dec:getProperty property="page.local_style"/>


</head>
<body class="fixed-sn mdb-skin">

	<%@include file="/common/admin/header.jsp"%>

		<div>
			<dec:body />
		</div>


<%@include file="/common/admin/js.jsp"%>
	<dec:getProperty property="page.local_script"/>
</body>
</html>