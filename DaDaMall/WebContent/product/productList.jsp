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
  <body class="text-center bg-warning">
  <%@ include file="/includes/header.jsp"%>
  
<!--     container 화면 전체를 차지 하지 않는 고정 크기 컨테이너,
    브라우저의 크기에 반응하여 자동으로 크기가 변동된다.
  
  shadow 입체감있게 그림자 효과 추가
  
  mx-auto m > 바깥여백, x > 가로로 auto > 화면 가운데 정렬
  
  p padding 안쪽 여백
  
  w 전체 너비  -->
  
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
<main>
  <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
      <div class="carousel-item active">
<img src="../images/겨울스포츠광고.png"  width="100%" height="100%"> 
        <div class="container">
          <div class="carousel-caption text-start">
                <p><a class="btn btn-lg btn-success" href="#">할인특가!</a></p>
          </div>
        </div>
      </div>
      <div class="carousel-item">
      <img src="images/adidas.png"  width="100%" height="100%"> 
              <div class="container">
          <div class="carousel-caption text-warning">
            <h1>ADIDAS EVENT</h1>
            <p><a class="btn btn-lg btn-primary" href="#">더보기</a></p>
          </div>
        </div>
      </div>
      <div class="carousel-item">
       <img src="images/턱걸이밴드.png"  width="100%" height="100%"> 
        <div class="container">
          <div class="carousel-caption text-end">
            <h1>행사상품</h1><p><a class="btn btn-lg btn-primary" href="#">더보기</a></p>
          </div>
        </div>
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
    </div>

</main>
     <%@ include file="/includes/footer.jsp"%>
  </body>
</html>