<%@page import="smtp.SendMail"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
    
<title>회원가입</title>
<%@ include file="header.jsp"%>
    <link href="sign-in.css" rel="stylesheet">
</head>
<body>

 <body class="text-center">

<main class="form-signin w-100 m-auto">
  <form action="signupCheck.jsp">
    <img class="mb-4" src="apple.png" alt="" width="72" height="57">
    <h1 class="h3 mb-3 fw-normal">회원가입</h1>

    <div class="form-floating">
      <input type="text" name="id" class="form-control" id="floatingInput" placeholder="ID">
      <label for="floatingInput">ID</label>
    </div>
    <div class="form-floating">
      <input type="password" name="password" class="form-control" id="floatingPassword" placeholder="Password">
      <label for="floatingInput">Password</label>
    </div>
    <div class="form-floating">
      <input type="text" name="email" class="form-control" id="Email" placeholder="Email">
      <label for="floatingInput">Email</label>
    </div>
    <div class="form-floating">
      <input type="text" name="name" class="form-control" id="floatingPassword" placeholder="Name">
      <label for="floatingInput">Name</label>
    </div>


    
            

    <div class="checkbox mb-3">
    </div>
    <button class="w-100 btn btn-lg btn-primary" id="check" type="submit">회원가입</button>
    <p class="mt-5 mb-3 text-muted">&copy; 2017–2022</p>
  </form>
</main>

    <%@ include file="footer.jsp"%>
    
    
    
</body>
</html>