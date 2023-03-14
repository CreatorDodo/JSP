<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<head>
	<title>자동차 수정</title>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	    <meta charset="utf-8">

</head>
<body class="text-center">
<div class="alert alert-dark" role="alert">
<div class="container"><h1>차량 수정</h1>

			<form:form modelAttribute="updateCar" action="./update?${_csrf.parameterName}=${_csrf.token}" class="form-horizontal" enctype="multipart/form-data">
				<fieldset>
				<legend>
				차량 수정
				</legend>
				<form:input path="cid" type="hidden" class="form-control" value="${updateCar.cid}" />
					자동차 ID : ${updateCar.cid}<br>
					
					자동차 이름 :
					<form:input path="cname" class="form-control" value="${updateCar.cname}"/>
					자동차 가격 :
					<form:input path="cprice" class="form-control" value="${updateCar.cprice}"/>
					자동차 카테고리 :
					<form:input path="ccate" class="form-control" value="${updateCar.ccate}"/>
					자동차 소개 :
					<textarea name="cdesc" cols="50" rows="2" class="form-control" >${updateCar.cdesc}</textarea>
					자동차 사진 :
					<form:input path="carimage" type="file" class="form-control" />

				<input type="submit" class="btn btn-primary" value="수정">


				</fieldset>
			</form:form>






		</div>
</div>







</body>
</html>