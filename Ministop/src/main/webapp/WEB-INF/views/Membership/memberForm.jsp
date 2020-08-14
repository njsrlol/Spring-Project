<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="home" value="/" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/Membership/css/style.css">

<center>
	<h3>
		<font color="red">${msg }</font>
	</h3>

	<!-- 인증번호 확인 추후 삭제 -->
	세션정보 : ${sessionInfo }<br /> 인증번호 : ${sessionInfo.authNum }
	<h1>회원가입</h1>
	<div id="memberDiv">
		<form action="${home }membership/memberProc" method="post">
			<table>
				<tr>
					<td align="left"><h4>
							아이디<span style="color: steelBlue; font-weight: bold">(필수)</span>
						</h4></td>
				</tr>
				<tr>
					<td><input type="text" name="id" value="${memberq.id }" /></td>
					<td><button formaction="${home }membership/isExistID">중복
							확인</button></td>
				</tr>


				<tr>
					<td align="left"><h4>
							비밀번호<span style="color: steelBlue; font-weight: bold">(필수)</span>
						</h4></td>
				</tr>
				<tr>
					<td><input type="password" name="pw" value="${memberq.pw }" /></td>
				</tr>



				<tr>
					<td align="left"><h4>
							비밀번호 확인<span style="color: steelBlue; font-weight: bold">(필수)</span>
						</h4></td>
				</tr>
				<tr>
					<td><input type="password" name="pwok" /></td>
				</tr>



				<tr>
					<td align="left"><h4>
							닉네임<span style="color: steelBlue; font-weight: bold">(필수)</span>
						</h4></td>
				</tr>
				<tr>
					<td><input type="text" name="name" value="${memberq.name }"/></td>
				</tr>


				<tr>
					<td align="left"><h4>
							이메일<span style="color: steelBlue; font-weight: bold">(필수)</span>
						</h4></td>
				</tr>
				<tr>
					<td><input type="email" name="email" value="${memberq.email }"
						placeholder="이메일을 입력하세요" /> <button
						formaction="${home }membership/reqAuthNum">인증번호 전송</button></td>
				</tr>
				<tr>
					<td><input type="text" name="authNum"
						placeholder="인증번호를 입력하세요" /> <button
						formaction="${home }membership/authNumConfirm">인증번호 확인</button></td>
				</tr>

			</table>
			<input type="submit" value="회원가입" id="registerBtn" /> <input
				type="reset" value="취소" id="resetBtn" />
		</form>
	</div>
</center>
