package util;

import java.sql.*;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class ConnectionPool {
	private static DataSource _ds = null;
	
	public static Connection get() throws NamingException, SQLException {
		if (_ds == null) {
			_ds = (DataSource) (new InitialContext()).lookup("java:comp/env/jdbc/difbfl4751");
		}
		return _ds.getConnection();
	}
}
