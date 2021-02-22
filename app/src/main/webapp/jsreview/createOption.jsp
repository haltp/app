<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function addFruit() {
		var op = document.createElement("option")
		op.innerHTML = document.getElementById("fruit").value;
		document.getElementById("list").add(op)
		document.getElementById("fruit").value = "";
	}

	function addFruit1() {
		var table = document.getElementById("tbl");
		for (i = 0; i <= 5; i++) {
			cell = table.rows[i].insertCell();
			cell.innerText = document.getElementById("fruit").value;
		} if (i = 5) {
				row = table.insertRow();
				cell = row.insertCell();
			}
			/* table.insertRow();
			row = table.insertRow();
			cell = row.insertCell(); */

	}
</script>
</head>
<body>
	<input id="fruit">
	<button type="button" onclick="addFruit1()">등록</button>
	<select id="list" size="10">
	</select>
	<table id="tbl" border="1">
	</table>
</body>
</html>