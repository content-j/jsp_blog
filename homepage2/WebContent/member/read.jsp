<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="/ssi/ssi.jsp"%>
<%
	String id = request.getParameter("id");
	if (id == null) {
		id = (String) session.getAttribute("id");
	}
	String passwd = request.getParameter("passwd");
	MemberDTO dto = dao.read(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보</title>

<script type="text/javascript">

function updateFile(){
	var url="updateFileForm.jsp"; 
	url+="?id=<%=id%>";
	url+="&oldfile=<%=dto.getFname()%>";
	location.href=url;
}
function updatePw(){
	var url="updatePwForm.jsp"; 
	url+="?id=<%=id%>";
	location.href=url;

	}
function update(){
	var url="updateForm.jsp"; 
	url+="?id=<%=id%>";
		location.href = url;

	}
</script>
</head>
<!-- *********************************************** -->
<body>
	<jsp:include page="/menu/top.jsp" flush="false" />
	<!-- *********************************************** -->
	<br><br>
	<div align="center" style="height:1370px;width: 100%">
		<DIV style="font-size: 45px; ">My Info
		</DIV>
		<TABLE>
			<TR>
				<TH colspan="2"><img alt="loding.."
					src="./storage/<%=dto.getFname()%>"></TH>
			</TR>
			<TR>
				<TH>ID</TH>
				<TD><%=dto.getId()%></TD>
			</TR>
			<TR>
				<TH>이름</TH>
				<TD><%=dto.getMname()%></TD>
			</TR>
			<TR>
				<TH>전화번호</TH>
				<TD><%=dto.getTel()%></TD>
			</TR>
			<TR>
				<TH>이메일</TH>
				<TD><%=dto.getEmail()%></TD>
			</TR>
			<TR>
				<TH>우편번호</TH>
				<TD><%=dto.getZipcode()%></TD>
			</TR>
			<TR>
				<TH>주소</TH>
				<TD><%=Utility.checkNull(dto.getAddress1())%><%=Utility.checkNull(dto.getAddress2())%></TD>
			</TR>
			<TR>
				<TH>직업</TH>
				<TD><%=dto.getJob()%> <%=Utility.getCodeValue(dto.getJob())%></TD>
			</TR>
			<TR>
				<TH>가입일</TH>
				<TD><%=dto.getMdate()%></TD>
			</TR>
		</TABLE>
<br>
		<DIV class='bottom'>
			<input type='button' value='정보수정' onclick="update()"style="background-color: window; border: none; font: icon;"> <input
				type='button' value='사진수정' onclick="updateFile()"style="background-color: window; border: none; font: icon;"> <input
				type='button' value='비밀번호변경' onclick="updatePw()"style="background-color: window; border: none; font: icon;">
		</DIV>
		</FORM>
	</div>

	<!-- *********************************************** -->
	<jsp:include page="/menu/bottom.jsp" flush="false" />
</body>
<!-- *********************************************** -->
</html>
