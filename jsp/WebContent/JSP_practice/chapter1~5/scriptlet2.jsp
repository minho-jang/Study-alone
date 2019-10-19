<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<h1>Scriptlet Example2</h1>
<%
float f = 2.3f;
int i = Math.round(f);
java.util.Date date = new java.util.Date();
%>
<body>
실수 f의 반올림값은 ? <%=i %><p>
현재의 날짜와 시간은? <%=date.toString() %>
</body>
</html>