<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<jsp:useBean id="test" class="chapter9.SimpleBean" scope="page" />
<jsp:setProperty name="test" property="message" value="���� ���� ��������!" />

<!DOCTYPE html>
<html>
<body>
	<h1>������ �� ���α׷���</h1>
	<br/>
	Message: <jsp:getProperty name="test" property="message" />
</body>
</html>