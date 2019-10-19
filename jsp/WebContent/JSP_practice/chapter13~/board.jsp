<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.*, practice.*"%>
<jsp:useBean id="regMgr" class="practice.DbMgrForBoard" scope="page" />

<script>
	function movePage(forName) {
		forName.action = "contentView.jsp";
		forName.submit();
	}
</script>

<!DOCTYPE html>
<html>
<body>
	<form name="frmName1" method="post">
		<table width="65%" border="1" align="center" cellpadding="8"
			cellspacing="1" bordercolor="#660000" bgcolor="FFFF99">
			<tr bgcolor="FFCC00">
				<td width="10%" align="center">번호</td>
				<td width="75%" align="center">제목</td>
				<td width="15%" align="center">작성자</td>
			</tr>
			<%
				/* DB로부터 데이터를 읽어서 보여줌.*/
				Vector<RegisterBean> vList = regMgr.getRegisterList();
				int counter = vList.size();
				if (counter == 0) {
			%>
			<tr>
				<td colspan="3" align="center">등록된 게시물이 없습니다.</td>
			</tr>
			<%
				}
				for (int i = 0; i < vList.size(); i++) {
					RegisterBean regBean = vList.get(i);
			%>
			<tr>
				<td align="center"><%=regBean.getId()%></td>
				<td><%=regBean.getTitle()%></td>
				<td align="center"><%=regBean.getWriter()%></td>
			</tr>
			<%
				}
			%>
		</table>
	</form>
</body>
</html>