<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/ssi.jsp"%>
<%
	//--업로드용 변수 선언(폴더명)
	String upDir = "/member/storage";
	String tempDir = "/member/temp";

	upDir = application.getRealPath(upDir);
	tempDir = application.getRealPath(tempDir);
	UploadSave upload = new UploadSave(request, -1, -1, tempDir);

	String id = UploadSave.encode(upload.getParameter("id"));
	String email = upload.getParameter("email");
	String str = "";
	if (dao.duplicateId(id)) {
		str = "ID가 중복되었습니다";
	} else if (dao.dulicateEmail(email)) {
		str = "중복된 이메일입니다.";
	} else {
		//다른페이지로 이동 createProc.jsp
		//js:loaction.href=
		//jsp내부객체 response.sendRedirect()

		//createProc.jsp이동 
		request.setAttribute("upload", upload);
		//setAttribute <<객체를 저장해서 쓸수있게해준다 request가 살아있을때까지
%>
<jsp:forward page="/member/createProc.jsp"></jsp:forward>
<%
	return;
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
<div  style="height: 600px" align="center">
<br>
	<DIV  style='  font-size: 45px; margin: 5%'>중복확인</DIV>

	<div class="contnet" >

		
		<%=str%>
<br><br>
	</div>
	<DIV class='bottom'>
		<input type='button' value='다시시도' onclick="history.back()" style="background-color: window; border: none; font: icon;">
	</DIV>

</div>
	<!-- *********************************************** -->
	<jsp:include page="/menu/bottom.jsp" flush="false" />
</body>
<!-- *********************************************** -->
</html>
