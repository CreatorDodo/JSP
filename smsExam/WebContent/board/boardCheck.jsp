<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Base64.Encoder"%>
<%@page import="java.util.Base64.Decoder"%>
<%@page import="java.beans.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" import="java.util.*, java.security.*, java.io.*, java.net.*" %>


<%

String subject = request.getParameter("subject");
String content = request.getParameter("content");


// 	int result = boardDAO.insert(subject, content);

	int result = 1; //DB에 잘 저장이 되었다고 가정...
	
	//msg, rphone
	String rphone = "010-8779-5395"; // 고객 DB에서 글쓴이의 폰 번호를 조회해 온 것으로 가정
	
	if(result == 1) {
		//문자 메세지 전송하고 모달로 출력하고 메인으로 리다이렉트
	   response.sendRedirect("boardSmsCheck.jsp?rphone=" + rphone + "&msg=" + URLEncoder.encode(subject));
	} else {
		// 글 등록이 실패 하였습니다. 다시 작성하세요. 모달로 출력하고 작성 페이지로 리다이렉트
		%>	<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content-xl" style=" background-color: yellow;">
	      <div class="modal-header">
	        <h1 class="modal-title xl-5" id="exampleModalLabel" style=" background-color: yellow; color: gray; ">메시지</h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	      <% String rphone1 = request.getParameter("rphone"); %>
	      글 등록이 실패 하였습니다. 다시 작성하세요.    
	      
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
		
	<%	response.sendRedirect("board.jsp");
	

	
	}












%>