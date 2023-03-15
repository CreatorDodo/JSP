<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책 상세 보기 </title>
</head>
<body>
<h1> 책 상세 보기 </h1>

<p>제목 : ${data.title}</p>
<p>종류 : ${data.category}</p>
<p>가격 : ${data.price}</p>
<p>날짜 : ${data.insert_date}</p>
<br>
<br>
<p><a href="/update?bookId=${bookId}">수정</a> <a href="/list">목록</a></p>
<form action="/delete" method="POST"><input type="hidden" name="bookId" value="${bookId}"><input type="submit" value="삭제"></form>

</body>
</html>