<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="/ssi/ssi.jsp"%>
<%
	String email = request.getParameter("email");
	boolean flag = dao.dulicateEmail(email);
%><!DOCTYPE html>
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
function use(){

	opener.frm.email.value="<%=email%>";
	window.close();
}


</script>
<link href="<%=root%>/css/style.css" rel="Stylesheet" type="text/css">
</head>
<!-- *********************************************** -->
<body>
	<!-- *********************************************** -->

	<DIV class="title" style="width:300px">E-mail 중복 확인</DIV>
	<div class="content">
	입력된 E-mail :<%=email %><br><br>
		<%
			if (flag == true) {
				out.print("E-mail이 중복되어 사용이 불가능합니다.");
			} else {
				out.print("사용 가능한 E-mail 입니다.");
				out.print("<input type='button' value='사용' onclick='use()')>");
			}
		%>

	</div>

	<DIV class='bottom'>
		<input type='button' value='다시시도'onclick="location.href='email_form.jsp'";> <input type='button' value='닫기'
			onclick="window.close()">
	</DIV>
	</FORM>


	<!-- *********************************************** -->
</body>
<!-- *********************************************** -->
</html>
