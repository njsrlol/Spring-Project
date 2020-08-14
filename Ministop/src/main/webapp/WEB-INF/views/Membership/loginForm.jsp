<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="home" value="/" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/Membership/css/style.css">

<h1>id : ${msg }</h1>
<center>
<h1>로그인</h1>
<form action="${home }membership/loginProc" method="post">
<table>
	<tr>
		<td>아이디</td>
		<td><input type=text name='id' placeholder='ID 입력'/></td>
	</tr>
	<tr>
		<td>패스워드</td>
		<td><input type=password name='pw' placeholder='PW 입력'/></td>
	</tr>
	<tr>
		<td colspan=2 align='center'>
			<input type=submit value='로그인' style="width: 86px; "/>
			<input type=reset value='취소' style="width: 86px; "/> 
		</td>
	</tr>
	<tr>
		<td><a href="${home }membership/searchID">아이디 찾기</a></td>
		<td align="right"><a href="${home }membership/searchPW">패스워드 변경</a></td>
	</tr>
</table>
</form>
</center>
