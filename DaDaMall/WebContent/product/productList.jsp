<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*, java.security.*, java.io.*, java.net.*" %>
    <%@ page errorPage = "page_error_page.jsp" %>
<%@page import="jdbc.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품리스트</title>

</head>
  <body class="text-center">
   
  <%@ include file="/includes/header.jsp"%>
  
<!--     container 화면 전체를 차지 하지 않는 고정 크기 컨테이너,
    브라우저의 크기에 반응하여 자동으로 크기가 변동된다.
  
  shadow 입체감있게 그림자 효과 추가
  
  mx-auto m > 바깥여백, x > 가로로 auto > 화면 가운데 정렬
  
  p padding 안쪽 여백
  
  w 전체 너비  -->
  
  
  
  <header class="bgimg w3-display-container w3-grayscale-min" style="height: 80%" id="home">
 <img src="../images/스포츠이미지.jpg"  width="100%" height="90%"> 
  <div class="w3-display-bottomleft w3-center w3-padding-large w3-hide-small">
  </div>
  <div class="w3-display-middle w3-center">
    <span class="w3-text-white text-light" style="font-size:90px">DaDaMall</span>
  </div>
  <div class="w3-display-bottomright w3-center w3-padding-large">
  </div>
</header>
  <div class="w3-container" id="menu">
  <div class="w3-content" style="max-width:700px">
 
    <h5 class="w3-center w3-padding-48"><span class="w3-tag w3-wide">상품 목록</span></h5>
  </div>
  </div>
<%
	sid = (String) session.getAttribute("id");
 	if( sid == null) {%>
	<div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h1 class="modal-title fs-5" id="exampleModalLabel">메시지</h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	 	회원전용메뉴입니다.
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" onclick="location.href = 'login.jsp'" data-bs-dismiss="modal">로그인 이동</button>
	      </div>
	    </div>
	  </div>
	</div>

	<script>
		$(function() {
			$("#exampleModal1").modal("show");
		});
	</script><%
}else {
	session.setAttribute("id", sid);
}
%>

     <%@ include file="/includes/footer.jsp"%>
  </body>
</html>