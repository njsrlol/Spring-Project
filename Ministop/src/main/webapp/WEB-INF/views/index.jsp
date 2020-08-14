<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="home" value="/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MINISTOP</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<style>
* {
box-sizing: border-box;
-webkit-box-sizing: border-box;
-moz-box-sizing: border-box;
}
html {
height: 100%;
}
body {
min-height: 100%;
position: relative;
padding-bottom: 50px; /* footer height */
}
#topbar{
	top : 0;
	height: 3px;
}
header {

	height: 100px;
}
main {
	margin: 0;
	padding: 0px;
	height: 100%;
	padding-bottom: 5px;
}

footer {
height: 50px;
position: absolute;
bottom: 0;
left: 0;
right: 0;
color: white;
border-top: 1px solid black;

}
</style>
</head>
<body>
	<div class="topbar">
		<%@ include file="Common/topbar.jspf" %>
	</div>
	<header>
		<%@ include file="Common/header.jspf"%>
	</header>
	<main>
		<c:import url="${home }${formPath }"></c:import>
	</main>
	<footer>
		<%@ include file="Common/footer.jspf"%>
	</footer>
</body>

</html>