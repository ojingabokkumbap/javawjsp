<%@page import="study.database.JusorokVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="study.database.JusorokDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>jstl4.jsp</title>
  <jsp:include page="../../include/bs4.jsp"></jsp:include>
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>Function 라이브러리</h2>
  <p>사용법 : $ { fn:함수명(변수/값...)}</p>
  <hr/>
<%
						 //  0123456789012345678901234567
  String atom = "Welcome to My Homepage!";
	pageContext.setAttribute("atom", atom);
	pageContext.setAttribute("atom2", atom);
%>
<p>
	atom 변수의 값 : <%= atom %> / ${atom}<br/>
	1. atom변수 값의 길이 : <%=atom.length() %> / ${fn:length(atom)}<br/>
	2. 대문자 변환(toUpperCase()) : <%=atom.toUpperCase() %> / ${fn:toUpperCase(atom)}<br/>
	3. 소문자 변환(toLowerCase()) : <%=atom.toLowerCase() %> / ${fn:toLowerCase(atom)}<br/>
	4. 문자열추출1(substring()) : <%=atom.substring(0,3) %> / ${fn:substring(atom,0,3)}<br/>
  4-2.문자열추출2(substring()) : <%=atom.substring(2) %> / <%-- ${fn:substring(atom,2)} --%>
                                                           ${fn:substring(atom,2,fn:length(atom))}<br/>
  4-3.문자열추출3(substring()) : <%=atom.substring(2) %> / ${fn:substring(atom,2,-1)}<br/>
  5. 특정 문자 열의 위치값 찾기(indexOf()) : <%=atom.indexOf("o") %> / ${fn:indexOf(atom,'o')}	<br/>
  
  5-2. atom변수에 기억돼 있는 'o'문자의 위치를 모두 출력하고 전체 개수를 출력하시오<br/>
  <c:set var="cnt" value="0"/>
  <c:forEach var="i" begin="1" end="${fn:length(atom)}">
		<c:if test="${fn:substring(atom,i,i+1) == 'o'}">
			문자 'o'의 위치 : ${i} <br/>
	  <c:set var="cnt" value="${cnt + 1}"/>
		</c:if> 
  </c:forEach>
  <p>'o'의 전체 개수 ${cnt} 입니다<br/>
  <br/>
  5-3.atom변수에 기억되어 있는 문자를 입력받아 그 문자가 두번째로 기억되어 있는 위치값을 출력하시오.
        단, 두번째 기억값이 없으면 1번째 기억위치를 출력하고 '두번째 값 없음'을 함께 출력하시오.

   - (1) atom 변수에 기억된 문자중 'o'의 위치를 찾아서 변수에 기억시켜둔다. :
      <c:set var="position1" value="${fn:indexOf(atom,'o')}"/> <font color='red'><b>${position1}</b></font><br/>
      - (2) substring()을 사용한, 첫번째로 만나는 'o'의 문자 뒤의 모든값을 변수에 담는방법 :
      < c :set var="str" value="$ {fn:substring(atom,fn:indexOf(atom,'o')+1,fn:length(atom))}"/> =>
      <c:set var="str1" value="${fn:substring(atom,fn:indexOf(atom,'o')+1,fn:length(atom))}"/>
      <font color='red'><b>${str1}</b></font><br/>
      - (3) 이어서 저장되어 있는 값중에서 'o'문자의 위치를 변수에 담는다. : 
      < c :set var="position2" value="$ {fn:indexOf(str1,'o')}"/> =>
      <c:set var="position2" value="${fn:indexOf(str1,'o')}"/>
      <font color='red'><b>${position2}</b></font><br/>
      - (4) 처음에 저장된 위치와 2번째 저장된 위치를 더하고 +1 시키면 2번째 'o'의 위치가 된다. : 
      <font color='red'><b>${position1 + position2 + 1}</b></font><br/><br/>
        
  6.문자열추출(substringBefore() / substringAfter())<br/>
    문자 'o'앞의 문자열 출력 : ${fn:substringBefore(atom, 'o')}<br/>
    문자 'o'뒤의 문자열 출력 : ${fn:substringAfter(atom, 'o')}<br/><br/>
    
    
 6-2.(문제2)atom변수에 기억되어 있는 문자를 입력받아 그 문자가 두번째로 기억되어 있는 위치값을 출력하시오.
        단, 두번째 기억값이 없으면 1번째 기억위치를 출력하고 '두번째 값 없음'을 함께 출력하시오.<br/>
            
  <form name="myform">
      <div>
        <input type="text" name="msg"/> 
        <input type="submit" value="입 력" class="btn btn-warning" />
      </div>
      <c:set var="msg" value="${param.msg}" />
      <c:set var="ans" value="${fn:indexOf(atom,msg)}"/>
      <c:set var="af" value="${fn:substringAfter(atom,msg)}"/>
      <c:set var="ans2" value="${fn:indexOf(af,msg)}"/>
      <c:set var="bf" value="${fn:substringBefore(atom,msg)}"/>

      입력한 문자 : ${msg}<br/>
     <c:if test="${ans2 != -1}">두 번째 기억 값 : ${(ans+ans2)+2}</c:if>
     <c:if test="${ans2 == -1}">첫 번째 위치: ${fn:length(bf) + 1} (두 번째 값 없음)</c:if>
  </form>   
  
  
  													1				  2
  				   //  0123456789012345678901234567
  String atom = "Welcome to My Homepage!";
  
	7.문자열 분리(split(변수,분리할 문자)) -> 결과를 변수에 담아줘야 한다. <br/>
	예)atom변수의 문자 중 'o'문자를 기준으로 분리하자.<br/>
	<c:set var="atoms" value="${fn:split(atom,'o')}"/>
	<c:forEach var="atom" items="${atoms}" varStatus="st">
		${st.count}.${atom}<br/>
	</c:forEach>
	atoms의 전체 길이 : ${fn:length(atoms)}<br/>
	예) jusorok테이블의 전체 건수는?
<%
	JusorokDAO dao = new JusorokDAO();
	ArrayList<JusorokVO> vos = dao.getMemberList();
	request.setAttribute("vos", vos);
%>	
	${fn:length(vos)} 건<br/>
	
	8.문자열 치환(replace())<br/>
	예)'My'를 'your'로 변경하시오 :
	<%= atom.replace("My","Your") %> / ${fn:replace(atom2,'My','Your')}<br/>
	9.특정문자 포함유무? contains()<br/>
		  atom2변수에 'o'를 포함하고 있느냐? ${fn:contains(atom2, 'o')}<br/>
	    atom2변수에 'My'를 포함하고 있느냐? ${fn:contains(atom2, 'My')}<br/>
	    atom2변수에 'Your'를 포함하고 있느냐? ${fn:contains(atom2, 'Your')}<br/>
	atom2 
</p>
</div>
<p><br/></p>
</body>
</html>