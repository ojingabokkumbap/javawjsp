<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String sw = request.getParameter("sw") ==null? "" : request.getParameter("sw");
/* sw에 null값이면 공백넣고 스위치켜기*/
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>main.jsp</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <style>
  body{
  	margin: 0px auto;	/* 가운데 정렬 */
  	padding: 0px; 
  	width : 100%;
  }
  
  #header {
  	background-color: lightyellow;
  	text-align : center;
  	height: 80px;
  }
  
  #footer {
  	background-color: #ccc;
  	text-align : center;
  	height: 75px;
  }
  
  #content{
  	background-color: #fff;
  	text-align : center;
  }
  </style>
</head>
<body>
<div class="container">
	<!-- 헤더영역('메뉴/로고' 를 표시한다. -->
  <div id="header">
  	<br/>
  	<%@ include file="menu.jsp" %>
  </div>
  <!-- 본문영역 -->
  <div id="content">
  <br/>
 <%  if(sw.equals("guest")){	 %>
  	<%@ include file="guest.jsp" %>
  	<!-- < % @ : directive(지시자) -->
 <%} else if(sw.equals("board")){	 %>
  	<%@ include file="board.jsp" %>
 <%} else if(sw.equals("pds")){	 %>
  	<%@ include file="pds.jsp" %>
 <%} else if(sw.equals("photo")){	 %>
<%--   	<%@ include file="photo.jsp" %> --%>
		<jsp:include page="photo.jsp"></jsp:include>
		<!-- include jsp action tag -->
 
 <%} else { %>
	  <h2>이 곳은 주화면 입니다</h2>
	  <hr/>
	  
	  <p><img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDA3MjVfNTgg%2FMDAxNTk1Njg3NTUyODQy.pa6u0LgLk4c3V_YpSiCyrRwdUvQmPlRnF4CePoyREckg.CwUlREX5hmSxHS4DxkWt2KZCRqLhsiO0D9aVB-B4rrQg.JPEG.rilri0215%2Foutput_841170308.jpg&type=a340" width="600px"/></p>
<%  } %>
  	<br/>
  <div id="footer">
    <%@ include file="footer.jsp" %>
  </div>
  </div>
  <!-- 푸터영역(Copyright나 주소, 소속, 작성자 등을 기술한다.  -->
</div>
</body>
</html>