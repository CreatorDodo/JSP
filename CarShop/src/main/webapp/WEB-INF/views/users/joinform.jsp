<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<head>
	<title>자동차 등록</title>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	    <meta charset="utf-8">

</head>
<body class="text-center">
<div class="alert alert-dark" role="alert">
<div class="container"><h1>차량 등록</h1>

			<form:form modelAttribute="NewUser" action="./join?${_csrf.parameterName}=${_csrf.token}" class="form-horizontal" enctype="multipart/form-data">
				<fieldset>
				<legend>
				${addTitle }
				</legend>
					username : <form:input path="username" class="form-control" />
					password : <form:input path="password" class="form-control" />

				<input type="submit" class="btn btn-primary" value="등록">


				</fieldset>
			</form:form>






		</div>
</div>







</body>
</html>