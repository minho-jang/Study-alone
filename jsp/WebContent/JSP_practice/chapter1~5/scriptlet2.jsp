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
�Ǽ� f�� �ݿø����� ? <%=i %><p>
������ ��¥�� �ð���? <%=date.toString() %>
</body>
</html>