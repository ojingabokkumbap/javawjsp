<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>title</title>
		<jsp:include page="../../include/bs4.jsp"></jsp:include>
</head>
<body>
<p><br/></p>
<div class="container">
<h2>쿠키 확인</h2>
<hr/>
<!-- 쿠키 확인하는 명령어 -->
<%
	Cookie[] cookies = request.getCookies();

	out.println("<table class='table table-hover text-center'>");
	out.println("<tr class='table table-dark table-striped'><th>번호</th><th>저장된 쿠키 이름</th><th>저장된 쿠키의 값</th></tr>");
	for(int i=0; i<cookies.length; i++){
		out.println("<tr>");
		String strName = cookies[i].getName(); // 저장 시켜놓은 쿠키 이름(변수명) 가져오기
		String strValue = cookies[i].getValue(); //저장 시켜놓은 쿠키의 값 가져오기
		out.println("<td>"+(i+1)+"</td>");
		out.println("<td>"+strName+"</td>");
		out.println("<td>"+strValue+"</td>");
		out.println("</tr>");
	}
	out.println("</table>");
%>
<div>
	<a href="t1_CookiesMain.jsp" class="btn btn-secondary form-control">돌아가기</a>
</div>	
</div>
<p><br/></p>
</body>
</html>