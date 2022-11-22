<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- logincheck -->
<%
	String mid = (request.getParameter("mid")==null || request.getParameter("mid")=="") ? "yooheez" : request.getParameter("mid");
	String pwd = (request.getParameter("pwd")==null || request.getParameter("pwd")=="") ? "1234" : request.getParameter("pwd");
	String loginChk = request.getParameter("loginChk") == null? "": request.getParameter("mid");
	String mo = "";
	/* request저장 => setAttribute("sMid",mid)  */
	/* session : 브라우저의 시작과 끝 */
	/* session 지속시간 : 20분 (기본) */
	
	//session.setAttribute("sPwd", pwd);
	
	session.setAttribute("sMid", loginChk);
	Cookie cookie = new Cookie("mid", mid);
	
	
  if (loginChk != null) {
		session.setAttribute("KenenMid", mid);
    response.addCookie(cookie);
    }
  else {
    response.addCookie(cookie);
		session.setAttribute("KenenMid", loginChk);
}
	
%>

<script>
	location.href = "main.jsp"; // 쿠키 정보도 같이 넘어감
</script>