<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
body {
	background-image: url("images/SKHN-LOGO-Mark2-B-Side-1920-1081.png");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-position: 80% center;
}

.mainClass1 {
	display: inline-block;
	vertical-align: middle;
	width: 250px;
	height: 400px;
	position: absolute;
	left: 80%;
	top: 50%;
	margin-left: -125px;
	margin-top: -200px;
	text-align: center;
	border: 1px solid #cccccc;
	border-radius: 10px;
	background: linear-gradient(135deg, rgba(174, 188, 191, 0.8) 0%,
		rgba(110, 119, 116, 0.8) 50%, rgba(10, 14, 10, 0.8) 51%,
		rgba(10, 8, 9, 0.8) 100%);
	box-shadow: inset 0px 0px 46px -8px #cccccc;
}

.box1 {
	margin: 50px auto;
}

.box2{
	margin: 70px auto;
}

.textType1 {
	color: white;
	font-size: 20px;
	font-weight: bolder;
	text-shadow: 2px 2px 3px #C7C7C7;
}

.textType2 {
	color: white;
	font-family: 微軟正黑體;
	font-size: 12px;
	text-shadow: 1px 1px 2px #C7C7C7;
}

.button {
	font-family: 微軟正黑體;
	font-weight: 900;
	color: #ffffff;
	padding: 3px 8px;
	border: 1px solid #174DA5;
	border-radius: 3px;
	background: linear-gradient(135deg, rgba(109, 179, 242, 1) 0%,
		rgba(84, 163, 238, 1) 70%, rgba(84, 163, 238, 1) 70%,
		rgba(54, 144, 240, 1) 71%, rgba(30, 105, 222, 1) 100%);
}

.button:HOVER {
	border: 1px solid #EF8710;
	background: linear-gradient(135deg, rgba(255, 183, 107, 1) 0%,
		rgba(255, 167, 61, 1) 70%, rgba(255, 167, 61, 1) 70%,
		rgba(255, 124, 0, 1) 71%, rgba(255, 127, 4, 1) 100%);
}
</style>

</head>
<body>
	<div class="mainClass1">
		<div class="box1">
			<div class="box2">
			<label class="textType1"> Welcome to ESAA-OS </label> 
			<br/>
			<label class="textType2">
			This site just build for fun<br/>
			Wish you enjoy my works
			</label> 
			</div>
			<div class="box2">
			<input type="button" class="button" value="Enter" onclick="location.href='login.jsp'">
			</div>
			<div class="box2">
			<label class="textType2">Copyright © 2014 ESAA Rhys.Chang<br/>All rights reserved.</label> 
			</div>
		</div>
	</div>
</body>
</html>