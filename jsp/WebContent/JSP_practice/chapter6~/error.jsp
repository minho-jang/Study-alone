<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    isErrorPage="true"%>
<!DOCTYPE html>
<html>
<body>
	<h1>Error Page</h1>
	다음과 같은 예외가 발생하였습니다.<p/>
	<%=exception.getMessage() %>
</body>
</html>