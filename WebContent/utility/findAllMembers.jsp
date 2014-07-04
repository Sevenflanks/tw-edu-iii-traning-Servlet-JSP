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

.button {
	font-family: 微軟正黑體;
	color: white;
	line-height: 10px;
	padding: 5px 50px;
	float: left;
	border: 1px solid white;
	background: #333;
	border-radius: 10px;
	box-shadow: 0px 1px 10px #d1cfd1;
	text-shadow: 0px 0px 8px #000000;
	cursor: pointer;
	-webkit-user-select: none; /* Chrome all / Safari all */
	-moz-user-select: none; /* Firefox all */
	-ms-user-select: none; /* IE 10+ */
	transition: all 110ms;
	-webkit-transition: all 110ms;
	line-height: 10px;
}

.button:HOVER {
	background: #bbb;
}

.button:ACTIVE {
	background: #b95;
}

.tableClass1 {
	border: 1px solid white;
	border-radius: 5px;
	box-shadow: 0px 1px 10px #d1cfd1;
	background: rgba(40, 52, 59, 0.5) 100%;
}

th{
	font-family: 微軟正黑體;
	text-shadow: 0px 0px 8px #cccccc;
	border-bottom: 1px dotted white;
}

td {
	font-family:Consolas;
	text-shadow: 0px 0px 8px #000000;
	padding: 2px 20px;
}
</style>

<script>
	sessionStorage.posBack = 0;
</script>

</head>
<body>
	<jsp:include page="main.jsp"></jsp:include>
	<div class="infoClass1">
		<div class="button">
			<a href="<c:url value='/utility/getAllMember'/>">列出所有會員</a>
		</div>
		<br /> <br />
		<div>

			<c:forEach items="${userList}" var="user" varStatus="st">
				<c:if test="${st.first}">
					<table class="tableClass1">
						<tr>
							<th>ID</th>
							<th>帳號</th>
							<th>E-mail</th>
							<th>註冊日</th>
						</tr>
				</c:if>
				<tr>
					<td>${user.id}</td>
					<td>${user.account}</td>
					<td>${user.email}</td>
					<td>${user.signUpDate}</td>
				</tr>
				<c:if test="${st.last }">
					</table>
				</c:if>
			</c:forEach>

		</div>
	</div>

</body>
</html>