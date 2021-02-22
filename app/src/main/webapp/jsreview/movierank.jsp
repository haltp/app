<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<button id="btn" onclick="loadMovie()">박스오피스조회</button>
	<div id="result"></div>
	<script>
		function loadInfo(movieCd){
			//console.log(mocieCd)
			//코드에 해당하는 영화의 상세정보를 조회 - 감독, 출연배우, ...
		}
	
		function loadMovie() {
			var xhttp = new XMLHttpRequest();
			xhttp.onload = function() {
				//responseText parse
				var movie = JSON.parse(this.responseText);
				console.log(movie.boxOfficeResult.dailyBoxOfficeList[0].movieNm);
				//for 이름만 출력
				/* for (i = 0; i < movie.boxOfficeResult.dailyBoxOfficeList.length; i++) {
					document.getElementById("result").innerHTML += movie.boxOfficeResult.dailyBoxOfficeList[i].movieNm + "<br>";
				} */
				var list = movie.boxOfficeResult.dailyBoxOfficeList;
				for(m of list) {
					document.getElementById("result").innerHTML += "<div onclick=loadInfo('"+ m.movieCd + "')>" + m.movieNm + m.movieCd + "</div>";
				}
			}
			var url = "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=20210221";
			xhttp.open("get", url);
			xhttp.send();
		}
	</script>
</body>
</html>