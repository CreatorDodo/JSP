<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>main</title>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	    <meta charset="utf-8">

</head>
<body class="text-center">
<!-- <div class="alert alert-dark" role="alert"> -->
<!--   <h1>로그인</h1> -->
<!-- </div> -->

<div class="container" style="width: 30%; padding-top: 200px;">
<main class="form-signin w-100 m-auto">
  <form action="/login" method="post">
    <img class="mb-4" src="data:image/png;base64,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" alt="" width="72" height="57">
    <h1 class="h3 mb-3 fw-normal">로그인</h1>

    <div class="form-floating">
      <input type="text" class="form-control" id="username" name="username" placeholder="ID">
      <label for="floatingInput">ID</label>
    </div>
    <div class="form-floating">
      <input type="password" class="form-control" id="password" name="password" placeholder="Password">
      <label for="floatingPassword">Password</label>
    </div>

    <div class="checkbox mb-3">
      <label>
        <input type="checkbox" value="remember-me"> Remember me
      </label>
    </div>
    <button class="w-100 btn btn-lg btn-primary" type="submit">로그인</button>
    
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <p class="mt-5 mb-3 text-muted">&copy; 2017–2022</p>
 
  </form>
</main>
</div>







</body>
</html>
