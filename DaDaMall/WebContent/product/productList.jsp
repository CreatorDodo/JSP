<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품리스트</title>
</head>
<%@ include file="../includes/header.jsp"%>
<body class="text-center" onload="InitializeStaticMenu()">


	<header class="bgimg w3-display-container w3-grayscale-min"
		style="height: 80%" id="home">
		<img src="../images/스포츠이미지.jpg" width="100%" height="90%">
		<div
			class="w3-display-bottomleft w3-center w3-padding-large w3-hide-small">
		</div>
		<div class="w3-display-middle w3-center">
			<span class="w3-text-white text-light" style="font-size: 90px;">DaDaMall</span>
		</div>
		<div class="w3-display-bottomright w3-center w3-padding-large">
		</div>
	</header>


	<div class="col-md-6 px-0">
		<h1 class="display-4 fst-italic" style="padding-right: 220px;">상품목록</h1>
	</div>
	<hr class="featurette-divider">
	<div class="text-end">
		<a href="productInfo.jsp" style="margin-right: 200px;"
			class="btn btn-success">상품등록</a>
	</div>
	<br>
	<br>
	<br>


	<div class="w3-container" id="menu">







		<div class="row" align="center">


			<%
			
			ArrayList<productDTO> products = productDAO.getAllList();

			if (products == null || products.size() < 1) {%>

			<div class="container" style="width: 50%; padding-bottom: 300px;">
				<p class="alert alert-danger"
					style="text-align: center; height: 100px; padding: 40px;">등록된
					상품이 없습니다.</p>

			</div>

			<% } else {// 그렇지 않다면 

				for (productDTO pdto : products) {
			%>

			<div class="col-md-4" style="padding-bottom: 100px;">

				<!-- 이미지 -->

				<img src="../upload/<%=pdto.getPimage()%>" style="width: 300px; height: 300px;"> <br>
				<br>



				<!-- 이름 -->

				<h3><%=pdto.getPname()%></h3>

				<!-- 설명 -->

				<p><%=pdto.getDescription()%></p>

				<!-- 가격 -->

				<p>
					<fmt:formatNumber value="<%=pdto.getPrice()%>" />
					원
				</p>

				<!-- 상세 정보 버튼 -->

				<p>
					<a href="productInfo.jsp?pid=<%=pdto.getPid()%>"
						class="btn btn-secondary">상세정보 &raquo;</a>
				</p>
			</div>

			<%
			} //END for
		}
%>


		</div>

	</div>





	<%
// 	sid = (String) session.getAttribute("id");
 	if( sid == null) {%>
	<!-- 	<div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true"> -->
	<!-- 	  <div class="modal-dialog"> -->
	<!-- 	    <div class="modal-content"> -->
	<!-- 	      <div class="modal-header"> -->
	<!-- 	        <h1 class="modal-title fs-5" id="exampleModalLabel">메시지</h1> -->
	<!-- 	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button> -->
	<!-- 	      </div> -->
	<!-- 	      <div class="modal-body"> -->
	<!-- 	 	회원전용메뉴입니다. -->
	<!-- 	      </div> -->
	<!-- 	      <div class="modal-footer"> -->
	<!-- 	        <button type="button" class="btn btn-secondary" onclick="location.href = 'login.jsp'" data-bs-dismiss="modal">로그인 이동</button> -->
	<!-- 	      </div> -->
	<!-- 	    </div> -->
	<!-- 	  </div> -->
	<!-- 	</div> -->

<!-- 	<script> -->
// 		$(function() {
// 			$("#exampleModal1").modal("show");
// 		});


<!-- 	</script> -->
	<%
}else {
	session.setAttribute("id", sid);
}
%>

	<%@ include file="../includes/footer.jsp"%>

</body>

</html>