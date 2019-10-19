<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
	String name = "minho";
	String bloodType = request.getParameter("bloodType");
%>
<h1>Forward Tag Example</h1>
<jsp:forward page='<%=bloodType + ".jsp"%>'>
	<jsp:param name="name" value="<%=name %>"/>
</jsp:forward>