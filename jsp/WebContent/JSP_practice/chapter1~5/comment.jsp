<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
	<h1>Comment Example1</h1>
	<%
		String name = "Korea";
	%>
	<!-- �ּ� �κ��Դϴ�. '�ҽ� ����'���� ���Դϴ�. -->
	<%--
		�� �κ��� jsp������������ ���̰� '�ҽ� ����'������
		������ �ʽ��ϴ�. �������� ������ �ʽ��ϴ�.
	--%>
	<!-- <%=name%>: �ּ������� ������ ���� ��� -->
	<%=name /* ǥ���Ŀ� �κ� �ּ� */ %> Fighting !!
</body>
</html>