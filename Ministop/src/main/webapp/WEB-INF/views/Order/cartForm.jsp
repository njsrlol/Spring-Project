<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="root" value="${pageContext.request.contextPath }/"/>
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
<div class="cartWrapper">
<ol>
<li class="cartItem">
<input type="checkbox"/>
<img src="${root }images/mslogo.png" height="100px"/>
0,000	|	옵션	|	설명	
</li>
<li>
<input type="checkbox"/>
<img src="${root }images/mslogo.png" height="100px"/>
0,000	|	옵션	|	설명	
</li>
</ol>

<label>전체가격</label><br/>
<input type="checkbox"/>전체선택
<input type="button" value="삭제" onclick="removeCart();"/><br/>
<input type="button" value="주문하기" onclick="goOrder();"/>	
</div>

</body>
