<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    errorPage="error.jsp"%>
    
<!DOCTYPE html>
<html>
<body>
<%
	int one = 1;
	int zero = 0;
%>
<h1>Directive Example</h1>
one과 zero의 사칙연산<p/>
one + zero = <%=one+zero %><p/>
one - zero = <%=one-zero %><p/>
one * zero = <%=one*zero %><p/>
one / zero = <%=one/zero %><p/>
</body>
</html>