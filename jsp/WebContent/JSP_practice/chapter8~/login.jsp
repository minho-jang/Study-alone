<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%
	String id = (String)session.getAttribute("idKey");
%>
<html>
<body>
	<H1>Servlet ����</H1>
	<%
		if(id != null) {
	%>
	<%=id %>�� �ݰ����ϴ�.<p/>
	<a href='logout.jsp'>�α׾ƿ�</a>
	<%
		} else {
	%>
	<form method="post" action="chapter8/LoginServlet">
	id : <input name="id"><br/>
	pwd : <input type="password" name="pwd"><br/>
	<input type="submit" value="�α���">
	</form>
	<% } %>
</body>
</html>