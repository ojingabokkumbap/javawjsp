<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>title</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<p><br/></p>
<div class="container">
	<form name="myform">
	<div>
	구매자 :<input type="text" name="buyer" id="buyer"/>
	</div>
	<div>
	상품분류 : 
    <input type="checkbox" name="product" value="product1"> 상품1
    <input type="checkbox" name="product" value="product2"> 상품2
    <input type="checkbox" name="product" value="product3"> 상품3
    <input type="checkbox" name="product" value="product4"> 상품4
    <input type="checkbox" name="product" value="product5"> 상품5
	</div>
	  <table id="addTable" width="400px">
    <tr>
    <td>
      상품명 :<input type="text" name="proname" style="width:60px; height:20px; "/>
      가격:<input type="text" name="price" style="width:60px; height:20px;"/>
      수량:<input type="text" name="su" readonly style="width:60px; height:20px;"/>  
    </td>
  </tr>
</table>
	</form>
</div>
<p><br/></p>
</body>
</html>