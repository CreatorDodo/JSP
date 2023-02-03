package jdbc6steps;

import java.sql.*;

public class dbconnclose {

	// DB 연결 공통부분 매서드
	public static Connection getConnection() {
		// Step 2 load JDBC Driver

		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException err) {
			System.out.print("JDBC Driver loading error<br>" + err.getMessage());
		}
		// out.print("JDBC Driver loading success<br>");

		// Step 3 create Connection Object

		Connection conn = null;

		try {
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306", "root", "0000");
		} catch (SQLException err) {
			System.out.print("Connection Object error<br>" + err.getMessage());
		}
		
		return conn;
	}

	// DB 해제 공통부분 매서드
	public static void closeConnection(PreparedStatement pstmt, Connection conn) {

		//Step 6 Close Connection
		try {
			pstmt.close();
			conn.close();
		} catch (SQLException err) {
			System.out.println("Error " + err.getMessage());
		}
	}
}
