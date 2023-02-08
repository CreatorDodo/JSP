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

public class purchasedDAO {

	private static PreparedStatement pstmt;
	private static String sql;
	private static ResultSet rs;
	purchasedDTO purdto;
	private static Connection conn;
	
	public static boolean insert(String pid, String id, String name, String pquantity, String email, String address) throws SQLException, NamingException {
			
			try {
				sql = " INSERT INTO purchased (pid, id, name, pquantity, email, address) "
						+ " VALUES(?, ?, ?, ?, ?, ?) ";
	
				conn = ConnectionPool.get();
				
				pstmt = conn.prepareStatement(sql);
	
				pstmt.setString(1, pid);
				pstmt.setString(2, id);
				pstmt.setString(3, name);
				pstmt.setString(4, pquantity);
				pstmt.setString(5, email);
				pstmt.setString(6, address);
	
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
		
	public static ArrayList<purchasedDTO> getAllList() throws SQLException, NamingException{
			
		ArrayList<purchasedDTO> purchaseds = new ArrayList<purchasedDTO>();
		
		try {
			sql = " SELECT * FROM purchased ORDER BY purno DESC ";
	
			conn = ConnectionPool.get();
			
			pstmt = conn.prepareStatement(sql);
	
			rs = pstmt.executeQuery();
			
			
			
			while(rs.next()) {		
				purchaseds.add(new purchasedDTO(rs.getString(1),
									rs.getString(2),
									rs.getString(3),
									rs.getString(4),
									rs.getString(5),
									rs.getString(6),
									rs.getString(7)));
			}
	
				return purchaseds;
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if(pstmt != null)
			pstmt.close();
			if(conn != null)
			conn.close();
		}
	
		return purchaseds;
	
		}
	
	public static purchasedDTO getOneList(String purno) throws SQLException, NamingException{
		
		purchasedDTO purchased = new purchasedDTO();
		
		try {
			sql = " SELECT * FROM purchased where purno=? ";
	
			conn = ConnectionPool.get();
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, purno);
	
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				purchased.setPurno((rs.getString("purno")));
				purchased.setPid((rs.getString("pid")));
				purchased.setId((rs.getString("id")));
				purchased.setName((rs.getString("name")));
				purchased.setPquantity((rs.getString("pquantity")));
				purchased.setEmail((rs.getString("email")));
				purchased.setAddress((rs.getString("address")));
			}
			
			return purchased;
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if(pstmt != null)
			pstmt.close();
			if(conn != null)
			conn.close();
		}
	
		return purchased;
	
		}
	
	public static boolean update(purchasedDTO purdto) throws NamingException, SQLException {
		
		try {
			
			sql = "UPDATE purchased SET pquantity=?, address=? "
					+ " WHERE purno=? ";

			conn = ConnectionPool.get();
			
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, purdto.getPquantity());
			pstmt.setString(2, purdto.getAddress());
			pstmt.setString(3, purdto.getPurno());

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
	
	public static boolean delete(String purno) throws NamingException, SQLException {
	
	try {
		
		sql = "DELETE purchased where purno=? ";

		conn = ConnectionPool.get();
		
		pstmt = conn.prepareStatement(sql);

		pstmt.setString(1, purno);

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

}
