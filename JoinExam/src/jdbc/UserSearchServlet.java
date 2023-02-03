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


@WebServlet("/UserSearchServlet")
public class UserSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void doPost(HttpServletRequest request, HttpServletResponse response){
		
		try {
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			String userName = request.getParameter("userName");
				response.getWriter().write(getJSON(userName));
			
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	
	public String getJSON(String userName) {
		if (userName == null) userName = "";
		
		StringBuffer result = new StringBuffer("");
		
		result.append("{\"result\":[");
		userDAO users = new userDAO();
		ArrayList<user> userList = users.search(userName);
		//조회해온 결과 값을 JSON으로 변경, 추후 쉽게 만들어주는 라이브러리 이용 예정
		
		for (int i = 0; i < userList.size(); i++) {
			result.append("[{\"value\": \"" + userList.get(i).getUserName() + "\"},");
			result.append("{\"value\": \"" + userList.get(i).getUserAge() + "\"},");
			result.append("{\"value\": \"" + userList.get(i).getUserGender() + "\"},");
			result.append("{\"value\": \"" + userList.get(i).getUserEmail() + "\"}],");
		}
		
		result.append("]}");
		return result.toString();
	}
	
	
}
