<%@page import="jdbc.*"%>
<%@page import="java.util.*"%>
<%@page import="jdbc.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


  <head>
    <meta charset="utf-8">
    <title>회원 관리</title>

    


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
    </style>

    
  </head>

  <body class="text-center">
  <%@ include file="header.jsp"%>
  
  <br><br>
<div class="container">
<main class="form-signin w-100 m-auto">

    <h1 class="h3 mb-3 fw-normal" style="padding-top: 100px;">My MEMO</h1>
    <img class="mb-4" src="apple.png" alt="" width="100" height="100"><br>
    
 
</main>


    </div>
    <b> 회원 리스트</b>
<table class="table table-hover">
   <thead>
   <tr>
    <th scope="col">ID</th>
    <th scope="col">name</th>
    <th scope="col">Register Date</th>
    </tr>
  </thead>
   <tbody class="table-active" id="ajaxTable">
  

    
    <%
          	ArrayList<UserDTO> users = UserDAO.list();
                        
                        for(UserDTO user : users) {
          %>
    
   <tr>
    <td scope="col"><%=user.getId() %></td>
    <td scope="col"><%=user.getName() %></td>
    <td scope="col"><%=user.getTs() %></td>
    </tr>
    
    <%} %>
    </tbody>
    </table>
      <%@ include file="footer.jsp"%>
</body>

 <div class="py-5 text-center">
 </div>
</html>