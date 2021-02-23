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
			//코드에 해당하는 영화의 상세정보를 조회 - 감독, 출연배우, ...
			var xhttp = new XMLHttpRequest();
			xhttp.onload = function() {
				var movie = JSON.parse(this.responseText);
				/*console.log(movie.movieInfoResult.movieInfo);
				console.log("영화 제목: "+movie.movieInfoResult.movieInfo.movieNm);
				console.log("출연배우"+movie.movieInfoResult.movieInfo.actors[0].peopleNm);
				console.log("출연배우"+movie.movieInfoResult.movieInfo.directors[0].peopleNm);
				console.log("개봉일자"+movie.movieInfoResult.movieInfo.openDt); */
				
				var list = movie.movieInfoResult.movieInfo;
				var list2 = movie.movieInfoResult.movieInfo.actors;
				document.getElementById("result").innerHTML +="<br>"+"영화제목: "+list.movieNm+"<br>"+"개봉일자: "+list.openDt+"<br>"+"감독: "+list.directors[0].peopleNm+"<br>";
				for(m of list2) {
				document.getElementById("result").innerHTML +="출연배우: "+m.peopleNm+"<br>";
				}
			}
			var url = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.json?key=f5eef3421c602c6cb7ea224104795888&movieCd="+movieCd;
			xhttp.open("get", url);
			xhttp.send();
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
				//console.log(movie.boxOfficeResult)
				var list = movie.boxOfficeResult.dailyBoxOfficeList;
				for(m of list) {
					document.getElementById("result").innerHTML += "<div onclick=loadInfo('"+ m.movieCd + "')>" + m.movieNm +" : "+ m.movieCd + "</div>";
				}
			}
			var url = "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=20210221";
			xhttp.open("get", url);
			xhttp.send();
		}
	</script>
</body>
</html>