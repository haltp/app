<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event.jsp</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	//$(function(){}); = $(window).on("load", 랑 같아서 줄여 쓰기 가능
	$(function() {
		$("#btnAdd").on("click", function() { //직접 이벤트
			$("#result").append($("<li>").html("자바1")
										 .css("color", "red")
										 .attr("id", "book")
										 .prop("alt", "text")
										 .data("num", "10")); //attr = 속성 바꿔주기
		});					//"li"는 실제로 이벤트가 발생할 타겟
		$("ul").on("click", "li", function(){ //그룹이벤트(이벤트권한을 부모태그에 위임)
			$(event.target).remove();
			console.log(this); //this = ul태그
			console.log(event.target); //event.target = li태그
		});
	});

	$(window).on("load", function() {	
		$("#btnAdd").bind("click", function() { //#=getElementById
			$("#result").append($("<li>").html("자바1"));
		});
	});
	//페이지 로드 이벤트(페이지가 다 로딩되고 나면 실행되어라)
	/* 위에 jQuery방식으로 똑같이 만들어 봄
	window.addEventListener("load", function(event) {
		 document.getElementsByTagName("ul")[0].addEventListener("click", function(){
			//this.remove();
			event.target.parentNode.removeChild(event.target);
		}); 
		document.getElementById("btnAdd").addEventListener("click", function() {
			//li태그 생성
			var li = document.createElement("li");
			li.innerHTML = "자바"
			document.getElementById("result").appendChild(li);
		});

	});
	 */
</script>
</head>
<body>
	<button type="button" id="btnAdd">추가</button>
	<ul id="result">
		<li>스프링</li>
	</ul>
</body>
</html>