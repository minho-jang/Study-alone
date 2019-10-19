<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="regMgr" class="chapter11and12.RegisterMgrPool" />
<%
	String id = "";
	String pwd = "";
	if (request.getParameter("id") != null)
		id = request.getParameter("id");
	if (request.getParameter("pwd") != null)
		pwd = request.getParameter("pwd");
	
	if (regMgr.loginRegister(id, pwd)) {
		Cookie cookie = new Cookie("idKey", id);
		response.addCookie(cookie);
		%>
		<script>
			alert("로그인 되었습니다.");
			location.href = "cookieLoginOK.jsp";
		</script>
		<%
	} else {
		%>
		<script>
			alert("로그인 되지 않았습니다.");
			location.href = "cookieLogin.jsp";
		</script>
		<%
	}
%>