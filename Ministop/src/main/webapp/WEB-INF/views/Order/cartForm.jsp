<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="root" value="${pageContext.request.contextPath }/"/>
<c:set var="cTprice" value="0"/>
<head>
<style>
	.cartWrapper{
	
	}
	.cartItem{
		position:relative;
		margin:0 auto;
	}
</style>
<script>
	function goOrder(){
		document.location.href="order"
	}
	
	function removeCart(){
		document.location.href="removecart";
	}
</script>
</head>
<body>
${emptyInfo }
<c:forEach var="cartLst" items="${cartLst }" varStatus="loop">
${cartLst }
</c:forEach>
<br/>
<div class="cartWrapper">
<c:if test="${cartLst != null}">
<c:forEach var="productLst" items="${productLst }" varStatus="loop">
<fmt:parseNumber value="${productLst.productprice}" type="number" var="cPprice" />
<c:set var="cTprice" value="${cTprice + cPprice}"/>
<ol>
<li class="cartItem">
<input type="checkbox"/>
<img src="${root }images/mslogo.png" height="100px"/>
${productLst.productname }	 | ${productLst.productprice }
</li>
</ol>
</c:forEach>
</c:if>
<label>전체가격 : ${cTprice }</label><br/>
<input type="checkbox"/>전체선택
<input type="button" value="삭제" onclick="removeCart();"/><br/>
<input type="button" value="주문하기" onclick="goOrder();"/>	
</div>
<br/>
<hr/>	
<a href="${root }mypage">돌아가기</a>

</body>
