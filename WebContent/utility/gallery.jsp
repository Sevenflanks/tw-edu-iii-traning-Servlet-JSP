<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
body {
	background: url("../images/SKHN-LOGO-Mark2-B-Side-noMark.png");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-position: 80% center;
	background-attachment: fixed;
	margin: 10px 0px;
}

.infoClass1 {
	width: 95%;
	height: 50%; position : absolute;
	top: 220px;
	left: 50%;
	margin-left: -47.5%;
	position: absolute;
	color: white;
}
</style>

<script>
	sessionStorage.posBack = 200;
</script>

</head>
<body>
	<jsp:include page="main.jsp"></jsp:include>
	<div class="infoClass1">
	<h1>這是相簿</h1>
	</div>
</body>
</html>