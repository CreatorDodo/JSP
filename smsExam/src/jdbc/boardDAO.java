package jdbc;

import java.sql.*;

import javax.naming.NamingException;

import util.ConnectionPool;

public class boardDAO {

public static int insert(String hakbun, String dept, String name, String addr) throws NamingException, SQLException {
		
		//C R U D
		String sql = "INSERT INTO mainboard VALUES(?,?,?,?)";
		
		
		//커넥션 풀 사용
		
		Connection conn = ConnectionPool.get();
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, hakbun);
		pstmt.setString(2, dept);
		pstmt.setString(3, name);
		pstmt.setString(4, addr);
		
		int result = pstmt.executeUpdate();
		//SQL 구문 실행 성공 여부가 1과0으로 돌아온다.
		
		return result;
		
		
	}
	
	
	
	
	
	
}
