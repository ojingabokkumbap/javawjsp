<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- t3_SessionSave 세션 저장하기.jsp -->
<%
	String mid = (request.getParameter("mid")==null || request.getParameter("mid")=="") ? "yooheez" : request.getParameter("mid");
	String nickName = (request.getParameter("nickName")==null || request.getParameter("nickName")=="") ? "홍장군" : request.getParameter("nickName");
	int age = (request.getParameter("age")==null || request.getParameter("age")=="")? 20 : Integer.parseInt(request.getParameter("age"));
	String name = (request.getParameter("name")==null || request.getParameter("name")=="") ? "홍길동" : request.getParameter("name");
		
	/* request저장 => setAttribute("sMid",mid)  */
	/* session : 브라우저의 시작과 끝 */
	/* session 지속시간 : 20분 (기본) */
	
	session.setAttribute("sMid", mid);
	session.setAttribute("sNickName", nickName);
	session.setAttribute("sAge", age);
	session.setAttribute("sName", name);
%>

<script>
  alert("${sMid}님 세션저장 완료");
  location.href = "t3_SessionMain.jsp";
</script>