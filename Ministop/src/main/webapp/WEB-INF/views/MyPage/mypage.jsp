<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="home" value="/" />
<c:set var="root" value="${pageContext.request.contextPath }/"/>
<head>
<style type="text/css">
.mpWrapper{
	display: flex;
	justify-content: space-around;
	}

.memberInfo{
	display: grid;
	grid-template-rows : 1fr 1fr 1fr 1fr;
	grid-template-columns : 1fr;	
}
</style>
<script>
	function makeQR(url){
		window.name = "QRCODE";
		window.open(url, "_blank", "toolbar=yes, scrollbars=yes, resizable=yes, top=500, left=500, width=400, height=400");
	}
	
</script>
</head>
<body>

<div class="mypage mpHeader">My Page</div>

<div class="mypage mpWrapper">

<div class="mypage memberInfo">
<div>OOO님 안녕하세요<br/>나의 매장 OO점</div>

<a href="${root }mypage/getminiRefri">미니냉장고</a>

<div>
포인트 : <input type="text" readonly="readonly"/><br/>
상품권 : <input type="text" readonly="readonly"/><br/>
쿠폰 : <input type="text" readonly="readonly"/><input type="button" value="등록하기"/>
</div>

<input type="button" value="회원정보 수정"/>

</div>

<div class="mypage orderInfo">
<table class="mypage orderInfo orderList">
	<tr>
		<td>주문내역</td>
		<td>바코드생성</td>
	</tr>
	<tr>
		<td>123</td>
		<td><input type="button" value="QR" onclick="makeQR('${root}mypage/creatQR');"/></td>
	</tr>
</table>
</div>

</div>

</body>