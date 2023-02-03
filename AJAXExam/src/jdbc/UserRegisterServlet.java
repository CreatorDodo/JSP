package jdbc;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UserRegisterServlet")
public class UserRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String userName = request.getParameter("userName");
        String userAge = request.getParameter("userAge");
        String userGender = request.getParameter("userGender");
        String userEmail = request.getParameter("userEmail");
        try {
			response.getWriter().write(register(userName,userAge,userGender,userEmail)+"");  //""는 문자열로 바꿔주기 위해 붙여준다.
		} catch (IOException e) {
			e.printStackTrace();
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
    }

	
	public int register(String userName, String userAge, String userGender, String userEmail) throws NamingException, SQLException {
		 user users = new user();
	        try {
	            users.setUserName(userName);
	            users.setUserAge(userAge);
	            users.setUserGender(userGender);
	            users.setUserEmail(userEmail);
	        }
	        catch(Exception e) {
	            return 0;
	        }
	        return new userDAO().register(users);
	    }
	
	
}
