<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>title</title>
		<jsp:include page="../../../include/bs4.jsp"></jsp:include>
</head>
<body>
<p><br/></p>
<div class="container">
  <form name="myform" method="post" action="loginOk.jsp">
    <table class="table table-bordered text-center">
      <tr>
        <td colspan="2"><font size="5">로 그 인</font></td>
      </tr>
      <tr>
        <th class="bg-primary text-white">아이디</th>
        <td><input type="text" name="mid" value="${sMid}" autofocus class="form-control"/></td>
      </tr>
      <tr>
      </tr>
      <tr>
        <th class="bg-primary text-white">비밀번호</th>
        <td><input type="password" name="pwd" value="" class="form-control"/></td>
      </tr>
      <tr>
        <td colspan="3">
          <input type="submit" value="로그인" class="btn btn-success"/> &nbsp; &nbsp;
          <input type="reset" value="다시입력" class="btn btn-warning"/>
 		     	<input type="checkbox" name="loginChk" value="true" checked >로그인 상태 유지
        </td>
       </tr>
    </table>
  </form>
</div>
<p><br/></p>
</body>
</html>