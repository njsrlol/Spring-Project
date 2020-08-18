<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url var="home" value="/"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">

	function setMyStore(storeNum, branchName){
		
		window.close()
	}

</script>
<style type="text/css">
.list_over {overflow:auto; background-color:pink; }
.list_out { background-color:#FFFFFF; }
</style>
</head>
<body>
<form action="${home }store/searchStore" method='post'>
	<h3>
		<input type='text' name='publicdong'/>
		<input type='submit' value='검색'/>
	</h3>
</form>
<br/>
<c:forEach var="store" items="${storeLst }">
<c:set var="storeNum" value="${store.storenum }"/>
<c:set var="branchName" value="${store.branchname} | "/>
<c:set var="address" value="${store.newaddress} ${store.newpostalcode}"/>
<div onmouseover="this.className='list_over'"
onmouseout="this.className='list_out'"
onclick="setMyStore('${storeNum}', '${branchName}');">
${branchName} ${address }<br/>
</div>
</c:forEach>
</body>
</html>