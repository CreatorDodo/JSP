<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
	<title>board</title>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	    <meta charset="utf-8">

</head>
<body class="text-center">
<%@ include file="header.jsp" %>
<div class="alert alert-dark" role="alert">
<div class="container"><h1>게시판(김도영)</h1></div>
</div>


	<div class="container">
		<div class="row" align="center">

			<c:forEach items="${boardList}" var="board">
				<div class="col-md-4">
				<h3>${board.btitle}</h3>
				<p>${board.bcontent}
				<p>${board.bauthor}
				<p>${board.date}
				
				
				</div>
				
				
			</c:forEach>

		</div>
	</div>




</body>
</html>
