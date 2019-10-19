<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
	<h1>Comment Example1</h1>
	<%
		String name = "Korea";
	%>
	<!-- 주석 부분입니다. '소스 보기'에서 보입니다. -->
	<%--
		이 부분은 jsp페이지에서만 보이고 '소스 보기'에서는
		보이지 않습니다. 브라우저에 보내지 않습니다.
	--%>
	<!-- <%=name%>: 주석에서도 동적인 변수 사용 -->
	<%=name /* 표현식에 부분 주석 */ %> Fighting !!
</body>
</html>