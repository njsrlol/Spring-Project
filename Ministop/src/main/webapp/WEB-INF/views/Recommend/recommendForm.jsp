<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="root" value="${pageContext.request.contextPath }/" />
<c:url var="home" value="/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Kakao 지도 시작하기</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/Recommend/css/style.css">
<script>
	$(document).ready(function() {
		// Geolocation API에 액세스할 수 있는지를 확인
		if (navigator.geolocation) {
			//위치 정보를 얻기
			navigator.geolocation.getCurrentPosition(function(pos) {
				$('#latitude').val(pos.coords.latitude); // 위도
				$('#longitude').val(pos.coords.longitude); // 경도
			});
		} else {
			alert("이 브라우저에서는 Geolocation이 지원되지 않습니다.")
		}

	});
</script>
</head>
<body>
	<form action="${home }recommend/radiusSearch">
		<c:forEach var="store" items="${storeLst }">
	${store.newaddress }
	${store.longitude }
	${store.latitude }<br />
			<input type="text" name="lnglat"
				value="${store.latitude }, ${store.longitude }" />
			<br />
		</c:forEach>
		<nav>
			<ul>
				<li><a href="${root }recommend">인근지역 플러스상품 추천</a></li>
				<li><a href="${root }popularity">인근지역 인기상품 추천</a></li>
			</ul>
		</nav>
		<h1>플러스상품 추천 맵</h1>
		<input type="text" id="longitude" name="longitude" /> <input
			type="text" id="latitude" name="latitude" /> <input type="submit"
			value="검색" />
		<div id="map" style="width: 500px; height: 400px; align: center;"></div>
	</form>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d66f7e0be8da1e682547c397d45d4ee0&libraries=services,clusterer,drawing"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center : new kakao.maps.LatLng(33.450701, 126.570667),
			level : 5
		};

		var map = new kakao.maps.Map(container, options);

		// HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
		if (navigator.geolocation) {

			// GeoLocation을 이용해서 접속 위치를 얻어옵니다
			navigator.geolocation.getCurrentPosition(function(position) {

				var lat = position.coords.latitude, // 위도
				lon = position.coords.longitude; // 경도

				var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
				message = '<div style="padding:5px;">반경 1km 내 미니스톱 위치입니다.</div>'; // 인포윈도우에 표시될 내용입니다 */

				// 마커와 인포윈도우를 표시합니다
				displayMarker(locPosition, message);

			});

		} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다

			var locPosition = new kakao.maps.LatLng(33.450701, 126.570667), message = 'geolocation을 사용할수 없어요..'

			displayMarker(locPosition, message);
		}

		// 지도에 마커와 인포윈도우를 표시하는 함수입니다
		function displayMarker(locPosition, message) {

			// 마커를 생성합니다
			var marker = new kakao.maps.Marker({
				map : map,
				position : locPosition
			});

			var iwContent = message, // 인포윈도우에 표시할 내용
			iwRemoveable = true;

			// 인포윈도우를 생성합니다
			var infowindow = new kakao.maps.InfoWindow({
				content : iwContent,
				removable : iwRemoveable
			});

			// 인포윈도우를 마커위에 표시합니다 
			infowindow.open(map, marker);

			// 지도 중심좌표를 접속위치로 변경합니다
			map.setCenter(locPosition);
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
/* 		//위도경도 히든 데이터 받아온 리스트
		var list = new Array();
		$("input[name=lnglat]").each(function(index, item) {
			list.push($(item).val());
		});
		
		//새로 가공하는 위도경도 리스트.. 제이슨 형식
		var aJsonArray = new Array();
		var aJson = new Object();
		for(var i=0; i<list.length; i++){
		aJson.title = '미니스톱';
		aJson.latlng = list[i];
		aJsonArray.push(aJson);
		}
		var positions = JSON.stringify(aJsonArray);

		alert(positions); */
		
		
		
		var positions = [
		    {
		        title: '카카오', 
		        latlng: new kakao.maps.LatLng(37.5591, 126.86092)
		    },
		    {
		        title: '생태연못', 
		        latlng: new kakao.maps.LatLng(37.5567, 126.85579)
		    }
		    ];
		
		
		// 마커 이미지의 이미지 주소입니다
		var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
		    
		for (var i = 0; i < positions.length; i ++) {
		    
		    // 마커 이미지의 이미지 크기 입니다
		    var imageSize = new kakao.maps.Size(24, 35); 
		    
		    // 마커 이미지를 생성합니다    
		    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
		    
		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({
		        map: map, // 마커를 표시할 지도
		        position: positions[i].latlng, // 마커를 표시할 위치
		        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
		        image : markerImage // 마커 이미지 
		    });
		}

		/*		
		
		 // 주소를 좌표로 바꾸기 위한 geocoder 생성
		 var geocoder = new kakao.maps.services.Geocoder();

		 // 전체 마을 위치 마커를 담을 배열
		 var markers = [];
		
		 $.ajax({
		 url : '${pageContext.request.contextPath}/town/api/showAll',
		 type : 'GET',
		 dataType : 'json',
		 data : '',
		 success : function(response) {
		 if(response.result == 'fail') {
		 console.log(response.message);
		 return;
		 }
		
		 if(response.result == 'success') {
		 // 마을 전체 리스트를 돌면서 마을 위치마다 마커 찍기
		 $.each(response.data, function(index, value){
		 // DB에서 주소를 불러와 geocoder를 이용해 좌표로 변환
		 geocoder.addressSearch(response.data[index].addr, function(result, status) {
		 // 정상적으로 검색이 완료됐으면 
		 if (status === kakao.maps.services.Status.OK) {
		 var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

		 // 마커가 표시될 위치입니다
		 var markerPosition  = new kakao.maps.LatLng(coords.Ha, coords.Ga); 

		 // 마커를 생성합니다
		 var marker = new kakao.maps.Marker({
		 position: markerPosition
		 });
		
		 // 커스텀 오버레이에 표시할 컨텐츠 입니다
		 // 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
		 // 별도의 이벤트 메소드를 제공하지 않습니다 
		 var closeOverlay = function() {
		 overlay.setMap(null);
		 };

		 var $wrap = $('<div class="wrap" />');
		 var $info = $('<div class="info" />');
		 var $title = $('<div class="title" />').text(response.data[index].name);
		 var $close = $('<div class="close" title="닫기" />').click(closeOverlay);
		 var $body = $('<div class="body" >+
		 '<div class="img">' +
		 '                <img src="http://cfile181.uf.daum.net/image/250649365602043421936D" width="73" height="70">' +
		 '           </div>' + 
		 '            <div class="desc">' + 
		 '                <div class="ellipsis">' + response.data[index].addr + '</div>' + 
		 '                <div><a href="http://www.kakaocorp.com/main" target="_blank" class="link">홈페이지</a></div>' + 
		 '            </div>' +
		 '</div>')
		
		
		 );

		 $wrap.append($info);
		 $info.append($title).append($body);
		 $title.append($close);

		 var content = $wrap[0];
		 var overlay = new kakao.maps.CustomOverlay({
		 content: content,
		 map: map,
		 position: marker.getPosition()
		 });	
		
		
		
		 // 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
		 kakao.maps.event.addListener(marker, 'click', function() {
		 overlay.setMap(map);
		 });
		
		 // 검색된 마커만 지도 위에 표시하기 위해 전체 마커 숨기기
		 closeOverlay();
		
		 // 마커가 지도 위에 표시되도록 설정합니다
		 marker.setMap(map);
		
		 // 생성된 마커를 배열에 추가
		 markers.push(marker);
		 } 
		 });
		 })
		 }
		 }
		 });
		
		 // 지도에 마커 표시
		 function setMarkers(map) {
		 for(var i=0; i<markers.length; i++) {
		 markers[i].setMap(map);
		 }            
		 }

		 // 지도에서 마커 숨기기
		 function hideAllMarkers() {
		 setMarkers(null);
		 markers = [];
		 }
		 */
	</script>
</body>
</html>