<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
	String id = (String)session.getAttribute("idKey");
	if (id == null) {
		%>
		<script>
			alert("로그인 되지 않았습니다.");
			location.href = "sessionLogin.jsp";
		</script>
		<%
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Simple Login</title>
<link href="style.css" rel="stylesheet" type="text/css" >
</head>

<body>
<h2 align="center">Session 로그인</h2>
<table width="500" border="1" align="center" bgcolor="#FFFF99">
	<tr bordercolor="#FFFF66">
		<td colspan="2" align="center"><b>Log on Page</b></td>
	</tr>
	<tr>
		<td align="center"><b><%=id %></b>님이 로그인 하셨습니다.</td>
		<td align="center"><a href="sessionLogout.jsp">로그아웃</a></td>
	</tr>
</table>
</body>
</html>