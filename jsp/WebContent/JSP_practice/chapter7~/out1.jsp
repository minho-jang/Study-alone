<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    buffer="5kb"%>
<% 
	int totalBuff = out.getBufferSize();
	int remainBuff = out.getRemaining();
	int useBuff = totalBuff - remainBuff;
%>
<h1>Out Example</h1>
<b>���� �������� BUFFER ����</b><p/>
��� BUFFER�� ��ü ũ�� : <%=totalBuff %>byte<p/>
���� BUFFER�� ũ�� : <%=remainBuff %>byte<p/>
���� BUFFER�� ��뷮 : <%=useBuff %>byte<p/>
