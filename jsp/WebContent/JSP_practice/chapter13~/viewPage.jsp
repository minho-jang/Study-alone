<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.io.*, java.util.*"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%
	String saveFolder = "C:/JSP/jsp_repository/WebContent/JSP_practice/chapter13~/file_storage";
	String encType = "euc-kr";
	int maxSize = 5 * 1024 * 1024;
	
	try {
		MultipartRequest multi = null;
		multi = new MultipartRequest(request,
				saveFolder, maxSize, encType,
				new DefaultFileRenamePolicy());
		Enumeration params = multi.getParameterNames();
		
		while (params.hasMoreElements()) {
			String name = (String) params.nextElement();
			String value = multi.getParameter(name);
			out.println(name + " = " + value + "<br/>");
		}
		
		Enumeration files = multi.getFileNames();
		
		while (files.hasMoreElements()) {
			String name = (String) files.nextElement();
			String filename = multi.getFilesystemName(name);
			String original = multi.getOriginalFileName(name);
			String type = multi.getContentType(name);
			File f = multi.getFile(name);

			%> 
			�Ķ���� �̸�: <%=name %><br/>
			���� ���� �̸�: <%=original %><br/>
			����� ���� �̸�: <%=filename %><br/>
			���� Ÿ��: <%=type %><br/>
			<%
			if (f != null) { 
				out.println("ũ��: " + f.length() + "����Ʈ");
				out.println("<br/>");
			}
		}
	} catch (IOException ioe) {
		System.out.println(ioe);
	} catch (Exception ex) {
		System.out.println(ex);
	}
%>