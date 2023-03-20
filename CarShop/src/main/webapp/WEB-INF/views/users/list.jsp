
	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
<script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>



</head>
<body>




	<div class="my-5">
		<div class="alert alert-dark">
			<div class="container">
				<h1>회원목록</h1>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="d-grid gap-2 d-md-flex justify-content-md-end">
		</div>
		<div style="padding-top: 50px">
			<table class="table table-hover">
				<tr>
					<th>No.</th>
					<th>아이디</th>
					<th style="width: 200px;">권한</th>
					<th>상태</th>
					<th>이메일</th>
					<th>이름</th>
					<th>관리</th>
				</tr>
				<form:form name="removeForm" method="put">
					<c:forEach items="${userList}" var="user">
						<tr>
							<td >${user.uno}</td>
							<td>${user.username}</td>
							<td>
							<select onchange="updateAuth('${user.username}', this)" class="form-select form-select" aria-label=".form-select-sm example">
							  <option selected>${user.authority}</option>
							  <option value="ROLE_USER">ROLE_USER</option>
							  <option value="ROLE_MANAGER">ROLE_MANAGER</option>
							  <option value="ROLE_ADMIN">ROLE_ADMIN</option>
							</select>
							</td>
							
							<td>
							<select onchange="updateEnabled('${user.username}', this)" class="form-select form-select" aria-label=".form-select-sm example">
							  <option selected>${user.enabled}</option>
							  <option value="1">1</option>
							  <option value="0">0</option>
							</select>
							
							</td>
							<td>${user.uemail}</td>
							<td>${user.uname}</td>
							<td>
							<p><a href="javascript:removeUser('${user.username}')"
								class="btn btn-danger btn-sm">삭제</a> 
							<a href="/users/update?uno=${user.uno}"
								class="btn btn-primary btn-sm">수정</a></td>
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


	function updateAuth(username, event) {
		$.ajax({
			type:"POST",
			url:"/users/list",
			data:{username: username,
				  authority : event.value	
			},
			beforeSend : function(xhr)
	        {
	            xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
	        },
			success:function(result) {
				window.location.reload();
			},
			error:function(request, status, error) {
				alert(request.status + " " + request.responseText);
			}
			
		})

	}
	
	function updateEnabled(username, event) {
		$.ajax({
			type:"POST",
			url:"/users/updateEnabled",
			data:{username: username,
				  enabled : event.value	
			},
			beforeSend : function(xhr)
	        {
	            xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
	        },
			success:function(result) {
				window.location.reload();
// 				window.location.assign('/users/list');
			},
			error:function(request, status, error) {
				alert(request.status + " " + request.responseText);
			}
			
		})

	}

	function removeUser(user) {
		$.ajax({
			type:"POST",
			url:"/users/removeUser",
			data:{username: user},
			beforeSend : function(xhr)
	        {
	            xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
	        },
			success:function(result) {
				window.location.reload();
			},
			error:function(request, status, error) {
				alert(request.status + " " + request.responseText);
			}
			
		})

	}
	
	</script>
</html>