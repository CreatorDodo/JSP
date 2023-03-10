<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
	<title>cars</title>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	    <meta charset="utf-8">

</head>
<body class="text-center">
<div class="alert alert-dark" role="alert">
<div class="container"><h1>차량 보기(김도영)</h1></div>
</div>


	<div class="container">
		<div class="row" align="center">

			<c:forEach items="${carList}" var="car">
				<div class="col-md-4">
				
				
				
<%-- 				<img src='<c:url value="/resources/images/${car.getCarimage().getOriginalFilename()}"/>'/> --%>
				<img src='<c:url value="/images/${car.getCarimage().getOriginalFilename()}"/>'/>
				<h3>${car.cid}</h3>
				<p>${car.cname}
				<p>${car.cprice}만원
				<p><a href="/cars/car?id=${car.cid }" class="btn btn-Secondary" role="button">상세보기</a></p>
			<%-- <a href='<c:url value="/car?id=${car.cid }"/>' class="btn btn-Secondary" role="button"> --%>
				
				</div>
				
				
			</c:forEach>

		</div>
	</div>




</body>
</html>
