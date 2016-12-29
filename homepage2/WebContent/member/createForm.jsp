<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String root = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style type="text/css">
/* 제목 */
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

/* 하단 메뉴 */
.bottom {
	margin: 20px auto;
	text-align: center;
	width: 100%;
	padding: 10px; /* 위 오른쪽 아래 왼쪽 */
}

/* 테이블에 CSS 적용 */
td.td01 {
	font-size: 10px;
	color: gray;
	border-left: white;
}
</style>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	function sample6_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var fullAddr = ''; // 최종 주소 변수
						var extraAddr = ''; // 조합형 주소 변수

						// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							fullAddr = data.roadAddress;

						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							fullAddr = data.jibunAddress;
						}

						// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
						if (data.userSelectedType === 'R') {
							//법정동명이 있을 경우 추가한다.
							if (data.bname !== '') {
								extraAddr += data.bname;
							}
							// 건물명이 있을 경우 추가한다.
							if (data.buildingName !== '') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
							fullAddr += (extraAddr !== '' ? ' (' + extraAddr
									+ ')' : '');
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
						document.getElementById('sample6_address').value = fullAddr;

						// 커서를 상세주소 필드로 이동한다.
						document.getElementById('sample6_address2').focus();
					}
				}).open();
	}
</script>
<script type="text/javascript">
	function inputCheck(f) {
		if (f.id.value == "") {
			alert("아이디 입력하세요.");
			f.id.focus();
			return false;
		}
		if (f.passwd.value == "") {
			alert("패스워드를 입력하세요.");
			f.passwd.focus();
			return false;
		}
		if (f.repasswd.value == "") {
			alert("패스워드를 입력하세요.");
			f.repasswd.focus();
			return false;
		}
		if (f.repasswd.value != f.passwd.value) {
			alert("비밀번호가 일치하지 않습니다. 확인해주세요");
			f.repasswd.focus();
			return false;
		}
		if (f.mname.value == "") {
			alert("이름을 입력하세요.");
			f.mname.focus();
			return false;
		}
		if (f.email.value == "") {
			alert("E-Mail을 입력하세요.");
			f.email.focus();
			return false;
		}
		if (f.job.value == "0") {
			alert("직업을 입력하세요.");
			return false;
		}

	}
	function idCheck(id){
		if(id==""){
			alert("아이디를 입력해주세요");
			document.frm.id.focus();
		}else{
		var url="id_proc.jsp"	;
		url+="?id="+id;

	wr =window.open(url,"아이디검색","width=500px ,height=400px");
	wr.moveTo(((window.screen.width-500)/2),((window.screen.height-500)/2));
	
	}
		}
	function emailCheck(email){
		if(email=="")
			{alert("E-mail을 입력해주세요");
			document.frm.email.focus();}else{
				var url="email_proc.jsp";
				url+="?email="+email;
				
				wr=window.open(url,"이메일검색","width=500px ,height=400px");
				wr.moveTo(((window.screen.width-500)/2),((window.screen.height-500)/2));
			}
		
	}
</script>
</head>
<!-- *********************************************** -->
<body >
	<jsp:include page="/menu/top.jsp" flush="false" />
	<!-- *********************************************** -->
	<div style="width: 70%; height: 70% ;margin: 0 auto">
	<br>
		<DIV class="title">회원가입</DIV>

		<FORM name='frm' method='POST' action='./prcreateProc.jsp'
			enctype="multipart/form-data" onsubmit="return inputCheck(this)">
			<TABLE class="table table-condensed">
				<TR>
					<TH>사진</TH>
					<TD ><input  type="file" name="fname" accept=".jpg,.gif,.png" style=" font: icon;" ></TD>
					<TD class="td01">사진은 JPG, PNG, GIF파일만 올려주세요.
				</TR>

				<TR>
					<TH>*아이디</TH>
					<TD><input type="text" name="id" size="15" ><input
						type="button" value="ID중복확인"
						onclick="idCheck(document.frm.id.value)" style="background-color: window; border: none; font: icon;"></TD>
					<TD class=td01>아이디를 적어주세요</TD>
				</TR>
				<TR>
					<TH>*패스워드</TH>
					<TD><input type="password" name="passwd" size="15"></TD>
					<TD class=td01>패스워드를 적어주세요</TD>
				</TR>
				<TR>
					<TH>*패스워드 확인</TH>
					<TD><input type="password" name="repasswd" size="15"></TD>
					<TD class=td01>패스워드를 확인합니다</TD>
				</TR>
				<TR>
					<TH>*이름</TH>
					<TD><input type="text" name="mname" size="15"></TD>
					<TD class="td01">고객실명을 적어주세요.</TD>
				</TR>
				<TR>
					<TH>전화번호</TH>
					<TD colspan="2"><input type="text" name="tel" size="30"></TD>
				</TR>
				<TR>
					<TH>*E-Mail주소</TH>
					<TD><input type="text" name="email" size="40"> <input
						type="button" value="E-Mail중복확인  "
						onclick="emailCheck(document.frm.email.value)" style="background-color: window; border: none; font: icon;"></TD>
					<TD class="td01">이메일을 적어주세요.</TD>
				</TR>
				<TR>
					<TH>우편번호</TH>
					<TD colspan="2"><input tpye="text" name="zipcode" size="10"
						id="sample6_postcode" placeholder="우편번호"><input
						tpye="button" value="우편번호찾기" size="13"
						onclick="sample6_execDaumPostcode()"></TD>
				</TR>
				<TR>
					<TH>주소</TH>
					<TD colspan="2"><input tpye="text" name="address1"
						id="sample6_address" size="45" placeholder="주소"></TD>
				</TR>
				<TR>
					<TH>상세주소</TH>
					<TD colspan="2"><input tpye="text" name="address2"
						id="sample6_address2" size="45" placeholder="상세 주소"></TD>
				</TR>
				<TR>
					<TH>*직업</TH>
					<TD><select name="job">
							<option value="0">-선택하세요-</option>
							<option value="A1">회사원</option>
							<option value="A2" selected>전산관련직</option>
							<option value="A3">영구전문직</option>
							<option value="A4">학생</option>
							<option value="A5">자영업</option>
							<option value="A6">CEO</option>
							<option value="A7">공무원</option>
							<option value="A8">의료인</option>
							<option value="A9">법조인</option>
							<option value="A10">종교/언론/예술인</option>
							<option value="A11">기타</option>
					</select></TD>
					<TD colspan="2" class="td01">직업을 선택하세요</TD>
				</TR>
			</TABLE>

			<DIV class='bottom'>
				<input type='submit' value='회원가입' style="background-color: window; border: none; font: icon;" > <input type='reset'
					value='다시입력' style="background-color: window; border: none;font: icon;">
			</DIV>
		</FORM>

	</div>
	<!-- *********************************************** -->
	<jsp:include page="/menu/bottom.jsp" flush="false" />
</body>
<!-- *********************************************** -->
</html>
