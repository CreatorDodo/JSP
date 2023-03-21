<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<head>
	<title>게시판 등록</title>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	    <meta charset="utf-8">

</head>
<body class="text-center">
<div class="alert alert-dark" role="alert">
<div class="container"><h1>게시판 등록</h1>

			<form:form modelAttribute="NewBoard" action="./addBoard?${_csrf.parameterName}=${_csrf.token}" class="form-horizontal" enctype="multipart/form-data">
				<fieldset>
				<!-- Spring Security 에서 username 불러오기 -->
				<sec:authentication property="principal" var="user"/>
					<form:input path="bwriter" type="hidden" value="${user.username}" class="form-control" />
					제목 :
					<form:input path="btitle" class="form-control" />
					내용 :
					<form:textarea path="bcontent" class="form-control" rows="10"/>

				<input type="submit" class="btn btn-primary" value="등록">


				</fieldset>
			</form:form>
			
		</div>
</div>

</body>
</html>