<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<c:set var="root" value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>CodePen - CodePen Challenge: Navigation with Sub-Navigation</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/Products/css/mainstyle.css">
  <link href="https://fonts.googleapis.com/css?family=Lexend+Exa&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/Products/css/style.css">
<style>
#menu_btn1 {
	border-top-left-radius: 15px;
	border-bottom-left-radius: 15px;
	margin-right: -5px;
}

#menu_btn2 {
	margin-right: -5px;
}

#menu_btn3 {
	border-top-right-radius: 15px;
	border-bottom-right-radius: 15px;
	margin-right: -5px;
}

#btn_group button {
	border: 1px solid skyblue;
	background-image: : rgba( 0, 0, 0, 0);
	color: skyblue;
	padding: 5px;
}

#btn_group button:hover {
	color: white;
	background-color: skyblue;
}
#btn_group input[type="search"] {
	text-align:center;
	width:200px; 
	margin-right: -5px;
	border: 1px solid skyblue;
	background-image: : rgba( 0, 0, 0, 0);
	color: skyblue;
	padding: 5px;
	position: relative;
	top: 8px;
	left:40%;
}


button {
	position: relative;
	top: 8px;
	left: 40%;
	display: inline-block;
}
</style>
</head>
<body>
<!-- partial:index.partial.html -->
<div class="wrapper">
<nav>
  <ul>
    <li><a href="${root }mainpage">MainPage</a></li>
    <li><a href="${root }freshfood">FreshFood</a></li>
    <li><a href="${root }miniPro">Ministop-product</a></li>
  </ul>
</nav>
</div>
	<div id="btn_group">
		<button id="menu_btn1">전체</button>
		<button id="menu_btn2">도시락</button>
		<button id="menu_btn2">김밥/주먹밥</button>
		<button id="menu_btn2">햄버거/샌드위치</button>
		<button id="menu_btn3">간편식</button>
		<br/>
	</div>
	<div id ="btn_group">
	<input type="search" value="" placeholder="상품을 검색하세요" id="searchbox">
	<button type="submit" id="menu_btn2" >검색</button>
	</div>
		<div class="content-line content-line-list">
        <div id="owl-slider-2" class="slider-wrapper owl-carousel">
          <div class="item video-box-wrapper">
            <div class="img-preview">
              <img src="" >
            </div>
            <div class="video-description-wrapper">
              <p class="video-description-header">상품명</p>
              <p class="video-description-subheader">가격</p>
              <p class="video-description-info">재고 : 3개 </p>
            </div>
          </div>
          <div class="item video-box-wrapper">
            <div class="img-preview">
              <img src="" >
            </div>
            <div class="video-description-wrapper">
              <p class="video-description-header">상품명</p>
              <p class="video-description-subheader">가격</p>
              <p class="video-description-info">재고 : 3개 </p>
            </div>
          </div>
          <div class="item video-box-wrapper">
            <div class="img-preview">
              <img src="" >
            </div>
            <div class="video-description-wrapper">
              <p class="video-description-header">상품명</p>
              <p class="video-description-subheader">가격</p>
              <p class="video-description-info">재고 : 3개 </p>
            </div>
          </div>
          <div class="item video-box-wrapper">
            <div class="img-preview">
              <img src="">
            </div>
            <div class="video-description-wrapper">
              <p class="video-description-header">상품명</p>
              <p class="video-description-subheader">가격</p>
              <p class="video-description-info">재고 : 3개 </p>
            </div>
          </div>
          <div class="item video-box-wrapper">
            <div class="img-preview">
              <img src="">
            </div>
            <div class="video-description-wrapper">
              <p class="video-description-header">상품명</p>
              <p class="video-description-subheader">가격</p>
              <p class="video-description-info">재고 : 3개 </p>
            </div>
          </div>
          <div class="item video-box-wrapper">
            <div class="img-preview">
              <img src="">
            </div>
            <div class="video-description-wrapper">
              <p class="video-description-header">상품명</p>
              <p class="video-description-subheader">가격</p>
              <p class="video-description-info">재고 : 3개 </p>
            </div>
          </div>
         
        </div>
      </div>
      
          
          

</body>
</html>