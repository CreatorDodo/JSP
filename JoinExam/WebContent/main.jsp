<%@page import="jdbc.*"%>
<%@page import="java.util.*"%>
<%@page import="jdbc.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


  <head>
    <meta charset="utf-8">
    <title>로그인</title>

    


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
  <form>
    <img class="mb-4" src="jindoge.jpg" alt="" width="100" height="100">
    <h1 class="h3 mb-3 fw-normal">LOGIN</h1>

    <div class="form-floating">
      <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
      <label for="floatingInput">Email address</label>
    </div>
    <div class="form-floating">
      <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
      <label for="floatingPassword">Password</label>
    </div>

    <div class="checkbox mb-3">
      <label>
        <input type="checkbox" value="remember-me"> Remember me
      </label>
    </div>
    <button class="w-100 btn btn-lg btn-primary" type="submit">로그인</button>
    <p class="mt-5 mb-3 text-muted">&copy; 2017–2022</p>
  </form>
</main>


    </div>
    
      	      <% String join = (String) request.getParameter("join"); %>
  
  <%if(join != null) { %>
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content-xl" style=" background-color: yellow;">
	      <div class="modal-header">
	        <h1 class="modal-title xl-5" id="exampleModalLabel" style=" background-color: yellow; color: gray; ">회원가입 성공</h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">

	      <%=join %>님. 회원가입을 환영합니다!
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-primary" data-bs-dismiss="modal">확인</button>
	      	<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
	      	
	      </div>
	    </div>
	  </div>
	</div>

	<script>
		$(function() {
			$("#exampleModal").modal("show");
		});
	</script>
  
  <% } %>
    
    
    
  </body>
  

</html>
