package practice;

import java.util.*;
import java.sql.*;
import chapter11and12.DBConnectionMgr;

public class DbMgrForBoard {
	
	private DBConnectionMgr pool = null;
	
	public DbMgrForBoard() {
		try {
			pool = DBConnectionMgr.getInstance();
		} catch (Exception e) {
			System.out.println("Error: Connection 가져오기 실패");
		}
	}
	
	public Vector<RegisterBean> getRegisterList() {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		Vector<RegisterBean> vList = new Vector<>();
		
		try {
			conn = pool.getConnection();
			System.out.println("DB 연결 성공...");
			String strQuery = "select * from boardInfo";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(strQuery);
			while (rs.next()) {
				RegisterBean regBean = new RegisterBean();
				regBean.setId(rs.getString("id"));
				regBean.setTitle(rs.getString("title"));
				regBean.setWriter(rs.getString("writer"));
				regBean.setContent(rs.getString("content"));
				vList.add(regBean);
			}
		} catch (Exception ex) {
			System.out.println("Exception: " + ex);
			
		} finally {
			pool.freeConnection(conn, stmt, rs);
		}
		
		return vList;
	}
}

