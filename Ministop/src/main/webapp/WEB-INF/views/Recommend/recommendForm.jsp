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

</head>
<body>
   <form action="${home }recommend/radiusSearch">
      <c:forEach var="store" items="${storeLst }">
   ${store.newaddress }
   ${store.branchname }
   ${store.longitude }
   ${store.latitude }<br />
         <input type="text" name="lnglat"
            value="${store.latitude },${store.longitude }" />
         <input type="text" name="branch"
            value="${store.branchname },${store.newaddress }" />
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
            message = '<div style="padding:5px;">현재 위치</div>'; // 인포윈도우에 표시될 내용입니다 */

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

      //위도경도 히든 데이터 받아온 리스트
      var latlist = new Array();
      var lnglist = new Array();
      $("input[name=lnglat]").each(function(index, item) {
         var split = ($(item).val()).split(',');
         latlist.push(Number(split[0]));
         lnglist.push(Number(split[1]));
         console.log(latlist);
         console.log(lnglist);
      });
      var branchlist = new Array();
      var addlist = new Array();
      $("input[name=branch]").each(function(index, item) {
         var split = ($(item).val()).split(',');
         branchlist.push(split[0]);
         addlist.push(split[1]);
      });

      //새로 가공하는 위도경도 리스트.. 제이슨 형식
      var aJsonArray = new Array();

      for (var i = 0; i < latlist.length; i++) {
         var aJson = new Object();
         aJson.title = '미니스톱';
         aJson.content = '<div>' + branchlist[i] + '<br/>' + addlist[i] + '<br/></div>';
         /* aJson.latlng = new kakao.maps.LatLng(latlist[i], lnglist[i]); */
         aJson.latlng = new kakao.maps.LatLng(latlist[i], lnglist[i]);
         console.log('aJson 오브젝트 : ' + aJson.latlng);
         aJsonArray.push(aJson);
      }
      var positions = aJsonArray;
      /* var positions = JSON.stringify(aJsonArray); */
      console.log('aJsonArray : ' + positions);

      /*        var positions = [
       {
       title: '미니스탑', 
       latlng: new kakao.maps.LatLng(37.5587, 126.98586)
       },
       {
       title: '미니스탑', 
       latlng: new kakao.maps.LatLng(37.566944, 126.98899)
       }
       ]; 
       console.log(positions); */

      // 마커 이미지의 이미지 주소입니다
      var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";

      for (var i = 0; i < positions.length; i++) {

         // 마커 이미지의 이미지 크기 입니다
         var imageSize = new kakao.maps.Size(24, 35);

         // 마커 이미지를 생성합니다    
         var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);

         // 마커를 생성합니다
         var marker = new kakao.maps.Marker({
            map : map, // 마커를 표시할 지도
            position : positions[i].latlng, // 마커를 표시할 위치
            title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
            image : markerImage
         // 마커 이미지 
         }); // 마커에 표시할 인포윈도우를 생성합니다 
         var infowindow = new kakao.maps.InfoWindow({
            content : positions[i].content
         // 인포윈도우에 표시할 내용
         });

         // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
         // 이벤트 리스너로는 클로저를 만들어 등록합니다 
         // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
         kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(
               map, marker, infowindow));
         kakao.maps.event.addListener(marker, 'mouseout',
               makeOutListener(infowindow));
      }

      // 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
      function makeOverListener(map, marker, infowindow) {
         return function() {
            infowindow.open(map, marker);
         };
      }

      // 인포윈도우를 닫는 클로저를 만드는 함수입니다 
      function makeOutListener(infowindow) {
         return function() {
            infowindow.close();
         };
      }
   </script>
</body>
</html>