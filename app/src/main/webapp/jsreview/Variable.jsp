<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	v1 = 10; //전역변수
	function f1(){
		i1 = 10; //var를 쓰면 지역변수 f2에서 i1을 쓸 수 없다  
		var v1 = 20;  //var가 없으면 전역변수로 다른 블록에서도 쓸 수 있다
		console.log("f1 함수 실행");
	}
	function f2(){
		console.log(i1); //10
		console.log(v1); //10
		v1 = 30;
	}
</script>
</head>
<body>

</body>
</html>