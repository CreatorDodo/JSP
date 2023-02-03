package jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import util.ConnectionPool;

public class FboardDAO {
	
	
	
	
	public static int insert(String fbtitle, String fbwriter, String fbcontent, String fbfile) throws NamingException, SQLException {
		
		//C R U D
		String sql = "INSERT INTO fboard (btitle, bwriter, bcontent, bfile) VALUES(?,?,?,?)";
		
		
		//커넥션 풀 사용
		Connection conn = ConnectionPool.get();
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, fbtitle);
		pstmt.setString(2, fbwriter);
		pstmt.setString(3, fbcontent);
		pstmt.setString(4, fbfile);
		
		int result = pstmt.executeUpdate();
		//SQL 구문 실행 성공 여부가 1과0으로 돌아온다.
		
		return result;
		
		
	}
	
	
public static ArrayList<FboardDTO> getList() throws NamingException, SQLException{
		
		String sql = "SELECT * FROM fboard";
			
			Connection conn = ConnectionPool.get();
			
			PreparedStatement pstmt = conn.prepareStatement(sql);

			ResultSet rs = pstmt.executeQuery();
			
			ArrayList<FboardDTO> boards = new ArrayList<FboardDTO>();

			while (rs.next()) {
				boards.add(new FboardDTO(rs.getString(1),
											rs.getString(2),
											rs.getString(3),
											rs.getString(4),
											rs.getString(5),
											rs.getString(6)));
			
			}
		return boards;
	}
	
	
	
	
	
	
}
