<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--  지시자 (directive) -->
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>test2.jsp</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</head>
<body>
<p><br/></p>

<div class="container">
<!--  HTML즈석 -->
<%-- 이 고슨 jsp주서깁니다 --%>
	<h2>이 곳은 1111폴더의 test1.jsp입니다.</h2>
	<% 
	//스크립틀릿(자바코드를 작성하는 공간)
	// 이 곳은 자바 한 줄 주석입니다.
		/*
		이 곳은 자바 여러 줄 주석입니다.
		*/
		System.out.println("이 곳은 jsp파일입니다");
	
		out.println("<font color = 'skyblue'> 이 곳은 jsp의 outmethod </font> 입니다.");
	%>
	<hr/>
	<%= "요크셔테리어 <b>표현식 내부</b>입니다." %>
<p><br/></p>
</body>
</html>