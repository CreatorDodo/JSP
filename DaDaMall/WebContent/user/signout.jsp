<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
</head>
 <body>
 <%@ include file="../includes/header.jsp"%>
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
    <div class="col-md-6 px-0">
      <h1 class="display-4 fst-italic" style="padding-left: 100px;">회원탈퇴</h1>
     </div>
		    <hr class="featurette-divider">
		    	<br>
	<br>
	<br>
<div class="container">
		<form action="signoutCheck.jsp" method="post" id="delForm">
			<h3>탈퇴 안내</h3>
			<br>
			<h5 class="text-danger">※회원을 탈퇴하실 경우 사용하고 계신 아이디는 재사용 및 복구가
				불가능합니다!</h5>
			<br> <br>

			<h5>※탈퇴 후 회원정보 및 서비스 이용기록은 모두 삭제됩니다.</h5>
			<br>
			<table class="table">
				<tbody>
					<tr>
						<th scope="row">결제기록</th>
						<td>장바구니, 결제기록 및 구매목록 삭제</td>
					</tr>
					<tr>
						<th scope="row">설문조사</th>
						<td>설문조사 기록 및 게시물 삭제</td>
					</tr>
					<tr>
						<th scope="row">포스트</th>
						<td>포스트 기록 및 게시물 삭제</td>
					</tr>
				</tbody>

			</table>
			<br> <br>
			<h6>탈퇴아이디 확인</h6>
			<table class="table" style="width: 300px;">
				<thead>
					<tr>
						<th scope="col">아이디</th>
						<td scope="col"><input type="text" name="id" id="id"
						class="form-control" required></td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row" style="width: 30%">비밀번호</th>
						<td><input type="password" name="password" id="password"
						class="form-control" required></td>
					</tr>
				</tbody>
			</table>
			<br> <br>



			<!-- 등록 취소 버튼 -->
			<div class="text-right">
			<input type="button" value="이전으로"
					onclick="history.back()" class="btn btn-secondary">
				<input type="button" value="탈퇴하기"
					class="btn btn-danger removeBtn">
					


			</div>


		</form>
	</div>
<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h1 class="modal-title fs-5" id="exampleModalLabel">DaDaMall</h1>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		   정말 탈퇴하시겠습니까?
		      </div>
		      <div class="modal-footer">
		     <button type="button" class="btn btn-secondary" onclick="$('#delForm').submit()" data-bs-dismiss="modal">확인</button>		      </div>
		    </div>
		  </div>
		</div>

		<script>
			$(function() {
				
			});
		</script>

	<script>
	$('.removeBtn').click(function() {
		$("#exampleModal2").modal("show");
	});
	</script>


    <hr class="featurette-divider">

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	
	     <%@ include file="../includes/footer.jsp"%>
</body>
</body>
</html>