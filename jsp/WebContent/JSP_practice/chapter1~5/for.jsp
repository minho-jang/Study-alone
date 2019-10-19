<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
	<h1>for Example</h1>
	1에서 10가지 합은 ? <p>
	<%
		int i, sum = 0;
		for (i = 1; i <= 10; i++) {
			if(i < 10) {
				out.print(i + " + ");
			} else {
				out.println(i + " = ");
			} // if-else
			sum += i;
		} // for
	%>
	<%=sum %>
</body>
</html>