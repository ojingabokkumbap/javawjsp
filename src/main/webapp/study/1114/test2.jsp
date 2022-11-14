<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>test2.jsp</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<!-- 로그인 창에서 아이디/비번/성명 입력하고 서버로 전송 후 , 관리자 인증이 되면 인증 성공창에서 입력된 아이디/성명을 모두 출력하시오.... -->
<body>
<p><br/></p>
<div class="container">
	<form name="myform" method="post" action="<%= request.getContextPath()%>/j1114_Test2">
																																					<!-- 패키지명_자바파일 -->
	<p>
		아이디 : <input type="text" name="mid" id="mid" autofocus required class="form-control"/>
	</p>																																				
	<p>
		비밀번호 : <input type="password" name="pwd" id="pwd" required class="form-control"/>
	</p>																																				
	<p>
		성명 : <input type="text" name="name" id="name" required class="form-control"/>
	</p>																																				
	<p>
		<input type="submit" value="전송" class="btn btn-primary"/>
	</p>
	</form>
<p><br/></p>
</body>
</html>