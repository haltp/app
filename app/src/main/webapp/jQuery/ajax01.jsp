<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajax01.jsp</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(function() {
		$("#btn").on("click", function() {
			var param = "userid="+$("#userid").val();
			var url = "../FindName";
			/*1.load*/
			//$("#demo").load(url+"?"+param);
			
			/*2.post/get get( url [, data ] [, success ] [, dataType ] )*/
			param = {userid : $("#userid").val(), dept : "개발"} //?userid = aaa&dept = 개발
			$.get(url, param, function(response){
				$("#demo").append("get:" + response);				
			});
			$.post(url, param, function(response){
				$("#demo").append("post:" + response);				
			});
			
			
			/*3.ajax*/
			$.ajax(url, {
				async : true, //비동기 true // 동기 false //async = 비동기
				success : function(response){
							$("#demo").append("ajax:" + response);				
						},
				data : param
			});
			
		});
	});
</script>
</head>
<body>
	<div id="demo">
		<h2>The XMLHttpRequest object</h2>
	</div>
	<input id="userid">
	<button type="button" id="btn">Change Content</button>
</body>
</html>