<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
	<%
		int no = Integer.parseInt(request.getParameter("no"));
	%>
	<h1>������ <%= no %>��</h1>
	<%
		for (int j = 1; j < 10; j++) {
	%>
		<%=no%> * <%=j%> = <%=(no * j)%><br />
	<%
		}
	%>
</body>
</html>