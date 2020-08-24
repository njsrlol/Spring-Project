<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="root" value="${pageContext.request.contextPath }/"/>
<head>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
     
               url = "/main/createCode.do";
               var content = $("#content").val();
              
               $("#img").attr("src", url+"?content="+content);
              
               let time=180;
               let min= "";
               let sec="";
               
               let x = setInterval(function(){
				min=parseInt(time/60);
				sec=time%60;
				
				document.getElementById("qrTimer").innerHTML=min+"분"+sec+"초";
				time--;
				
				if(time<0){
					clearInterval(x);
					window.close();
				}
				
			}, 1000);
   
});
</script>
</head>
<body>
<h1>QR Code</h1>
<div>
<input type="hidden" id="content" name="content" value="${qrInfo}"/>
        <img id="img" style="display:none" onload="this.style.display='block'"/>
       <label>주문정보</label><br/>
		${orderInfo }<br/>
       <label>사용가능시간</label>
       <div id="qrTimer"></div>남았습니다.
</div>
</body>