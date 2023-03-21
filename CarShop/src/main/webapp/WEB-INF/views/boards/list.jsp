
	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>



</head>
<body>




	<div class="my-5">
		<div class="alert alert-dark">
			<div class="container">
				<h1>게시판</h1>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="d-grid gap-2 d-md-flex justify-content-md-end">
		</div>
		<div style="padding-top: 50px">
			<table class="table table-hover">
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>조회수</th>
					<th>좋아요</th>
					<th>싫어요</th>
					<th>작성일</th>
					<th></th>
				</tr>
				<form:form name="removeForm" method="put">
					<c:forEach items="${boardList}" var="board">
						<tr>
							<td>${board.bid}</td>
							<td><a href="/boards/board?id=${board.bid}">${board.btitle}</a></td>
							<td>${board.bwriter}</td>
							<td>${board.bview}</td>
							<td>${board.blike}</td>
							<td>${board.bhate}</td>
							<td>${board.bdate}</td>
<!-- 							<td> -->
<%-- 							<p><a href="javascript:removeCar('${car.cid}')" --%>
<!-- 								class="btn btn-danger btn-sm">삭제</a>  -->
<%-- 							<a href="/cars/update?cid=${car.cid}" --%>
<!-- 								class="btn btn-primary btn-sm">수정</a></td> -->
						</tr>
					</c:forEach>
				</form:form>
				<tr>
					<th></th>
					<th></th>
					<th></th>
				</tr>
			</table>

			<a href="<c:url value="/boards/addBoard" />" class="btn btn-primary">
				글쓰기</a>
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