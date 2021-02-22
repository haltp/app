<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
img {
	whith: 500px
}
</style>
<script>
	function toSm() {
		//모든 이미지의 크기를 100감소
		//현재 이미지의 크기를 확인
		//크기에 100을 빼서 크기 지정
		var imgs = document.getElementsByTagName("img");
		for(i = 0; i<imgs.length; i++) {
		var s = imgs[i].width;
		s = parseInt(s)-100+"px";
		imgs[i].style.width = s;
		}
	}
</script>
</head>
<body>
	<button type="button" onclick="toSm()">작게</button>
	<img id="img1" style="width:500px" src="../images/Chrysanthemum.jpg">
	<img class="backimg" style="width:500px" src="../images/Hydrangeas.jpg">
	<img class="backimg" style="width:500px" src="../images/Lighthouse.jpg">
</body>
</html>