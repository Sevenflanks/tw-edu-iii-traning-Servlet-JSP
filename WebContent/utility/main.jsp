<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<style>
.mainClass1 {
	display: inline-block;
	vertical-align: middle;
	width: 95%;
	height: 200px;
	left: 50%;
	margin-left: -47.5%;
	position: absolute;
	text-align: center;
	border: 1px solid #cccccc;
	border-radius: 10px;
	background: radial-gradient(ellipse at center, rgba(0, 0, 0, 0.9) 0%,
		rgba(69, 72, 77, 0.9) 100%);
	box-shadow: inset 0px 0px 46px -8px #cccccc;
}



.topList {
	height: 30px;
	width: 90%;
	border: 1px dotted white;
	border-radius: 4px;
	position: absolute;
	top: 165px;
	left: 5%;
}

.topButtom {
	font-family: 微軟正黑體;
	color: white;
	height: 30px;
	line-height: 30px;
	width: 90px;
	margin: 0px 5px;
	float: left;
	cursor: pointer;
	-webkit-user-select: none;  /* Chrome all / Safari all */
	-moz-user-select: none;     /* Firefox all */
	-ms-user-select: none;      /* IE 10+ */
}

.topButtom:ACTIVE {
	color: red;
}

.topScan {
	box-shadow: inset 0px 0px 10px 4px #FF0000;
	border-radius: 10px;
	height: 30px;
	width: 90px;
	position: absolute;
	margin: 0px 5px;
	float: left;
	opacity: 0.5;
	transition: all 220ms;
	-webkit-transition: all 220ms;
	pointer-events: none;
}

.topScanHOVER {
	box-shadow: inset 0px 0px 10px 4px #FFC400;
	opacity: 0.9;
	transition: all 220ms;
	-webkit-transition: all 220ms;
}
</style>

<script>
	
	window.onload = function() {
		document.getElementById('idTopButtom1').onmousemove = function() {
			trackMouse(0);
		};
		document.getElementById('idTopButtom2').onmousemove = function() {
			trackMouse(100);
		};
		document.getElementById('idTopButtom3').onmousemove = function() {
			trackMouse(200);
		};
		document.getElementById('idTopList').onmouseleave = function() {
			trackBack(sessionStorage.posBack);
		};

		document.getElementById('idTopButtom1').onclick = function() {
			pageChange(1);
		};
		document.getElementById('idTopButtom2').onclick = function() {
			pageChange(2);
		};
		document.getElementById('idTopButtom3').onclick = function() {
			pageChange(3);
		};
		var k = document.getElementById('idTopScan');
		k.style.left = sessionStorage.posBack + 'px';
	}

	function trackMouse(pos) {
		var k = document.getElementById('idTopScan');
		k.style.boxShadow = 'inset 0px 0px 10px 4px #FFC400';
		k.style.left = (pos) + 'px';

	}

	function trackBack(pos) {
		var k = document.getElementById('idTopScan');
		k.style.boxShadow = 'inset 0px 0px 10px 4px #FF0000';
		k.style.left = (pos) + 'px';

	}

	function pageChange(pageNumber) {
		if (pageNumber == 1) {
			document.location.href = "findAllMembers.jsp"
		}
		if (pageNumber == 2) {
			document.location.href = "getUserInfo"
		}
		if (pageNumber == 3) {
			document.location.href = "about.jsp"
		}
	}
</script>

<div class="mainClass1">
	<div class="topList" id="idTopList">
		<div class="topScan" id="idTopScan"></div>
		<div class="topButtom" id="idTopButtom1">所有會員</div>
		<div class="topButtom" id="idTopButtom2">詳細資料</div>
		<div class="topButtom" id="idTopButtom3">關於本站</div>
	</div>
</div>
