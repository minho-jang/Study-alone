<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
	String name = request.getParameter("name");
	String studentNum = request.getParameter("studentNum");
	String gender = request.getParameter("gender");
	String major = request.getParameter("major");
	
	String addr = request.getRemoteAddr();
	String host = request.getRemoteHost();
	StringBuffer url = request.getRequestURL();
	String uri = request.getRequestURI();
	String useBrowser = request.getHeader("User-Agent");
	
	if(gender.equals("man")) {
		gender = "����";
	} else {
		gender = "����";
	}
%>
<h1>Request Example1</h1>
���� : <%=name%><p/>
�й� : <%=studentNum%><p/>
���� : <%=gender%><p/>
�а� : <%=major%><p/>
<br/>
addr = <%=addr%><p/>
host = <%=host%><p/>
URL = <%=url%><p/>
URI = <%=uri%><p/>
������ = <%=useBrowser%><p/>