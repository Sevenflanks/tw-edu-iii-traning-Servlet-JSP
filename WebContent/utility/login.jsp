<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
body {
	background-image: url("../images/SKHN-LOGO-Mark2-B-Side-1920-1081.png");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-position: 80% center;
	background-attachment:fixed;
}

.formStyle1 {
	margin: 30px auto;
	background-color: white;
	width: 450px;
	padding: 10px;
	border: 1px solid #cccccc;
	position: absolute;
	left: 60%;
	top: 50%;
	margin-left: -125px;
	margin-top: -200px;
	border-radius: 10px;
	background: linear-gradient(135deg, rgba(174, 188, 191, 0.8) 0%,
		rgba(110, 119, 116, 0.8) 50%, rgba(10, 14, 10, 0.8) 51%,
		rgba(10, 8, 9, 0.8) 100%);
	box-shadow: inset 0px 0px 46px -8px #cccccc;
	height: 80px;
	transition: all 220ms;
	-webkit-transition: all 220ms;
}

.formStyle2 {
	margin: 30px auto;
	background-color: white;
	width: 450px;
	padding: 10px;
	border: 1px solid #cccccc;
	position: absolute;
	left: 60%;
	top: 50%;
	margin-left: -125px;
	margin-top: -200px;
	border-radius: 10px;
	background: linear-gradient(135deg, rgba(174, 188, 191, 0.8) 0%,
		rgba(110, 119, 116, 0.8) 50%, rgba(10, 14, 10, 0.8) 51%,
		rgba(10, 8, 9, 0.8) 100%);
	box-shadow: inset 0px 0px 46px -8px #cccccc;
	height: 145px;
	transition: all 220ms;
	-webkit-transition: all 220ms;
}

.rePasswordhide {
	display: none;
}

.rePasswordview {
	display: block;
}

.hideAble1hide {
	display: none;
}

.hideAble1view {
	display: block;
}

.title {
	float: left;
	font-family: 微軟正黑體;
	font-size: 10px;
	text-align: right;
	width: 70px;
	padding: 5px 3px 3px 3px;
	color: white;
	text-shadow: 1px 1px 2px #C7C7C7;
}

.buttonPage {
	text-align: center;
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

.divBlock1 {
	transition: background-color 300ms;
	-webkit-transition: background-color 300ms;
}

.divBlock1:HOVER {
	border-radius: 5px;
	transition: background-color 300ms;
	-webkit-transition: background-color 300ms;
}

.errorMsg {
	color: red;
	font-size: 10px;
	font-family: 微軟正黑體;
	font-weight: 900;
	text-shadow: 1px 1px 2px #FF7D7D;
}
</style>

<script>
	window.onload = function() {
		document.getElementById('signup').onclick = doSignup;
		document.getElementById("cancel").onclick = doCancel;
		document.getElementById('reTypePWD').onblur = doCommit;
		document.getElementById('password').onblur = doCommit;
		document.getElementById('idEmail').onblur = doCheckEmail;
	}

	var sw1 = false;
	var sw2 = false;
	var sw3 = false;
	var isSignup;
	function doSignup() {
		document.getElementById("hidenPass").className = 'rePasswordview';
		document.getElementById("hideAble1").className = 'hideAble1hide';
		document.getElementById("idForm").className = 'formStyle2';
		document.getElementById('errorAccount').innerHTML = "";
		document.getElementById('errorPassword').innerHTML = "";
		isSignup = true;

	}
	function doCancel() {
		document.getElementById("hidenPass").className = 'rePasswordhide';
		document.getElementById("hideAble1").className = 'hideAble1view';
		document.getElementById("hideAble1").className = 'buttonPage';
		document.getElementById("idForm").className = 'formStyle1';
		document.getElementById('errorAccount').innerHTML = "";
		document.getElementById('errorPassword').innerHTML = "";
		isSignup = false;

	}

	function doCommit() {
		var thepsw = new String(document.getElementById("password").value);
		var pattern = /(?=.*[a-z])(?=.*[\d])\S{6,}/i;

		if (isSignup == true) {
			if (!pattern.test(thepsw)
					|| thepsw != document.getElementById('reTypePWD').value) {
				document.getElementById('commit').disabled = true;
				document.getElementById('errorRePass').innerHTML = "<img src='/JspTrainingTask/images/p2.png' />";
				sw1 = false;
			} else {
				document.getElementById('commit').disabled = false;
				document.getElementById('errorRePass').innerHTML = "<img src='/JspTrainingTask/images/p1.gif' />";
				sw1 = false;
			}
		}
	}

	function doCheckEmail() {
		var theEmail = new String(document.getElementById("idEmail").value);
		var pattern = /^\S+@\S+\.\w{2,3}$/i;
		if (isSignup == true) {
			if (pattern.test(theEmail)) {
				document.getElementById('errorEmail').innerHTML = "<img src='/JspTrainingTask/images/p1.gif' />";
				sw2 = false;
			} else {
				document.getElementById('errorEmail').innerHTML = "<img src='/JspTrainingTask/images/p2.png' />";
				sw2 = false;
			}
		}
	}
</script>


</head>
<body>
	<form action="<c:url value='/utility/login.do'/>" method="POST">
		<div class="formStyle1" id="idForm">
			<div class="divBlock1">
				<div class="title">名稱:</div>
				<input type="text" name="acoount" size="30" placeholder="請輸入帳號"
					autocomplete="off" value="${userID }" required> <label class="errorMsg"
					id="errorAccount">${errorMSG.accountError}</label>
			</div>
			<div class="divBlock1">
				<div class="title">密碼:</div>
				<input type="password" name="password" id="password"
					placeholder="需為至少六字元之英數組合" size="30" autocomplete="off" required>
				<label class="errorMsg" id="errorPassword">${errorMSG.passwordError}</label>
			</div>
			<div class="buttonPage" id="hideAble1">
				<input class="button" type="submit" name="submit" id="login"
					value="登入" /> <input class="button" type="button" id="signup"
					value="註冊" />
			</div>

			<div class="rePasswordhide" id="hidenPass">
				<hr />
				<div class="divBlock1">
					<div class="title">確認密碼:</div>
					<input type="password" id="reTypePWD" placeholder="請再一次輸入密碼已做確認"
						size="30" autocomplete="off"> <label class="errorMsg"
						id="errorRePass"></label>
				</div>
				<div class="divBlock1">
					<div class="title">Email:</div>
					<input type="text" name="email" id="idEmail"
						placeholder="ex:example@xxxxx.com" size="50"  value="${userEmail }" autocomplete="off">
					<label class="errorMsg" id="errorEmail"></label>
				</div>
				<div class="buttonPage">
					<input class="button" type="submit" name="submit" id="commit"
						valut="送出" /> <input class="button" type="button" id="cancel"
						value="取消" />
				</div>
			</div>
		</div>
	</form>
</body>
</html>