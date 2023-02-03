package jdbc;

import java.sql.*;
import java.util.*;
import javax.naming.NamingException;


import util.*;

public class BoardDAO {
	
	//테이블에 데이터를 입력하는 매서드
	public static int insert(String btitle, String bwriter, String bcontent) throws NamingException, SQLException {
		
		//C R U D
		String sql = "INSERT INTO board (btitle, bwriter, bcontent) VALUES(?,?,?)";
		
		
		//커넥션 풀 사용
		Connection conn = ConnectionPool.get();
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, btitle);
		pstmt.setString(2, bwriter);
		pstmt.setString(3, bcontent);
		
		int result = pstmt.executeUpdate();
		//SQL 구문 실행 성공 여부가 1과0으로 돌아온다.
		
		return result;
		
		
	}
	
	
	public static ArrayList<BoardDTO> getList() throws NamingException, SQLException{
		
		String sql = "SELECT * FROM board";
			
			Connection conn = ConnectionPool.get();
			
			PreparedStatement pstmt = conn.prepareStatement(sql);

			ResultSet rs = pstmt.executeQuery();
			
			ArrayList<BoardDTO> boards = new ArrayList<BoardDTO>();

			while (rs.next()) {
				boards.add(new BoardDTO(rs.getString(1),
											rs.getString(2),
											rs.getString(3),
											rs.getString(4),
											rs.getString(5)));
			
			}
		return boards;
	}
	
	public static BoardDTO getDetail(String bno) throws NamingException, SQLException {

		String sql = "select * FROM board WHERE bno=?";

		BoardDTO sdto = null;
		
			Connection conn = ConnectionPool.get();
			
			PreparedStatement pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, bno);

			ResultSet rs = pstmt.executeQuery();

			if (rs.next()) {
				sdto = new BoardDTO(rs.getString(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5));
				
			}
			
		return sdto;

	}
	
	
	
	
	
	
	
	
	
	
}
