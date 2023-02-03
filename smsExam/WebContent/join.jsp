<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<%@ include file="/header.jsp"%>

<div class="alert alert-secondary">
<div class="container">
<h1 class="display-3">회원가입</h1>
<!-- 	// 아이디 이름 비번 전화번호 -->
<!-- 	// 회원 가입 폼을 만들어 가입 성공 후 가입 축하 메시지를 폰으로 발송하세요. -->
<!-- 	// 홍길동 (본인이름) 회원님. 홈페이지 가입을 환영합니다. -->
</div>
</div>

<div class="container">
<form action="joinSmsCheck.jsp">
<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">아이디</label>
  <input type="text" class="form-control" name="id" id="exampleFormControlInput1">
</div>
<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">이름</label>
  <input type="text" class="form-control" name="name" id="exampleFormControlInput1">
</div>
<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">비번</label>
  <input type="text" class="form-control" name="pass" id="exampleFormControlInput1">
</div>
<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">전화번호</label>
  <input type="text" class="form-control" name="rphone" id="exampleFormControlInput1">
</div>

<input type="submit" class="btn btn-primary" value="등록">
<input type="reset" class="btn btn-warning" value="취소">
</form>
</div>

<%@ include file="/footer.jsp"%>
</body>
</html>
