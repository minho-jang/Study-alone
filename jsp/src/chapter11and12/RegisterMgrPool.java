package chapter11and12;

import java.util.*;
import java.sql.*;

public class RegisterMgrPool {
	
	private DBConnectionMgr pool = null;
	
	public RegisterMgrPool() {
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
			String strQuery = "select * from tblRegister";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(strQuery);
			while (rs.next()) {
				RegisterBean regBean = new RegisterBean();
				regBean.setId(rs.getString("id"));
				regBean.setPwd(rs.getString("pwd"));
				regBean.setName(rs.getString("name"));
				regBean.setEmail(rs.getString("email"));
				regBean.setPhone(rs.getString("phone"));
				regBean.setAddress(rs.getString("address"));
				vList.add(regBean);
			}
			
		} catch (Exception ex) {
			System.out.println("Exception: " + ex);
			
		} finally {
			pool.freeConnection(conn, stmt, rs);
		}
		
		return vList;
	}
	
	public boolean loginRegister(String id, String pwd) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean loginCon = false;
		
		try {
			con = pool.getConnection();
			String query = "select count(*) from tblRegister where id = ? and pwd = ?";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			
			if (rs.next() && rs.getInt(1) > 0) 
				loginCon = true;

		} catch (Exception ex) {
			System.out.println("Exception: " + ex);
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		
		return loginCon;
	}
}
