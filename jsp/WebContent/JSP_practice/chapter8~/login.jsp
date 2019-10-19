<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%
	String id = (String)session.getAttribute("idKey");
%>
<html>
<body>
	<H1>Servlet ¼¼¼Ç</H1>
	<%
		if(id != null) {
	%>
	<%=id %>´Ô ¹Ý°©½À´Ï´Ù.<p/>
	<a href='logout.jsp'>·Î±×¾Æ¿ô</a>
	<%
		} else {
	%>
	<form method="post" action="chapter8/LoginServlet">
	id : <input name="id"><br/>
	pwd : <input type="password" name="pwd"><br/>
	<input type="submit" value="·Î±×ÀÎ">
	</form>
	<% } %>
</body>
</html>