<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	response.setHeader("Pragma", "no-cache");
	if (request.getProtocol().equals("HTTP/1.1")) {
		response.setHeader("Cache-Control", "no-store");
	}
%>
<h1>Response Example1</h1>
http://localhost/myapp/JSP_practice/chapter7~/request1.jsp��<p/>
http://localhost/myapp/JSP_practice/chapter7~/request1_1.jsp�� ����Ǿ����ϴ�.<p/>
	