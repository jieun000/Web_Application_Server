package util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBManager {

	// DB 연결
	public static Connection getConnection() {
		Connection conn = null;
		
		try {
			Context initContext = new InitialContext();
			Context envContext  = (Context)initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle");
			conn = ds.getConnection();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	// list, select 사용 후 해제 메서드
	public static void close(Connection conn, PreparedStatement pstmt, ResultSet rs) {
		try {	// DBManager.close(conn, pstmt, rs);로 호출
			if(rs != null)
				rs.close();
			if(pstmt != null)
				pstmt.close();
			if(conn != null)
				conn.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

	// insert, delete 사용 후 해제
	public static void close(Connection conn, PreparedStatement pstmt) {
		try {	// DBManager.close(conn, pstmt);로 호출
			if(pstmt != null)
				pstmt.close();
			if(conn != null)
				conn.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
}
