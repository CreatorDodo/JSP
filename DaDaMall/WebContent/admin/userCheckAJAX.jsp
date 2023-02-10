<%@page import="java.util.*"%>
<%@page import="jdbc.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
ArrayList<userDTO> users = userDAO.getAllList();
ArrayList<userDTO> temps = userDAO.getAlltemp();


for(userDTO user : users) {%>
 <tr><td> <%=user.getId() %> </td>
<td> <%=user.getName() %> </td>
<td> <%=user.getTs() %> </td>
<% if(user.getId().equals("admin")){ %>
<td> 관리자 </td>
<%}else{%>
<td> 정회원 </td>
<%} %>
<td></td></tr>
<%}%>

__TEMP__

<%for(userDTO temp : temps) {%>
 <tr><td id="tempId"> <%=temp.getId() %> </td>
<td> <%=temp.getName() %> </td>
<td> <%=temp.getTs() %> </td>
<td> <span class="badge bg-primary regBtn" style="cursor : pointer;">승인</span> <span class="badge bg-danger delBtn" style="cursor : pointer;">거부</span></td>
<td></td></tr>
<%} %>


