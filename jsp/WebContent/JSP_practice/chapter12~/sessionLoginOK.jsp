<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
	String id = (String)session.getAttribute("idKey");
	if (id == null) {
		%>
		<script>
			alert("�α��� ���� �ʾҽ��ϴ�.");
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
<h2 align="center">Session �α���</h2>
<table width="500" border="1" align="center" bgcolor="#FFFF99">
	<tr bordercolor="#FFFF66">
		<td colspan="2" align="center"><b>Log on Page</b></td>
	</tr>
	<tr>
		<td align="center"><b><%=id %></b>���� �α��� �ϼ̽��ϴ�.</td>
		<td align="center"><a href="sessionLogout.jsp">�α׾ƿ�</a></td>
	</tr>
</table>
</body>
</html>