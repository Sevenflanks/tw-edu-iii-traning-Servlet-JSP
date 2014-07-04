<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
a:LINK {
	color: white;
	text-decoration: none;
}

a:VISITED {
	color: white;
}

a:HOVER {
	color: white;
}

a:ACTIVE {
	color: white;
}

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
	height: 50%;
	position: absolute;
	top: 220px;
	left: 50%;
	margin-left: -47.5%;
	position: absolute;
	color: white;
}

.fromClass1 {
	border: 1px solid white;
	border-radius: 5px;
	box-shadow: 0px 1px 10px #d1cfd1;
	background: rgba(40, 52, 59, 0.5) 100%;
}

.textTitle {
	font-size: 14px;
	width: 100px;
	height: 25px;
	line-height: 25px; float : left;
	text-align: right;
	padding: auto 5px;
	float: left;
}

.button {
	font-family: 微軟正黑體;
	font-weight: 900;
	color: #ffffff;
	padding: 3px 8px;
	border: 1px solid #174DA5;
	border-radius: 3px;
	background: #3690f0
}

.button:HOVER {
	border: 1px solid #EF8710;
	background: #ffb76b;
}
</style>

<script>
	sessionStorage.posBack = 100;
</script>

</head>
<body>
	<jsp:include page="main.jsp"></jsp:include>
	<div class="infoClass1">
		<form action="<c:url value='/utility/editUserDetail'/>">
			<div>
				<div class="textTitle">使用者ID：</div>
				<input type="text" readonly="readonly" value="${user.id}">
			</div>
			<div>
				<div class="textTitle" >帳號：</div>
				<input type="text" readonly="readonly" value="${user.account }" >
			</div>
			<div>
				<div class="textTitle" >Email：</div>
				<input type="text" value="${user.email }">
			</div>
			<br/>
			<div>
				<div class="textTitle" >密碼：</div>
				<input type="text" placeholder="請輸入密碼" required>
			</div>
			<div>
				<div class="textTitle" ></div>
				<input type="submit" class="button" value="修改">
			</div>
		</form>
	</div>
</body>
</html>