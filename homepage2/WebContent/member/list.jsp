
<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="/ssi/ssi.jsp"%>
<%
	//검색관련

	String col = Utility.checkNull(request.getParameter("col"));
	String word = Utility.checkNull(request.getParameter("word"));
	if (col.equals("total")) {
		word = "";

	}
	//페이징관련
	int nowPage = 1;
	int recordPerPage = 9;
	if (request.getParameter("nowPage") != null) {
		nowPage = Integer.parseInt(request.getParameter("nowPage"));
	}

	//DB에서 가져올 순서
	int sno = ((nowPage - 1) * recordPerPage) + 1;
	int eno = nowPage * recordPerPage;

	Map map = new HashMap();
	map.put("col", col);
	map.put("word", word);
	map.put("sno", sno);
	map.put("eno", eno);

	int total = dao.total(col, word);
	List<MemberDTO> list = dao.list(map);
	Iterator<MemberDTO> iter = list.iterator();

	String paging = Utility.paging3(total, nowPage, recordPerPage, col, word);
%>
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.search1 {
	width: 100%;
	text-align: center;
	margin: 1px atuo;
}

.container {
	padding: 80px 120px;
}

.person {
	border: 10px solid transparent;
	margin-bottom: 25px;
	width: 80%;
	height: 80%;
	opacity: 0.7;
}

.person:hover {
	border-color: #78dadc;
}

body {
	font-family: "Lato", sans-serif
}

.title {
	font-size: 28px;
	text-align: center;
	border-style: solid; /* 실선 */
	border-width: 1px; /* 선 두께 */
	border-color: #AAAAAA; /* 선 색깔 */
	color: #000000; /* 글자 색깔 */
	width: 30%; /* 화면의 30% */
	padding: 10px; /* 위 오른쪽 아래 왼쪽: 시간 방향 적용 */
	/* padding: 50px 10px;  50px: 위 아래, 10px: 좌우 */
	/* padding-top: 30px;  상단만 간격을 30px 지정   */
	margin: 20px auto; /* 가운데 정렬 기능, 20px: 위 아래, auto: 오른쪽 왼쪽*/
}

/* 내용 */
.content {
	font-size: 24px;
	text-align: center;
	width: 100%;
	padding: 10px; /* 위 오른쪽 아래 왼쪽 */
	margin: 0 auto; /* 가운데 정렬 */
}
</style>
<script type="text/javascript">
function read(id){
var url="read.jsp";
url+="?id="+id;
url+="&nowPage=<%=nowPage%>";
url+="&col=<%=col%>";
url+="&word=<%=word%>
	";

		location.href = url;

	}
</script>
</head>
<!-- *********************************************** -->
<body>
	<jsp:include page="/menu/top.jsp" flush="false" />
	<!-- *********************************************** -->

	<br>
	<br>


	<DIV align="center" style='font-size: 45px'>멤버 목록</DIV>
	<br>
	<div class="search1">
		<input type="hidden" value="<%=request.getParameter("id")%>">
		<FORM name='frm' method='POST' action='./list.jsp'>
			<select name="col">
				<option value="mname"
					<%if (col.equals("mname"))
				out.print("selected='selected'");%>>성명</option>
				<option value="email"
					<%if (col.equals("email"))
				out.print("selected='select'");%>>이메일</option>
				<option value="id"
					<%if (col.equals("id"))
				out.print("selected='select'");%>>아이디</option>
				<option value="total">전체출력</option>

			</select> <input type="text" name="word" value='<%=word%>'> <input
				type="submit" value="검색"
				style="background-color: window; border: none; font: icon;"><input
				type="button" value="회원가입" onclick="location.href='agreement.jsp'"
				style="background-color: window; border: none; font: icon;">
		</Form>
	</div>






	<br>
	<br>


	<%
		if (iter.hasNext()) {
			int b = 0;

			while (iter.hasNext()) {
				String a = "#demo";
				String aa = "demo";
				MemberDTO dto = iter.next();
				b++;
	%>




	<div align="center" style="width: 100%; height: 500px">
		<div class="w3-third" style="height: 500px;">
			<div>
				<a href="<%=(a + b)%>" data-toggle="collapse"><img
					src="./storage/<%=dto.getFname()%>" class="img-circle person"
					alt="Random Name" style="width: 350px ;height: 300px"></a> <br> <br> <b><%=dto.getId()%>님
				</b>
				<div id="<%=(aa + b)%>" class="collapse">

					<p><%=dto.getMname()%></p>
					<p><%=dto.getJob()%></p>
					<p><%=dto.getEmail()%></p>

				</div>


			</div>
		</div>


		
			<%
				}
				} else {
					out.print("<div align='center' style='font-size: 25px'>");
					out.print("목록이없습니다");
					out.print("</div>");
				}
			%>
		
	</div>



	<table style="width: 10%; height: 10%">
		<DIV align="center" style="width: 100%; height: 10%">
			<%=paging%>
			<br> <br>
		</DIV>
	</table>

	<!-- *********************************************** -->
	<jsp:include page="/menu/bottom.jsp" flush="false" />
</body>
<!-- *********************************************** -->
</html>
