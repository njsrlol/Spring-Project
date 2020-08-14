<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="home" value="/" />

<head>
<style>

</style>

</head>
<body>

<div class="order oWarrper">

<div class="order orderDetail">
<label>날짜 선택</label><br/>
<input type="date"/><br/>

<label>시간 선택</label>
<div class="timeRadio">
  <input type="radio" name="pickupTime" id="pickupTime_Option1" value="Option1">
  <label for="pickupTime_Option1">시간 1</label>
 <input type="radio" name="pickupTime" id="pickupTime_Option2" value="Option2">
  <label for="pickupTime_Option2">시간 2</label>
</div>

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
  <input type="radio" name="paymentType" id="paymentType_Card" value="Card">
  <label for="paymentType_Card">카드</label>
 <input type="radio" name="paymentType" id="paymentType_Transfer" value="Transfer">
  <label for="paymentType_Transfer">실시간 계좌이체</label>
   <input type="radio" name="paymentType" id="paymentType_Phone" value="Phone">
  <label for="paymentType_Phone">휴대폰 결제</label>
</div>



</div>

<input type="button" value="취소"/>
<input type="button" value="결제"/>

</div>

</body>
