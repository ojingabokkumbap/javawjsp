<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- input.jsp -->
  <script>
    'use strict';
    let addTbl;

    function insRow() {
      addTbl = document.getElementById("addTable");
      let addRow = addTbl.insertRow();   // addTbl테이블의 행의 개념으로 한개를 추가....의 의미
      addRow.onmouseover = function() {   // clickedRowIndex : 클릭한 Row의 위치를 반환(확인)
        addTbl.clickedRowIndex = this.rowIndex;
      }
      let addCell = addRow.insertCell();  // 앞에서 클릭된 행의 위치를 얻어와서, 현재 테이블 해당행의 열(셀)로 삽입한다.

      // 앞에서 삽입시켜놓은 셀에 추가될 테이블의 내용을 기록해 준다.
      let formTag = "";
      formTag += ' 상품명 <input type="text" name="product" style="width:60px; height:20px; "/>';
      formTag += ' 가격 <input type="text" name="price" style="width:60px; height:20px; " onblur="formCalc();">';
      formTag += ' 수량 <input type="text" name="su"style="width:60px; height:20px;"/>';
      formTag += '<input type="button" value="삭제" onclick="removeRow()" class="ml-3 btn btn-warning btn-sm"/>';
      addCell.innerHTML = formTag;
    }
    
    // 추가된 행(table)을 삭제
    function removeRow() {
      addTable.deleteRow(addTbl.clickedRowIndex);
    }
    
	function fCheck() {
		let proname = document.getElementById("product").value;
		
		if(proname == ""){
			alert("첫번째 상품을 등록하세요")
			document.getElementById("product").focus();
		}
		else{
			myform.submit();
		}
	}
   </script>
   <style>
    #addTable {
        margin : 0 auto;
    }
    
    #addTable td {
      margin : 0 auto;
        text-align:right;
    }
    
    h2{
        text-align:center;
    }
    
    input[type="text"]{
        text-align:right;
    }
	</style>
<div class="container text-center" >
	<h2>상품등록</h2>
	<form name="myform" method="post" action="<%=request.getContextPath() %>/j1116h_InPut">
	<div>
	<br/>
	<table>
      <tr>
        <td>
        <br/>
          <table id="addTable" width="400px">
            <tr>
              <td>
                상품명 <input type="text" name="product" id="product" style="width:60px; height:20px; "/>
                가격 <input type="text" name="price" style="width:60px; height:20px; " onblur="formCalc();"/>
                수량 <input type="text" name="su"style="width:60px; height:20px;"/>
              </td>
            </tr>
          </table>
        </td>
      </tr>
    </table>
    <br/>
    <table width="400px">
      <tr>
        <td style="width:100px;">
          <input type="button" value="상품추가하기" onclick="insRow()" class="btn btn-success"/>
          <input type="button" value="상품등록하기" onclick="fCheck()" class="btn btn-primary"/>
        </td>
    </table>
		</div>
	</form>
</div>
<p><br/></p>
</body>
</html>