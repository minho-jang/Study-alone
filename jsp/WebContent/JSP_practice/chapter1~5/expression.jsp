<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
	<h1>Expression Example1</h1>
	<%!String name[] = { "Java", "JSP", "Android", "Struts" };%>
	<table border="1" , width="200">
		<%
			for (int i = 0; i < name.length; i++) {
		%>
		<tr>
			<td><%=i%></td>
			<td><%=name[i]%></td>
		</tr>
		<%
			}
		%>
	</table>

	<h1>Expression Example2</h1>
	<%
		java.util.Date date = new java.util.Date();
		int hour = date.getHours();
		int no1 = 10;
		int no2 = 12;
	%>
	<%!public int operation(int i, int j) {
		return i > j ? i : j;
	}%>
	������ �����ϱ�� �����ϱ��?
	<%=(hour < 12) ? "����" : "����"%><p>
		no1�� no2 �߿��� ���� �� Ŭ���?
		<%=operation(no1, no2)%>
</body>
</html>