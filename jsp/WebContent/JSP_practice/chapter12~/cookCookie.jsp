<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Cook Cookie</title>
</head>
<%
	String cookieName = "myCookie";
	Cookie cookie = new Cookie(cookieName, "Apple");
	cookie.setMaxAge(60);
	response.addCookie(cookie);
%>
<body>
<h1>Example Cookie</h1>
��Ű�� ����ϴ�.<br/>
��Ű ������ <a href="tasteCookie.jsp">�����</a> !!
</body>
</html>