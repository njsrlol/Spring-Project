<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<c:set var="root" value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>productdetail</title>

  <link rel="stylesheet" href="${pageContext.request.contextPath}/Products/css/detailstyle.css">
<script>
	function addCart(){
		let productNum = document.getElementById("productNum").value; 
		alert(productNum);
		document.location.href="/main/order/addtocart/"+productNum;
	}
</script>
</head>
<body>

<div class="card">
  <nav>
    <svg class="arrow" version="1.1" viewBox="0 0 512 512" width="512px" xml:space="preserve"
     xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
     <polygon points="352,115.4 331.3,96 160,256 331.3,416 352,396.7 201.5,256 " stroke="#727272"/>
     </svg>
    	이전페이지
    <svg class="heart" version="1.1" viewBox="0 0 512 512" width="512px" xml:space="preserve" s
    troke="#727272" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
    <path d="M340.8,98.4c50.7,0,91.9,41.3,91.9,92.3c0,26.2-10.9,49.8-28.3,66.6L256,407.1L105,254.6c-15.8-16.6-25.6-39.1-25.6-63.9  c0-51,41.1-92.3,91.9-92.3c38.2,0,70.9,23.4,84.8,56.8C269.8,121.9,302.6,98.4,340.8,98.4 M340.8,83C307,83,276,98.8,256,124.8  c-20-26-51-41.8-84.8-41.8C112.1,83,64,131.3,64,190.7c0,27.9,10.6,54.4,29.9,74.6L245.1,418l10.9,11l10.9-11l148.3-149.8  
    c21-20.3,32.8-47.9,32.8-77.5C448,131.3,399.9,83,340.8,83L340.8,83z" stroke="#727272"/></svg>
  </nav>
  <div class="photo">
    <img src="">
  </div>
  <div class="description">
    <input type="hidden" id="productNum" value="pd100001"/>
    <h2>제품분류</h2>
    <h4>제품명</h4>
    <h1>가격</h1>
    <p>제품설명입니다.</p>
    
    <button onclick="addCart()">장바구니</button>
    <button>구매하기</button>
    <button>선물하기</button>
  </div>
</div>
   <script src="${pageContext.request.contextPath }/Products/css/script.js"></script>
</body>
</html>