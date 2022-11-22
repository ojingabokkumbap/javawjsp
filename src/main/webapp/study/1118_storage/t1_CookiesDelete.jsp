<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- t1_CookiesDelete.jsp -->
<%
	/* 쿠키 확인하기 */
	Cookie[] cookies = request.getCookies();
		//NullpointException 방지를 위해 유효성 검사
		if(cookies !=null){
			for(int i=0; i<cookies.length; i++){
				cookies[i].setMaxAge(0); //쿠키의 만료시간을 0으로 설정해 쿠키를 제거
				response.addCookie(cookies[i]);
				break;
			}
		}

%>
<script>
	alert("쿠키 삭제 완료");
	location.href = "t1_CookiesMain.jsp";
</script>