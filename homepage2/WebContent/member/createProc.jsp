<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="/ssi/ssi.jsp"%>
<jsp:useBean id="dto" class="member.MemberDTO"></jsp:useBean>
<%
	//--업로드용 변수 선언(폴더명) 
// 	String upDir = "/member/storage";
// 	String tempDir = "/member/temp";

	String upDir = application.getRealPath("/member/storage");
	String tempDir = application.getRealPath("/member/temp");
	UploadSave upload = (UploadSave) request.getAttribute("upload");

	//form의 값을 받는다.
	dto.setId(UploadSave.encode(upload.getParameter("id")));
	dto.setMname(UploadSave.encode(upload.getParameter("mname")));
	dto.setAddress1(UploadSave.encode(upload.getParameter("address1")));
	dto.setAddress2(UploadSave.encode(upload.getParameter("address2")));
	dto.setPasswd(upload.getParameter("passwd"));
	dto.setEmail(upload.getParameter("email"));
	dto.setZipcode(upload.getParameter("zipcode"));
	dto.setTel(upload.getParameter("tel"));
	dto.setJob(upload.getParameter("job"));
	FileItem fileItem = upload.getFileItem("fname");
	int size = (int) fileItem.getSize();
	String fname = null;
	if (size > 0) {
		fname = UploadSave.saveFile(fileItem, upDir);

	} else {
		fname = "member.jpg";
	}

	dto.setFname(fname);

	boolean flag = dao.create(dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style type="text/css">

</style>
</head>
<!-- *********************************************** -->
<body>
	<jsp:include page="/menu/top.jsp" flush="false" />
	<!-- *********************************************** -->


<div style="height: 600px" align="center">
	<DIV style='  font-size: 45px; margin: 5%'>회원가입처리</DIV>
	<div class="content">



		<%
			if (flag) {
				out.print("회원가입을 했습니다.");
			} else {
				out.print("회원가입을 실패했습니다.");
			}
		%>
	</div>
<br><br>
	<%if(flag){ %>

	<DIV class='bottom'>
		<input type='button' value='로그인' onclick="location.href='./login.jsp'"style="background-color: window; border: none; font: icon;"> <input type='button' value='Home'
			onclick="location.href='./index.jsp'"style="background-color: window; border: none; font: icon;" >
	</DIV>
<%}else{ %>
	<DIV class='bottom'>
		<input type='button' value='다시시도'onclick="history.back()"style="background-color: window; border: none; font: icon;"> <input type='button' value='Home'
			onclick="location.href='./index.jsp'" style="background-color: window; border: none; font: icon;">
	</DIV>
<%} %>

</div>
	<!-- *********************************************** -->
	<jsp:include page="/menu/bottom.jsp" flush="false" />
</body>
<!-- *********************************************** -->
</html>
