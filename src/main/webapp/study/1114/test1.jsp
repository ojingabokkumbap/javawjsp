<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>title</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<p><br/></p>
<div class="container">
	안녕하세요..<br/>
	<%
		String name="홍길동";
	
		out.println("name : " + name);
		out.println("nam2 : " + name);
	%>
<p><br/></p>
</body>
</html>