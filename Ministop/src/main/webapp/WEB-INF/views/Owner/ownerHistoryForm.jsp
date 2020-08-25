<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>




<link rel="stylesheet"
	href="${pageContext.request.contextPath}/Owner/css/style.css">


<nav>
	<ul>
		<li><a href="${root }ownerMainForm">주문확인</a></li>
		<li><a href="${root }ownerHistory">판매내역</a></li>
	</ul>
</nav>
<br />
<br />

<div align="center">
	<h1>판매 내역</h1>
	<%
		for (int i = 10; i > 0; i--) {
	%>
	<div id="orderDiv">8월 <%=i %>일 판매내역<button formaction="#">내역보기</button>
	</div>
	<br />
	<%
		}
	%>
</div>