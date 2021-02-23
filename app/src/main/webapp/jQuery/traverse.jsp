<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>traverse.jsp</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(function() {
		$(".btn").on("click", function(){ //this = $(".btn")
			/*숫자 나오게 두가지 다 같은 방법*/
			//var gname = $(this).closest("div").children().first().html();
			//var gname = $(this).parent().prev().prev().html();
			/*상품명 나오게 세가지 다 같은 방법*/
			//var gname = $(this).closest("div").children().eq(1).html();
			var gname = $(this).closest("div").find("span:eq(1)").html();
			//var gname = $(this).parent().prev().html();
			alert(gname);
		});
	});
</script>
</head>
<body>
	<div>
		<span>1</span>
		<span>상품1</span>
		<span><button type="button" class="btn">선택</button></span>
	</div>
	<div>
		<span>2</span>
		<span>상품2</span>
		<span><button type="button" class="btn">선택</button></span>
	</div>
	<div>
		<span>3</span>
		<span>상품3</span>
		<span><button type="button" class="btn">선택</button></span>
	</div>
</body>
</html>