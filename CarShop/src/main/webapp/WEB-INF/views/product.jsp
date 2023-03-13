
	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car</title>
<script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>



</head>
<body>




	<div class="my-5">
		<div class="alert alert-dark">
			<div class="container">
				<h1>제품목록</h1>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="d-grid gap-2 d-md-flex justify-content-md-end">
		</div>
		<div style="padding-top: 50px">
			<table class="table table-hover">
				<tr>
					<th>제품</th>
					<th>가격</th>
					<th>비고</th>
				</tr>
				<form:form name="removeForm" method="put">
					<c:forEach items="${carList}" var="car">
						<tr>
							<td><span class="cid">${car.cid}</span>-${car.cname}</td>
							<td>${car.cprice}만원</td>
							<td><a href="javascript:removeCar('${car.cid}')"
								class="btn btn-danger btn-sm">삭제</a></td>
						</tr>
					</c:forEach>
				</form:form>
				<tr>
					<th></th>
					<th></th>
					<th></th>
				</tr>
			</table>

			<a href="<c:url value="/cars" />" class="btn btn-primary">
				&laquo; 쇼핑 계속하기</a>
		</div>
		<hr>

	</div>
</body>


<script>


	function removeCar(car) {
		$.ajax({
			type:"POST",
			url:"/cars/removeProduct",
			data:{carId: car},
			beforeSend : function(xhr)
	        {
	            xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
	        },
			success:function(result) {
				alert("제품이 삭제되었습니다.")
			},
			error:function(request, status, error) {
				alert(request.status + " " + request.responseText);
			}
			
		})
		window.location.reload();
	}

	</script>
</html>