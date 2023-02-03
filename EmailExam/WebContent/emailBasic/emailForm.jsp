<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>emailForm</title>
</head>
<body>

	<h3>이메일 전송하기</h3>
	<form action="emailCheck.jsp" method="post">
	보내는 사람 　 : <input type="text" name="from"><br><br>
	받는 사람  　　 : <input type="text" name="to"><br><br>
	제목 　 　　 　: <input type="text" name="subject"><br><br>
	<textarea rows="10" cols="40" name="content"></textarea><hr>
	<input type="submit" value="전송하기">	
	</form>



</body>
</html>