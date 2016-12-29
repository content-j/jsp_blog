<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String root = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E-mail 중복 확인</title>
<style type="text/css">
* {
	font-family: gulim;
	font-size: 20px;
}
</style>
<script type="text/javascript">
	function check(em) {
		if (em.email.value == "") 
			alert("E-mail을 입력하세요");
			em.email.focus();
			return false;
		

	}
	
</script>
<link href="<%=root%>/css/style.css" rel="Stylesheet" type="text/css"
	>
</head>
<!-- *********************************************** -->
<body>
	<!-- *********************************************** -->

	<DIV class="title" style="width:300px">E-mail 중복 확인</DIV>

	<FORM name='frm' method='POST' action='./email_proc.jsp'>
		<div class="content">  
			E-mail을 입력해주세요<br>
			<Br>
			<TABLE>
				<TR>
					<TH>E-mail</TH>
					<TD><input type="text" name="email" size="20"></TD>
				</TR>
			</TABLE>

			<DIV class='bottom'>
				<input type='submit' value='중복체크'> <input type='button'
					value='취소' onclick="window.close()">
			</DIV>
	</FORM>
	</div>

	<!-- *********************************************** -->
</body>
<!-- *********************************************** -->
</html>
