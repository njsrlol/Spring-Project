<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="root" value="${pageContext.request.contextPath }/"/>
<head>

</head>
<body>
<h2>미니 냉장고</h2>
<c:forEach var="refriProductLst" items="${refriProductLst }" varStatus="loop">
<img src="${root }images/mslogo.png" height="100px">
<label>${refriProductLst.productname }</label>
</c:forEach>
<br/>
<hr/>	
<a href="${root }mypage">돌아가기</a>
</body>
