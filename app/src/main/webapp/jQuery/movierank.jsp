<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>movierank.jsp</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	//버튼클릭하면 박스오피스 정보를 조회해서 영화제목과 영화코드를 rank div에 출력
	function loadInfo(movieCd){
			//코드에 해당하는 영화의 상세정보를 조회 - 감독, 출연배우, ...
			var xhttp = new XMLHttpRequest();
			xhttp.onload = function() {
				var movie = JSON.parse(this.responseText);	
				
				var list = movie.movieInfoResult.movieInfo;
				var list2 = movie.movieInfoResult.movieInfo.actors;
				
				document.getElementById("result").innerHTML +="<br>"+"영화제목: "+list.movieNm+"<br>"+"개봉일자: "+list.openDt+"<br>"+"감독: "+list.directors[0].peopleNm+"<br>";
				
				for(m of list2) {
				document.getElementById("result").innerHTML +="출연배우: "+m.peopleNm+"<br>";
				}
			}
			var url = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.json?key=f5eef3421c602c6cb7ea224104795888&movieCd=20199541";
			xhttp.open("get", url);
			xhttp.send();
		}
	
$(function() {
		$("#btn").on("click", function() {
		$.ajax({
			url : "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=20210221",
			success : function(obj) {
				list = obj.boxOfficeResult.dailyBoxOfficeList;
				for (m of list) {
					$("#rank").append("<div onclick=loadInfo('"+ m.movieCd + "')>"+m.movieNm+" : "+m.movieCd+"<br>");
				}
				//console.log(obj.boxOfficeResult.dailyBoxOfficeList[0].movieNm);
			},
			dataType : "json"
		});
	});
});
</script>
</head>
<body>
	<button id="btn">박스오피스조회</button>
	<div id="rank"></div>
	<div id="info"></div>
</body>
</html>