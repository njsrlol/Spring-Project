<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:url var="home" value="/"/>
<c:set var="oTprice" value="0"/>
<head>
<style>
</style>
<script>
function backtocart(){
	document.location.href="/main/order/tocart";
	

}
</script>
</head>
<body>
<form id="orderFrm" action="${home}order/makeorder" method="post">
<input type="hidden" name="id" value="${loginId}"/>
<div class="order oWarrper">
<div class="order orderDetail">
<label>날짜 선택</label><br/>

<input type="date" name="receivedate"/><br/>

<label>시간 입력</label>

<input type="text" name="receivetime" placeholder="00:00"/>

<label>할인옵션 선택</label><br/>
<label>포인트</label><br/>
<input type="text" readonly="true"/>
<label>보유 포인트 : 0</label><br/>
<label>상품권</label><br/>
<select></select><br/>
<label>쿠폰</label><br/>
<select></select><br/>

<label>결제수단</label><br/>

<div class="paymentRadio">

       <c:set var="card" value=""/>
		<c:set var="account" value=""/>
		<c:set var="phone" value=""/>
		<c:choose>
			<c:when test="${order.paymentinfo eq '1' }">
				<c:set var="card" value="checked"/>
				<c:set var="account" value=""/>
				<c:set var="phone" value=""/>
			</c:when>
			<c:when test="${order.paymentinfo eq '2' }">
				<c:set var="card" value=""/>
				<c:set var="account" value="checked"/>
				<c:set var="phone" value=""/>
			</c:when>
			<c:when test="${order.paymentinfo eq '3' }">
				<c:set var="card" value=""/>
				<c:set var="account" value=""/>
				<c:set var="phone" value="checked"/>
			</c:when>
		</c:choose>
  <input type="radio" name="paymentinfo" value="1" ${card}>카드
  <input type="radio" name="paymentinfo" value="2" ${account}>실시간 계좌이체
  <input type="radio" name="paymentinfo" value="3" ${phone}>휴대폰 결제
 
</div>
<c:forEach var="productLst" items="${productLst }" varStatus="loop">
<fmt:parseNumber value="${productLst.productprice}" type="number" var="oPprice" />
<c:set var="oTprice" value="${oTprice + oPprice}"/>
<input type="text" name="orderproducts" value="${productLst.productname }"/>
</c:forEach><br/>
<input type="text" name="ordersales" value="${oTprice}"/>
</div>
<input type="button" value="취소" onclick="backtocart();"/>
<input type="submit" value="결제"/>
</div>
</form>
</body>
