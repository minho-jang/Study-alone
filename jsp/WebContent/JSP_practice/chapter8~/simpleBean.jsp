<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<jsp:useBean id="test" class="chapter9.SimpleBean" scope="page" />
<jsp:setProperty name="test" property="message" value="빈을 쉽게 정복하자!" />

<!DOCTYPE html>
<html>
<body>
	<h1>간단한 빈 프로그래밍</h1>
	<br/>
	Message: <jsp:getProperty name="test" property="message" />
</body>
</html>