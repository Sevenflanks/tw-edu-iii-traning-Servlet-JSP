<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
body {
	background: url("images/SKHN-LOGO-Mark2-B-Side-noMark.png");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-position: 80% center;
	background-attachment:fixed;
	margin:10px 0px;
}

.mainClass1 {
	display: inline-block;
	vertical-align: middle;
	width: 95%;
	height: 200px;
	left: 50%;
	margin-left:-47.5%;
	position: absolute;
	text-align: center;
	border: 1px solid #cccccc;
	border-radius: 10px;
	background: radial-gradient(ellipse at center, rgba(0,0,0,0.9) 0%,rgba(69,72,77,0.9) 100%); 
	box-shadow: inset 0px 0px 46px -8px #cccccc;
}

.topList{
	height: 30px;
	width: 90%;
	border: 1px dotted white;
	border-radius: 4px;
	position: absolute;
	top: 165px;
	left: 5%;
}

.topButtom{
	font-family: 微軟正黑體;
	color: white;
	height: 30px;
	line-height: 30px;
	width: 90px;
	margin: 0px 5px;
	float: left;
}

.topButtom:ACTIVE{
	color: red; 
}

.topScan{
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

.topScanHOVER{
	box-shadow: inset 0px 0px 10px 4px #FFC400;
	opacity: 0.9;
	transition: all 220ms;
	-webkit-transition: all 220ms;
}




</style>

<script>
	window.onload = function(){
		document.getElementById('idTopButtom1').onmousemove = function(){trackMouse(0)};
		document.getElementById('idTopButtom2').onmousemove = function(){trackMouse(100)};
		document.getElementById('idTopButtom3').onmousemove = function(){trackMouse(200)};
		document.getElementById('idTopList').onmouseleave = function(){trackBack(0)}
		var k = document.getElementById('idTopScan');
	    k.style.left=0+'px';
	}
	
	function trackMouse(pos){
	    var k = document.getElementById('idTopScan');
	    k.style.boxShadow = 'inset 0px 0px 10px 4px #FFC400';
	    k.style.left=(pos)+'px';
	    
	}
	
	function trackBack(pos){
	    var k = document.getElementById('idTopScan');
	    k.style.boxShadow = 'inset 0px 0px 10px 4px #FF0000';
	    k.style.left=(pos)+'px';
	    
	}


</script>

</head>
<body>
	<div>
		<div class="mainClass1">
			<div class="topList" id="idTopList">
				<div class="topScan" id="idTopScan"></div>
				<div class="topButtom" id="idTopButtom1">所有會員</div>
				<div class="topButtom" id="idTopButtom2">詳細資料</div>
				<div class="topButtom" id="idTopButtom3">關於本站</div>
				
			</div>
		</div>
	</div>
</body>
</html>