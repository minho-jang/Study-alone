<%@ page language="java" 
	contentType="text/html; charset=EUC-KR"
    info="Copyright 2019 by YoungAndRich"
    pageEncoding="EUC-KR"
    import="java.util.*"
    session="true"
    buffer="16kb"
    autoFlush="true"
    isThreadSafe="true"
    trimDirectiveWhitespaces="true"
%>

<!DOCTYPE html>
<html>
<body>
	<h1>Directive Example</h1>
	<%
		Date date = new Date();
	%>
	<%=date.toLocaleString() %><p/><p/>
	지시자(Directive)의 기본값<br/>
	- contentType: "text/html"<br/>
	- session: "true"<br/>
	- buffer: "8kb"<br/>
	- autoFlush: "true"<br/>
	- isThreadSafe: "true"<br/>
	- trimDirectiveWhitespaces: "false"<br/>
</body>
</html>