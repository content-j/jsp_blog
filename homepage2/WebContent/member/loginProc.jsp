<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="/ssi/ssi.jsp"%>
<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");

	boolean flag = dao.loginCheck(id, passwd);
	String grade = null;
	if (flag) {
		grade = dao.getGrade(id);
		session.setAttribute("id", id);
		session.setAttribute("grade", grade);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style type="text/css">
* {
	font-family: gulim;
	font-size: 20px;
}
</style>
</head>
<!-- *********************************************** -->
<body>
	<jsp:include page="/menu/top.jsp" flush="false" />
	<!-- *********************************************** -->
	<br>
	<br>
<div align="center" style="width: 100%; height: 500px">
		<DIV style='  font-size: 45px'>로그인</DIV>
		<br>
		<%
			if (flag) {
				out.print("로그인 되었습니다.");

			} else {
				out.print("아이디/비밀번호를 확인해주세요.");
			}
		%>


		<DIV>
			<%
				if (flag) {
			%>
			<br>
			<input type='button' value='홈' onclick="location.href='<%=root%>/menu/index.jsp'"
				style="background-color: window; border: none;">
			<%
				} else {
			%><br>
				<input type='button' value='홈' onclick="location.href='${pageContext.request.contextPath }/menu/index.jsp'"
				style="background-color: window; border: none;">
			<input type='button' value='다시시도' onclick="history.back()"
				style="background-color: window; border: none;">
			<%
				}
			%>
		</div>
</div>


	<!-- *********************************************** -->
	<jsp:include page="/menu/bottom.jsp" flush="false" />
</body>
<!-- *********************************************** -->
</html>
