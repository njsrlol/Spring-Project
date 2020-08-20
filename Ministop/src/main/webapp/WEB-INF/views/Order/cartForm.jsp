<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="root" value="${pageContext.request.contextPath }/"/>
<c:url var="home" value="/"/>
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
	function startOrder(){
		document.location.href="/main/order/startorder";
	}
	
	function removeCart(){
		document.location.href="removecart";
	}
	
	function emptyCart(){
		alert("장바구니가 비어있습니다.");
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
<c:set var="startOrderURL" value="emptyCart"/>
<c:if test="${cartLst != null}">
<c:set var="startOrderURL" value="startOrder"/>
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
<input type="button" value="주문하기" onclick="${startOrderURL}();"/>	
</div>
<br/>
<hr/>	
<a href="${home}order/carttoback">돌아가기</a>

</body>
