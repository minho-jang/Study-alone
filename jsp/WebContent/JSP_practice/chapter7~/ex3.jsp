<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import="java.util.*"%>
<%
	request.setCharacterEncoding("euc-kr");
	String name = request.getParameter("name");
	String memo = request.getParameter("memo");
	Date date = new Date();
%>
<h1>�޸���</h1>
<table border="1" width="300">
<tr>
	<td>����</td>
	<td><%=name %></td>
</tr>
<tr>
	<td>�޸�</td>
	<td><%= memo%></td>
</tr>
<tr>
	<td>��¥</td>
	<td><%=date.toLocaleString() %></td>
</tr>
</table>
