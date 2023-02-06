package jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import util.ConnectionPool;

public class productDAO {

	private static PreparedStatement pstmt;
	private static String sql;
	private static ResultSet rs;
	productDTO fdto;
	private static Connection conn;
	
	public static boolean insert(String id, String content) throws SQLException, NamingException {
			
			try {
				sql = " INSERT INTO feed (id, content) "
						+ " VALUES(?, ?) ";
	
				conn = ConnectionPool.get();
				
				pstmt = conn.prepareStatement(sql);
	
				pstmt.setString(1, id);
				pstmt.setString(2, content);
	
				int result = pstmt.executeUpdate();
				if (result == 1) {
					return true;
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				if(pstmt != null)
				pstmt.close();
				if(conn != null)
				conn.close();
			}
	
			return false;
		}
		
	//전체 메모 보기
	public static ArrayList<productDTO> getAllList() throws SQLException, NamingException{
			
		ArrayList<productDTO> feeds = new ArrayList<productDTO>();
		
		try {
			sql = " SELECT * FROM feed ORDER BY ts DESC ";
	
			conn = ConnectionPool.get();
			
			pstmt = conn.prepareStatement(sql);
	
			rs = pstmt.executeQuery();
			
			
			
			while(rs.next()) {		
				feeds.add(new productDTO(rs.getString(1),
									rs.getString(2),
									rs.getString(3),
									rs.getString(4)));
			}
	
				return feeds;
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if(pstmt != null)
			pstmt.close();
			if(conn != null)
			conn.close();
		}
	
		return feeds;
	
		}
	
		
	//회원 자신의 메모만 보기
	public static ArrayList<productDTO> getOneList(String id) throws SQLException, NamingException{
		
		ArrayList<productDTO> feeds = new ArrayList<productDTO>();
		
		try {
			sql = " SELECT * FROM feed where id=? ORDER BY ts DESC ";
	
			conn = ConnectionPool.get();
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
	
			rs = pstmt.executeQuery();
			
			
			
			while(rs.next()) {		
				feeds.add(new productDTO(rs.getString(1),
									rs.getString(2),
									rs.getString(3),
									rs.getString(4)));
			}
	
				return feeds;
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if(pstmt != null)
			pstmt.close();
			if(conn != null)
			conn.close();
		}
	
		return feeds;
	
		}
	
	//AJAX로 모든 리스트 출력 매서드
	public static String getListAJAX() throws SQLException, NamingException{
		
		JSONArray feeds = new JSONArray();
		
		try {
			sql = " SELECT * FROM feed ORDER BY ts DESC ";
	
			conn = ConnectionPool.get();
			
			pstmt = conn.prepareStatement(sql);
	
			rs = pstmt.executeQuery();
			
			
			
			while(rs.next()) {		
				JSONObject obj = new JSONObject();
				obj.put("no", rs.getString(1));
				obj.put("id", rs.getString(2));
				obj.put("content", rs.getString(3));
				obj.put("ts", rs.getString(4));
				
				feeds.add(obj);
			}
	
				return feeds.toJSONString();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if(pstmt != null)
			pstmt.close();
			if(conn != null)
			conn.close();
		}
	
		return feeds.toJSONString();
	
		}

}
