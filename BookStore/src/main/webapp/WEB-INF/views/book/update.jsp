<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 책 수정하기 </title>
</head>
<body>
<h1> 책 수정하기 </h1>

<form action="/update" method="post">
<p>제목 : <input type="text" name="title" value="${data.title }">
<p>종류 : <input type="text" name="category" value="${data.category }">
<p>가격 : <input type="text" name="price" value="${data.price }">
<input type="hidden" name="bookId" value="${bookId }">
<p><input type="submit" value="수정">

</form>


</body>
</html>