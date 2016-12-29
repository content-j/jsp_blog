<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String root = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginPage</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
</style>
<script type="text/javascript">
	function IDCheck(frm) {
		if (frm.id.value == "") {
			alert("아이디를 입력해주세요");
			frm.id.focus();
			return false;
		}
		if (frm.passwd.value == "") {
			alert("비밀번호를 입력해주세요.");
			frm.passwd.focus();
			return false;
		}
	}
</script>
</head>
<!-- *********************************************** -->
<body>
	<jsp:include page="/menu/top.jsp" flush="false" />
	<!-- *********************************************** -->



	<div class="container" style="height: 300px; margin: 150px auto;">
		<DIV>
			<h2>Login</h2>
		</DIV>

		<FORM name='frm' method='POST' action='./loginProc.jsp'
			onsubmit="return IDCheck(this)">
			<TABLE class="table table-condensed">
				<TR>
					<TH>아이디</TH>
					<TD><input type="text" name="id" style="background-color: black; color: white;"></TD>
				</TR>
				<TR>
					<TH>비밀번호</TH>
					<TD><input type="password" name="passwd" style="background-color: black; color: white;"></TD>
				</TR>
			</TABLE>

			<DIV class='bottom'>
				<input type='submit' value='로그인'
					style="background-color: window; border: none;"> <input
					type='button' value='회원가입' onclick="location.href='agreement.jsp'"
					style="background-color: window; border: none;"> <input
					type='button' value='취소' onclick="history.back()"
					style="background-color: window; border: none;">
			</DIV>
	</div>
	</FORM>

	<!-- *********************************************** -->
	<jsp:include page="/menu/bottom.jsp" flush="false" />
</body>
<!-- *********************************************** -->
</html>
