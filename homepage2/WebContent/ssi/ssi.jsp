<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="utility.*"%>
<%@ page import="member.*"%> 
<%@ page import="org.apache.commons.fileupload.*"%>
<jsp:useBean id="dao" class="member.MemberDAO"></jsp:useBean>
<%
	request.setCharacterEncoding("utf-8");
	String root = request.getContextPath(); 
	
%>

