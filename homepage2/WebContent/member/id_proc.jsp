<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="/ssi/ssi.jsp"%>
<%
	String id = request.getParameter("id");
	boolean flag = dao.duplicateId(id);
%><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 확인</title>
<style type="text/css">
* {
	font-family: gulim;
	font-size: 20px;
}
</style>
<script type="text/javascript">
function use(){
	opener.frm.id.value='<%=id%>';
	window.close();
	
}

</script>
<link href="<%=root%>/css/style.css" rel="Stylesheet" type="text/css">
</head>
<!-- *********************************************** -->
<body>
	<!-- *********************************************** -->

	<DIV class="title" style="width:300px">아이디 중복 확인</DIV>
	<div class="content">
	입력된 ID :<%=id %><br><br>
		<%
			if (flag == true) {
				out.print("ID가 중복되어 사용이 불가능합니다.");
			} else {
				out.print("사용 가능한 ID 입니다.");
				out.print("<input type='button' value='사용' onclick='use()')>");
			}
		%>

	</div>

	<DIV class='bottom'>
		<input type='button' value='다시시도'onclick="location.href='id_form.jsp'";> <input type='button' value='닫기'
			onclick="window.close()">
	</DIV>
	</FORM>


	<!-- *********************************************** -->
	<jsp:include page="/menu/bottom.jsp" flush="false" />
</body>
<!-- *********************************************** -->
</html>
