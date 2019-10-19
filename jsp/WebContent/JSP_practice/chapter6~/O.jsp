<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String name = request.getParameter("name");
	String bloodType = request.getParameter("bloodType");
%>
<h1>Forward Tag Example</h1>
<%=name%>님의 혈액형은
<b><%=bloodType %></b>형이고<p/>
온순하고 계산적인 사람입니다.