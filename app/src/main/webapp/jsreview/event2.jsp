<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event2.jsp</title>
<script>
	//페이지 로드 이벤트 필요
</script>
</head>
<body>
<div id="result">event test</div>
<script>
	//페이지 로드 이벤트 필요없음
	//result.onclick=function(){}대신에 addEventListener쓰기
	result.addEventListener("click", function(){
		alert(this.innerHTML);
	});
	result.addEventListener("click", function(){
		alert("click!!!");
	});
</script>
</body>
</html>