<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<%@ page import="java.util.*, chapter11and12.*" %>
<%
	Class.forName("org.gjt.mm.mysql.Driver");
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	String id = "",
			pwd = "",
			name = "",
			num1 = "",
			num2 = "",
			email = "",
			phone = "",
			zipcode = "",
			address = "",
			job = "";
	int counter = 0;
	try {
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "1234");
		stmt = conn.createStatement();
		rs = stmt.executeQuery("SELECT * FROM tblRegister");
%>
<html>

<head>
<title>JSP에서 데이터베이스 연동</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>

<body bgcolor="FFFFCC">
	<h2>JSP 스크립트릿에서 데이터베이스 연동 예제</h2><br/>
	<h3>회원 정보</h3>
	<table bordercolor="#0000ff" border="1">
		<tr>
			<td><strong>ID</strong></td>
			<td><strong>PWD</strong></td>
			<td><strong>NAME</strong></td>
			<td><strong>EMAIL</strong></td>
			<td><strong>PHONE</strong></td>
			<td><strong>address</strong></td>
		</tr>
		<%
			if (rs != null) {
				while (rs.next()) {
					id = rs.getString("id");
					pwd = rs.getString("pwd");
					name = rs.getString("name");
					email = rs.getString("email");
					phone = rs.getString("phone");
					address = rs.getString("address");
		%>
		<tr>
			<td><%=id %></td>
			<td><%=pwd %></td>
			<td><%=name %></td>
			<td><%=email %></td>
			<td><%=phone %></td>
			<td><%=address %></td>
			<%
						counter++;
					}
				}
			%>
		</tr>
	</table><br/>
	total records: <%=counter %>
	<%
		} catch (SQLException sqlException) {
			System.out.println("sql exception");
		} catch (Exception exception) {
			System.out.println("exception");
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {}
			if (stmt != null)
				try {
					stmt.close();
				} catch (SQLException ex) {}
			if (conn != null)
				try {
					conn.close();
				} catch (Exception ex) {}
		}
	%>
</body>
</html>