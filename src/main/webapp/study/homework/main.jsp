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
  	background-color: lightgreen;
  	text-align : center;
  	height: 80px;
  }
  
  #header a{
  	text-decoration: none;
  	color: black;
  	font-size : 1.136em;
  }
  
  #footer {
  	background-color: #ccc;
  	text-align : center;
  	height: 75px;
  	position :fixed;
  	bottom : 0px; 
  	width: 100%;
  	font-color: darkgray;
  }
  
  #content{
  	background-color: #fff;
  	text-align : center;
  }
  </style>
</head>
<body>
<div>
	<!-- 헤더영역('메뉴/로고' 를 표시한다. -->
  <div id="header">
  	<br/>
  	<%@ include file="menu.jsp" %>
  </div>
  <!-- 본문영역 -->
  <div id="content">
  <br/>
 <%  if(sw.equals("input")){	 %>
  	<%@ include file="input.jsp" %>
  	<!-- < % @ : directive(지시자) -->
 <%} else if(sw.equals("proview")){	 %>
  	<%@ include file="proview.jsp" %>
		<!-- include jsp action tag -->
 
 <%} else { %>
	  <h2>홈</h2>
	  <hr/>
	  
	  <p><img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxODA1MDdfMjUy%2FMDAxNTI1Njk5MzAyNzA4.p-vlr3AYM36B-w7yp9cDBK3Zsr1Es8DXKWLEjawkGbYg.LniEUW_yjXFzPOdr0MPIFcl43H908unChK_0n5zwDoog.PNG.sm4473%2F%25B8%25B6%25BD%25AC%25B8%25BB%25B7%25CE%25BF%25EC.png&type=a340" width="300px"/></p>
<%  } %>
  	<br/>
  </div>
  <!-- 푸터영역(Copyright나 주소, 소속, 작성자 등을 기술한다.  -->
</div>
  <div id="footer">
    <%@ include file="footer.jsp" %>
  </div>
</body>
</html>