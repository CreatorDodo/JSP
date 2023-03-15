<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서목록</title>
</head>
<body>
<h1>도서목록</h1>


<form>
<p>
<input type="text" placeholder="검색" name="keyword" value="${keyword}">
<input type="submit" value="검색">
</p>
</form>


<table>
<thead>
<tr>
<th>제목</th>
<th>카테고리</th>
<th>가격</th>
</tr>
</thead>


<tbody>
<c:forEach var="row" items="${data}">
<tr>
<td><a href="/detail?bookId=${row.book_id}">${row.title}</a></td>
<td>${row.category}</td>
<td>${row.price}</td>
</tr>
</c:forEach>
</tbody>
</table>

<br><br>

<a href="/create">도서등록</a>

</body>
</html>