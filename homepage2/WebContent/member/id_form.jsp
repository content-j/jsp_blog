<%@ page contentType="text/html; charset=UTF-8" %> 
<% request.setCharacterEncoding("utf-8"); 
  String root=request.getContextPath();%>
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title>아이디 중복 확인</title> 
<style type="text/css"> 
*{ 
  font-family: gulim; 
  font-size: 20px; 
} 
</style> 
<script type="text/javascript">
function check(id){
	if(id.id.value==""){
		alert("아이디를 입력하세요");
		id.id.focus();
		return false;
	}
	
}
</script>
<link href="<%=root%>/css/style.css" rel="Stylesheet" type="text/css">
</head> 
<!-- *********************************************** -->
<body>
<!-- *********************************************** -->
 
<DIV class="title" style="width:300px">아이디 중복 확인</DIV>
 
<FORM name='frm' method='POST' action='./id_proc.jsp' onsubmit="return check(this)">
<div class="content">ID를 입력해주세요<br><Br>
  <TABLE >
    <TR>
      <TH>아이디</TH>
      <TD><input type="text" name="id" size="20"></TD>
    </TR>
  </TABLE>
  
  <DIV class='bottom'>
    <input type='submit' value='중복체크'>
    <input type='button' value='취소' onclick="window.close()">
  </DIV>
</FORM>
 </div>
 
<!-- *********************************************** -->
</body>
<!-- *********************************************** -->
</html> 