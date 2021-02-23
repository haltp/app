<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>class.jsp</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
.menu {
	border: 1px solid gray;
	background-color: aqua;
}

.active {
	background-color: yellowgreen;
}
</style>
<script>
	$(function() {
		//li태그에 click이벤트 지정
		$("li.menu").on("click", function(){
			//alert($(this).html()); //=alert(this.innerHTML);
			$("li.menu").removeClass("active");
			$(this).addClass("active");
		});
	});
</script>
</head>
<body>
	<ul>
		<li class="menu" data-num="1">게시판</li>
		<li class="menu" data-num="2">회원가입</li>
		<li class="menu active" data-num="3">로그인</li>
		<li class="menu" data-num="4">QnA</li>
	</ul>
</body>
</html>