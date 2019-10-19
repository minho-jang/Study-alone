<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*, chapter11and12.*" %>
<jsp:useBean id="regMgr" class="chapter11and12.RegisterMgr" scope="page" />

<html>
<head>
<title>JSP에서 데이터베이스 연동</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>

<body bgcolor="FFFFCC">
<h2>Bean을 사용한 데이터베이스 연동 예제</h2><br/>
<h3>회원정보</h3>
<table bordercolor="0000ff" border="1">
	<tr>
		<td><strong>ID</strong></td>
		<td><strong>PWD</strong></td>
		<td><strong>NAME</strong></td>
		<td><strong>EMAIL</strong></td>
		<td><strong>PHONE</strong></td>
		<td><strong>ADDRESS</strong></td>
	</tr>
	<%
		Vector<RegisterBean> vList = regMgr.getRegisterList();
		int counter = vList.size();
		for (int i = 0; i < vList.size(); i++) {
			RegisterBean regBean = vList.get(i);
	%>
	<tr>
		<td><%=regBean.getId() %></td>
		<td><%=regBean.getPwd() %></td>
		<td><%=regBean.getName() %></td>
		<td><%=regBean.getEmail() %></td>
		<td><%=regBean.getPhone() %></td>
		<td><%=regBean.getAddress() %></td>
	<%
		}
	%>
	</tr>
</table><br/>
total records: <%=counter %>

</body>
</html>