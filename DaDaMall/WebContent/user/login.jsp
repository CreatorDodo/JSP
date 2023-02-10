<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<%@ include file="/includes/header.jsp"%>

    
</head>
 <body class="text-center">

<div class="container" style="width: 30%; margin-top: 200px;">
<main class="form-signin w-100 m-auto">
  <form action="loginCheck.jsp" method="post">
    <img class="box" style="width: 100px; height: 100px;" src="../images/DA.png">
   	<br><br>
    <h1 class="h1 mb-3 fw-large">LOGIN</h1>

    <div class="form-floating">
      <input type="text" class="form-control" name="id" id="ID" placeholder="ID">
      <label for="floatingInput">ID</label>
    </div>
    <div class="form-floating">
      <input type="password" class="form-control" name="password" id="password" placeholder="Password">
      <label for="floatingPassword">Password</label>
    </div>

    <div class="checkbox mb-3">
    <br>
    </div>
    <button class="w-100 btn btn-lg btn-primary" type="submit">로그인</button>

  </form>
</main>


    </div>
  
    <br><br>
    <br><br>
    <br><br>
    <br><br>
    <br><br>
    <br><br>
    <br><br>
    <br><br>
    <br><br>
  
  
  
 <%@ include file="/includes/footer.jsp"%>
</body>
</html>