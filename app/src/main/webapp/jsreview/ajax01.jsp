<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<div id="demo">
<h2>The XMLHttpRequest object</h2>
</div>
<input id="userid">
<button type="button" onclick="loadDoc()">Change Content</button>
<script>
function loadDoc() {
	//1. XHR객체를 생성
	  var xhttp = new XMLHttpRequest();
	//2. 콜백함수
	  xhttp.onreadystatechange = function() { //응답완료
		if (this.readyState < 4) {
			document.getElementById("demo").innerHTML = "loading..."
		}
		else if (this.readyState == 4) {
			if(this.status==200) { //OK
	     	document.getElementById("demo").innerHTML = this.responseText; //responseXML
	    } else {
	    	document.getElementById("demo").innerHTML = this.statusText + "error";
	    }
		}
	  };
	  //3. 요청준비(url)
	  var param = "userid="+document.getElementById("userid").value;
	  xhttp.open("POST", "../FindName?");	//세번째 인수: 비동기여부(true)
	  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	  //4. 요청 시작
	  xhttp.send(param);
	  document.getElementById("demo").innerHTML+="ajax send";
	}
</script>
</body>
</html>