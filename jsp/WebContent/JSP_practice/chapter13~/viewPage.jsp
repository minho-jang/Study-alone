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
			파라미터 이름: <%=name %><br/>
			실제 파일 이름: <%=original %><br/>
			저장된 파일 이름: <%=filename %><br/>
			파일 타입: <%=type %><br/>
			<%
			if (f != null) { 
				out.println("크기: " + f.length() + "바이트");
				out.println("<br/>");
			}
		}
	} catch (IOException ioe) {
		System.out.println(ioe);
	} catch (Exception ex) {
		System.out.println(ex);
	}
%>