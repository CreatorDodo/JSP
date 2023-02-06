package jdbc;

import java.sql.*;
import java.util.*;

import javax.naming.NamingException;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import util.ConnectionPool;

public class userDAO {
	
	private static PreparedStatement pstmt;
	private static String sql;
	private static ResultSet rs;
	productDTO fdto;
	private static Connection conn;
		
	
	//회원가입
	public static int insert(String id, String password, String name){
			
			//C R U D
			String sql = "INSERT INTO user (id, password, name) VALUES(?,?,?)";
			
			int result = 0;
			Connection conn = null;
			PreparedStatement pstmt = null;
			
			try {
				

			
			//커넥션 풀 사용
			conn = ConnectionPool.get();
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			pstmt.setString(2, password);
			pstmt.setString(3, name);
			
			result = pstmt.executeUpdate();
			
			pstmt.close();
			conn.close();
			
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return result;
			
			
		}
		
	
	//회원가입시 아이디가 이미 존재하는지 여부 확인
	public static boolean exist(String id) throws SQLException{
		
		String sql = "SELECT * FROM user WHERE id=?";
		ResultSet rs = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			

		
			conn = ConnectionPool.get();
			
			pstmt = conn.prepareStatement(sql);
	
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			

			return rs.next();

			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return rs.next();
	}
	
	
	
	//회원 탈퇴
	public static int delete(String id) throws SQLException{
		
		String sql = "DELETE FROM user where id=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
		
			conn = ConnectionPool.get();
			
			pstmt = conn.prepareStatement(sql);
	
			pstmt.setString(1, id);
			
			return pstmt.executeUpdate(); //성공 1, 실패 0 을 가지고 나간다.
			


			
				
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			pstmt.close();
			conn.close();
			
		}
		return pstmt.executeUpdate();
	}
	
	
	//회원 로그인
	public static int login(String id, String password){
		
		String sql = "SELECT * FROM user WHERE id=?";
		try {
			
		int result;
		
		Connection conn = ConnectionPool.get();
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, id);
		
		ResultSet rs = pstmt.executeQuery();
		
		
		if(!rs.next()) {
			result = 1; //아이디가 존재하지 않는 경우
		}else if (!password.equals(rs.getString("password"))) { //아이디는 존재하지만 비번이 일치하지 않는 경우
			result = 2;
		}else {
			result = 0; //로그인 성공
		}
		
		return result;
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return 3;
		
//		if(!mpass.equals(rs.getString(2))) return 2; // 비번만 틀린 경우
		
	}
	
	
	//회원 목록, 꺼내기 연습용
	public static ArrayList<userDTO> list() throws SQLException{
		
		String sql = "SELECT * FROM user ORDER BY ts DESC";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		ArrayList<userDTO> users = new ArrayList<userDTO>();
		
		try {
			

		
		conn = ConnectionPool.get();
		
		pstmt = conn.prepareStatement(sql);
		
		
		ResultSet rs = pstmt.executeQuery();
		
		
		
		while(rs.next()) {
			users.add(new userDTO(rs.getString(1),
								rs.getString(2),
								rs.getString(3),
								rs.getString(4)));
		}
		
		return users;
		
		

		
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			pstmt.close();
			conn.close();
			
		}
		return users;
		

	}
	
	//AJAX로 모든 리스트 출력 매서드
		public static String getListAJAX() throws SQLException, NamingException{
			
			JSONArray users = new JSONArray();
			
			try {
				sql = " SELECT * FROM user ORDER BY ts DESC ";
		
				conn = ConnectionPool.get();
				
				pstmt = conn.prepareStatement(sql);
		
				rs = pstmt.executeQuery();
				
				
				
				while(rs.next()) {		
					JSONObject obj = new JSONObject();
					obj.put("id", rs.getString(1));
					obj.put("password", rs.getString(2));
					obj.put("name", rs.getString(3));
					obj.put("ts", rs.getString(4));
					
					users.add(obj);
				}
		
					return users.toJSONString();
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				if(pstmt != null)
				pstmt.close();
				if(conn != null)
				conn.close();
			}
		
			return users.toJSONString();
		
			}
	
}