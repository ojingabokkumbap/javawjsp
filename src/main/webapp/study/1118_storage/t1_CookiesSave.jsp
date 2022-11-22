<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- cookiesSave -->
<%
	String mid = "kjg1234";
						/* "가져가는 쿠키의 변수명", "안에서 사용하는 값"*/
								/*쿠키에 있는 아이디 */
	Cookie cMid = new Cookie("cMid", mid);
	cMid.setMaxAge(60*60*24);
	/* setMaxAge : cookie의 만료시간 : 단위 '1초' , 1일(60*60*24) */
	
	String pwd = "1234";
	Cookie cPwd = new Cookie("cPwd", pwd);
	cMid.setMaxAge(60*60*24);
	
	String job = "학생";
	Cookie cJob = new Cookie("cJob", job);
	cMid.setMaxAge(60*60*24);
	
	// 쿠키를 클라이언트에 저장하기(즉, 사용자 컴퓨터에 저장된다.)
	response.addCookie(cMid);
	response.addCookie(cPwd);
	response.addCookie(cJob);
%>


<script>
	alert("쿠키에 저장 완료");
	location.href = "t1_CookiesMain.jsp";
</script>