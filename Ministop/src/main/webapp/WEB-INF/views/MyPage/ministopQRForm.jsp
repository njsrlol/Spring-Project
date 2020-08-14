<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="root" value="${pageContext.request.contextPath }/"/>
<head>

<script type="text/javascript">
$(document).ready(function(){
       // $("#execute").click(function(){
               url = "/main/createCode.do";
               var content = $("#content").val();
              
               $("#img").attr("src", url+"?content="+content);
              
     //   });
});
</script>
</head>
<body>
<h1>QR Code</h1>
<div>
<input type="hidden" id="content" name="content" value="1234"/>
        <img id="img" style="display:none" onload="this.style.display='block'"/>
       <label>주문정보</label><br/>
       <label>사용가능시간</label>
</div>
</body>