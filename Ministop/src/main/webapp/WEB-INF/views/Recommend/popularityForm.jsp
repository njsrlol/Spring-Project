<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Kakao 지도 시작하기</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/Recommend/css/style.css">
</head>
<body>
	<nav>
		<ul>
			<li><a href="${root }recommend">인근지역 플러스상품 추천</a></li>
			<li><a href="${root }popularity">인근지역 인기상품 추천</a></li>
		</ul>
	</nav>
	<h1>인기상품 추천 맵</h1>
	<div id="map" style="width: 500px; height: 400px; align: center;"></div>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d66f7e0be8da1e682547c397d45d4ee0"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center : new kakao.maps.LatLng(33.450701, 126.570667),
			level : 3
		};

		var map = new kakao.maps.Map(container, options);
	</script>
</body>
</html>