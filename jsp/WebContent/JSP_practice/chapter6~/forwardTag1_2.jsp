<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
%>
<h1>Forward Tag Example</h1>
����� ���̵�� <b><%=id %></b>�̰�<p/>
�н������ <b><%=pwd %></b> �Դϴ�.