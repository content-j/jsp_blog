<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="/ssi/ssi.jsp"%>
<jsp:useBean id="dto" class="member.MemberDTO"></jsp:useBean>
<jsp:setProperty property="*" name="dto" />
<%
	boolean flag = dao.update(dto);
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
<script type="text/javascript">
function read(){
	var url="read.jsp"
	url+="?id+<%=dto.getId()%>";
		
	location.href = url;

	}
</script>
</head>
<!-- *********************************************** -->
<body>
	<jsp:include page="/menu/top.jsp" flush="false" />
	<!-- *********************************************** -->

	<DIV class="title">회원 정보 수정</DIV>

	<div class="content">

		<%
			if (flag) {
				out.print("정보 수정을 처리하였습니다.");%>

		<DIV class='bottom'>
			<input type='button' value='정보확인' onclick="read()"> <input type='button'
				value='목록' onclick="location.href='list.jsp'">
		</DIV>


		<% } else {
				out.print("정보 수정을 실패하였습니다.");
			
		%>
	<DIV class='bottom'>
		 <input
			type='button' value='다시시도' onclick="history.back()">
			<input type='button'
				value='목록' onclick="location.href='list.jsp'">
	</DIV>
<%} %>

	</div>

	</FORM>


	<!-- *********************************************** -->
	<jsp:include page="/menu/bottom.jsp" flush="false" />
</body>
<!-- *********************************************** -->
</html>
