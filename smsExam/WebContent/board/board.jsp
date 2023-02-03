<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<%@ include file="/header.jsp"%>

<div class="alert alert-secondary">
<div class="container">
<h1 class="display-3">게시판</h1>
</div>
</div>

<div class="container">
<form action="boardCheck.jsp">
<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">제목</label>
  <input type="text" class="form-control" name="subject" id="exampleFormControlInput1">
</div>
<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">내용</label>
  <textarea class="form-control" name="content" id="exampleFormControlTextarea1" rows="3"></textarea>
</div>

<input type="submit" class="btn btn-primary" value="등록">
<input type="reset" class="btn btn-warning" value="취소">
</form>
</div>

<%@ include file="/footer.jsp"%>
</body>
</html>
