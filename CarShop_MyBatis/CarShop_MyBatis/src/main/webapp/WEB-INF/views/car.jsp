<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>

<head>
	<title>cars</title>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	    <meta charset="utf-8">

</head>
<body class="text-center">
<div class="alert alert-dark" role="alert">
<div class="container"><h1>차량 상세보기</h1></div>
</div>


	<div class="container">
		<div class="row" align="center">
				<h3>${car.cid}</h3>
				<p>${car.cname}
				<p>${car.cprice}만원
				<p>${car.ccate}
				<p>${car.cdesc}
				
				
				<p>
				<form:form name="addForm" method="put" target="cart">
<%-- 				<a href="javascript:addToCart('/cart/add/${car.cid}')" class="btn btn-primary">제품주문 &raquo;</a> --%>
				
<!-- 				기존 방식을 AJAX로 적용 -->
				<a href="javascript:addCartFunction()" class="btn btn-primary">제품주문 &raquo;</a>
				<a href="<c:url value='/cart' />" class="btn btn-warning">장바구니 &raquo;</a>
				<a href="<c:url value='/cars' />" class="btn btn-success">제품목록 &raquo;</a>
				</form:form>
				
		</div>
	</div>




</body>

<iframe name="cart" style="display: none;"></iframe>

<script type="text/javascript">

// //구매하려는 제품을 장바구니로 보낼 때 JS를 이용하여 화면전환 없이 submit()을 실행한다.
// function addToCart(action) {
// 	document.addForm.action = action;
// 	document.addForm.submit();
// 	alert("제품이 장바구니에 추가되었습니다.");
// }

function addCartFunction() {
	$.ajax({
		type:"POST",
		url:"/cart/ajaxAdd",
		data:{cid:"${car.cid}"},
		beforeSend : function(xhr)
        {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
            xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
        },
		success:function(result) {
			alert("제품이 장바구니에 추가되었습니다.")
		},
		error:function(request, status, error) {
			alert(request.status + " " + request.responseText);
		}
		
	})
}

</script>




</html>
