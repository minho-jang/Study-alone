<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    buffer="5kb"%>
<% 
	int totalBuff = out.getBufferSize();
	int remainBuff = out.getRemaining();
	int useBuff = totalBuff - remainBuff;
%>
<h1>Out Example</h1>
<b>현재 페이지의 BUFFER 상태</b><p/>
출력 BUFFER의 전체 크기 : <%=totalBuff %>byte<p/>
남은 BUFFER의 크기 : <%=remainBuff %>byte<p/>
현재 BUFFER의 사용량 : <%=useBuff %>byte<p/>
