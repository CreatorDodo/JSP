<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
	<title>cars</title>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	    <meta charset="utf-8">

</head>
<body class="text-center">
<%@ include file="header.jsp" %>
<div class="alert alert-dark" role="alert">
<div class="container"><h1>차량 상세보기</h1></div>
</div>


	<div class="container">
		<div class="row" align="center">
				<h3>${car.cid}</h3>
				<p>${car.cname}
				<p>${car.cprice}만원
				<p>${car.ccate}
				<p>${car.cdesc}
		</div>
	</div>




</body>
</html>
