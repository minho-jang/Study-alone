package chapter11and12;

import java.util.*;
import java.sql.*;

public class RegisterMgr {

	private final String JDBC_DRIVER = "org.gjt.mm.mysql.Driver";
	private final String JDBC_URL = "jdbc:mysql://localhost:3306/mydb";
	private final String USER = "root";
	private final String PASS = "1234";
	
	public RegisterMgr() {
		try {
			Class.forName(JDBC_DRIVER);
		} catch (Exception e) {
			System.out.println("Error: JDBC 드라이버 로딩 실패");
		}
	}
	
	public Vector<RegisterBean> getRegisterList() {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		Vector<RegisterBean> vList = new Vector<>();
		
		try {
			conn = DriverManager.getConnection(JDBC_URL, USER, PASS);
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
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {}
			if (stmt != null)
				try {
					stmt.close();
				} catch (SQLException ex) {}
			if (conn != null)
				try {
					conn.close();
				} catch (Exception ex) {}
		}
		return vList;
	}
}
