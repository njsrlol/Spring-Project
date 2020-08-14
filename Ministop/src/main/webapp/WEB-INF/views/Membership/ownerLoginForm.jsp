<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="home" value="/" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/Membership/css/style.css">

<center>
	<div class="testbox">
		<h1>점주 로그인</h1>

		<form action="${home }/ownerMainForm" id="loginFrm" name="loginFrm"
			method="post">
			<input type="hidden" name="curPage" value="login" /> <label id="icon"
				for="name"><i class="icon-user"></i></label> <input type="text"
				name="loginId" id="loginId" placeholder="아이디" required /><br /> <label
				id="icon" for="name"><i class="icon-shield"></i></label> <input
				type="password" name="loginPass" id="loginPass" placeholder="패스워드"
				required /><br /> <br /> <input type="submit" id="login"
				value="로그인" /><br /> <br /> <br />
		</form>

		<br />

	</div>
</center>