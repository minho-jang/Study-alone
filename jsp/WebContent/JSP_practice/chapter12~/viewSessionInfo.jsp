<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>세션 사용 예제 (세션 확인)</title>
</head>
<body>
<%
	Enumeration en = session.getAttributeNames();
	while (en.hasMoreElements()) {
		String name = (String)en.nextElement();
		String value = (String)session.getAttribute(name);
		%>
		session name: <%=name %><br/>
		session value: <%=value %><br/>
		<%
	}
%>
----------------------------------------------------------<br/>
<%
	Cookie[] cookies = request.getCookies();
	if (cookies != null) {
		for (int i = 0; i < cookies.length; i++) {
			%>
			Cookie Name: <%=cookies[i].getName() %><br/>
			Cookie Value: <%=cookies[i].getValue() %><br/>
			<%

		}
	}
%>
</body>
</html>