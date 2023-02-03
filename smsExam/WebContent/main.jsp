<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp"%>
<div class="alert alert-primary">
<div class="container">
<h1 class="display-3">메인화면</h1>
</div>
</div>

<%@ include file="footer.jsp"%>
</body>


<%if(request.getParameter("check") != null) { %>
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content-xl" style=" background-color: yellow;">
	      <div class="modal-header">
	        <h1 class="modal-title xl-5" id="exampleModalLabel" style=" background-color: yellow; color: gray; ">SMS 발송성공</h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	      <% String rphone1 = request.getParameter("rphone"); %>
	     문자메시지 발송 성공하였습니다.
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-primary" data-bs-dismiss="modal">확인</button>
	      	<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
	      	
	      </div>
	    </div>
	  </div>
	</div>

	<script>
		$(function() {
			$("#exampleModal").modal("show");
		});
	</script>

<%} %>
</html>


