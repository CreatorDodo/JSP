package jdbc;

import java.sql.*;
import java.util.*;

import javax.naming.NamingException;

import org.json.simple.*;

import util.ConnectionPool;

public class userDAO {
		
	public static int insert(String userName, String userAge, String userGender, String userEmail) throws NamingException, SQLException {
			
			//C R U D
			String sql = "INSERT INTO user (userName, userAge, userGender, userEmail) VALUES(?,?,?,?)";
			
			
			//커넥션 풀 사용
			Connection conn = ConnectionPool.get();
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, userName);
			pstmt.setString(2, userAge);
			pstmt.setString(3, userGender);
			pstmt.setString(4, userEmail);
			
			int result = pstmt.executeUpdate();
			
			conn.close();
			
			return result;
			
			
		}
		
	public static ArrayList<user> getList(){
		
		String sql = "SELECT * FROM user";
		
		ArrayList<user> users = new ArrayList<user>();
		
//		기존의 유저 데이터를 객체로 추출하여 배열로 만든 방법
		try {
			

		
			Connection conn = ConnectionPool.get();
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
	
			ResultSet rs = pstmt.executeQuery();
	
			while (rs.next()) {
				users.add(new user(rs.getString(1),
											rs.getString(2),
											rs.getString(3),
											rs.getString(4)));
			
			}
			
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return users;
	}
	
	public static ArrayList<user> search(String userName){
		//비슷한 것을 모두 찾기 sql
		String sql = "SELECT * FROM user WHERE userName LIKE ? ";
			
		
		ArrayList<user> users = new ArrayList<user>();
		
		try {
		
			Connection conn = ConnectionPool.get();
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
	
			pstmt.setString(1, "%" + userName + "%");
			
			ResultSet rs = pstmt.executeQuery();
	
			while (rs.next()) {
				users.add(new user(rs.getString(1),
											rs.getString(2),
											rs.getString(3),
											rs.getString(4)));
			
			}
				
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
			
		return users;
	}
	
	
	public static String getListJSON() throws SQLException, NamingException{
		
		String sql = "SELECT * FROM user";
		
		Connection conn = ConnectionPool.get();
		
		PreparedStatement pstmt = conn.prepareStatement(sql);

		ResultSet rs = pstmt.executeQuery();
		
		JSONArray users = new JSONArray();
		
		while (rs.next()) {
			JSONObject obj = new JSONObject();
			obj.put("userName", rs.getString("userName"));
			obj.put("userAge", rs.getString("userAge"));
			obj.put("userGender", rs.getString("userGender"));
			obj.put("userEmail", rs.getString("userEmail"));
			users.add(obj);
		}
		
		
		
		
		

		
		return users.toJSONString();
	}
	
	public static int register(user users) throws NamingException, SQLException {
		
		//C R U D
		String sql = "INSERT INTO user (userName, userAge, userGender, userEmail) VALUES(?,?,?,?)";
		
		
		//커넥션 풀 사용
		Connection conn = ConnectionPool.get();
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, users.getUserName());
		pstmt.setString(2, users.getUserAge());
		pstmt.setString(3, users.getUserGender());
		pstmt.setString(4, users.getUserEmail());
		
		int result = pstmt.executeUpdate();
		
		conn.close();
		
		return result;
		
		
	}
	
}
