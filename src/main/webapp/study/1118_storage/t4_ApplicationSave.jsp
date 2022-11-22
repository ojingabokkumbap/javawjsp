<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- t3_applicationSave 세션 저장하기.jsp -->
<%
	String mid = (request.getParameter("mid")==null || request.getParameter("mid")=="") ? "yooheez" : request.getParameter("mid");
	String nickName = (request.getParameter("nickName")==null || request.getParameter("nickName")=="") ? "홍장군" : request.getParameter("nickName");
	int age = (request.getParameter("age")==null || request.getParameter("age")=="")? 20 : Integer.parseInt(request.getParameter("age"));
	String name = (request.getParameter("name")==null || request.getParameter("name")=="") ? "홍길동" : request.getParameter("name");
		
	/* request저장 => setAttribute("sMid",mid)  */
	/* application : 브라우저의 시작과 끝 */
	/* application 지속시간 : 20분 (기본) */
	
	application.setAttribute("sMid", mid);
	application.setAttribute("sNickName", nickName);
	application.setAttribute("sAge", age);
	application.setAttribute("sName", name);
%>

<script>
  alert("${sMid}님 Application저장 완료");
  location.href = "t4_ApplicationMain.jsp";
</script>