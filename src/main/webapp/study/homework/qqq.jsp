<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <style>
    .container legend{
        padding-left : 290px ;
        font-size : 50px;
    }
    .container fieldset{
      font-size: 1.1em;
      margin : 0 auto;
      padding: 50px;
      margin-top: 100px;
      border-radius: 5px;
      border: 1px solid #000;
      background-color:#FFFFFF;
      text-align:left;
      width: 900px;
    } 
    .container fieldset div{
      margin: 0 auto;
      width: 500px;
      line-height: 50px;
    }
    
    .container fieldset input[type="text"],
    .container fieldset input[type="email"],
    .container fieldset input[type="password"]{
      float: right; 
      width: 300px;
    } 
    .container fieldset input[type="button"]{
        width: 500px;
    }
    </style>
      <script>
    $(function(){
      $('.form-inline input[type="button"]').click(function(){
        let regId = /[^a-zA-Z0-9_]/g;   //아이디는 영문소문자,대문자,숫자,밑줄만 사용가능
        let regPwd = /\w[!@#$%^&*()~`]/g;  //비밀번호는 영문대,소문자,숫자,특수문자 사용가능
        let regName = /[^가-힣a-zA-Z]{2,20}/g;  //성명은 한글/영문만 가능하도록 길이는 2~20자까지
        let regEmail = /[a-z0-9]+@[a-z]+\.[a-z]+/gi; //이메일 형식에 맞도록 체크(a@b.c)
        let id = $("#id").val();
        let pwd = $("#pwd").val();
        let name = $("#name").val();
        let gender = $("#gender").val();
        let email = $("#email").val();
        if(id == "" || pwd == "" || name == "" || gender == "" || email == ""){
          alert("입력하지 않은 곳이 있습니다.");
          return 0;
        }
        if(regId.test(id)){
          alert("아이디 형식이 틀렸습니다.");
          document.getElementById("id").select();
          return false;
        }
        else if(!regPwd.test(pwd)){
          alert("비밀번호는 영문자,숫자,특수문자를 입력하세요.");
          document.getElementById("pwd").select();
          return false;
        }
        else if(regName.test(name)){
          alert("성명 형식이 틀렸습니다.");
          document.getElementById("name").select();
          return false;
        }
        else if(!regEmail.test(email)){
          alert("이메일 형식이 틀렸습니다.");
          document.getElementById("mail").select();
          return false;
        }
        else {
          alert("가입이 완료되었습니다.");
          myform.submit();
        }
      });
    });
  </script>
</head>
<body>
    <p><br/></p>
    <div class="container">
        <fieldset>
      <legend>회원가입</legend>
      <form name="myform" class="form-inline" method="post" action="2022-11-13hwOk.jsp">
        <div>
          아이디:<input type="text" name="id" id="id" placeholder="아이디 입력" class="form-control mt-1 mb-2">
        </div>
        <div>
          비밀번호:<input type="password" name="pwd" id="pwd" placeholder="비밀번호 입력" class="form-control mt-1 mb-2">
        </div>
        <div>
          성명:<input type="text" name="name" id="name" placeholder="성명 입력" class="form-control mt-1 mb-2">
        </div>
        <div>
          성별: &nbsp;
          <input type="radio" name="gender" id="gender" value="남자" class="mt-1 " checked style="margin-left: 150px;"> 남자 &nbsp;
          <input type="radio" name="gender" id="gender" value="여자" class="mt-1 "> 여자
        </div>
        <div>
          이메일: <input type="email" class="form-control mt-1 " id="email" name="email" placeholder="이메일 입력" >
        </div>
        <div>
          <input type="button" value="회원가입" class="btn btn-primary mt-5">
        </div>
      </form>
    </fieldset>
   </div>
</body>
</html>
