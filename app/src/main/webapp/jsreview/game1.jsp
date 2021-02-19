<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div { display: inline-block; 
	width : 100px; 
	height: 100px;
	border: 1px solid black; }
</style>

</head>
<body>
<script>
	for(i=0; i<10; i++) {
		var div = document.createElement("div");
		div.innerHTML = i;
		div.onclick = clickHandler
		document.body.appendChild(div);
	}
	function clickHandler(e) {
		console.log(e.target.innerHTML, '클릭됨')
		//to do
		//클릭된 태그를 삭제
		
		var len = document.getElementsByTagName("div").length
		console.log(len, ' 개')
		//다 지워지면 모두 지워졌다고 메세지 남기기
		
		//번외 순서뒤죽박죽해서 작은 순서대로 클릭해서 없애기
		
		//번외 시간 추가해서 완료시작작은순서로 순위매기기
		//1to50게임 참고
		
		
	}
</script>
</body>
</html>