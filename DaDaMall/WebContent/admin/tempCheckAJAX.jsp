<%@page import="java.util.*"%>
<%@page import="jdbc.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

String id = request.getParameter("id");
String check = request.getParameter("check");


if(check.equals("승인")){

userDTO user = userDAO.getOneTemp(id);
userDAO.insert(id, user.getPassword(), user.getName(), user.getEmail(), user.getGender());
userDAO.deleteTemp(id);

}else{

	userDAO.deleteTemp(id);
	
}




%>
