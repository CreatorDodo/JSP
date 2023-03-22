<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<head>
	<title>회원가입</title>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	    <meta charset="utf-8">

</head>
<body class="text-center">
<div class="alert alert-dark" role="alert">
<div class="container"><h1>회원가입</h1>
		
			<form:form modelAttribute="NewUser" action="./joinkakao?${_csrf.parameterName}=${_csrf.token}" class="form-horizontal" enctype="multipart/form-data">
				<fieldset>
				<legend>
				${addTitle }
				</legend>
					ID : <form:input path="username" class="form-control" value="${user.username}" /><span style="color: red;">카카오 로그인을 이용하시려면 ID를 카카오 이메일 주소로 입력하세요.</span><br>
					password : <form:input path="password" type="password" class="form-control" />
					name : <form:input path="uname" class="form-control" />
					email : <form:input path="uemail" class="form-control" />
					
				<input type="submit" class="btn btn-primary" value="회원가입">


				</fieldset>
			</form:form>






		</div>
</div>







</body>
</html>