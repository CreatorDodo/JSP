<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품등록</title>
</head>
  <body class="text-center">
   
  <%@ include file="/includes/header.jsp"%>
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
      <h1 class="display-4 fst-italic" style="padding-right: 220px;">상품등록</h1>
     </div>
		    <hr class="featurette-divider">
		    	<br>
	<br>
	<br>
	<div class="container">
		<form action="productAddCheck.jsp" method="post" id="prodRegFrm"
			class="form-horizontal" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2 col-form-label-lg"> 상품코드 </label>
				<div class="col-sm-3">
					<input type="text" name="pid" id="pid" class="form-control">
				</div>
			</div>
			<br>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label-lg"> 상품이름 </label>
				<div class="col-sm-3">
					<input type="text" name="pname" id="pname" class="form-control">
				</div>
			</div>
			<br>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label-lg"> 상품가격 </label>
				<div class="col-sm-3">
					<input type="number" name="price" id="price" min="0"
						step="1000" class="form-control">
				</div>
			</div>
			<br>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label-lg"> 상품설명 </label>
				<div class="col-sm-5">
					<textarea class="form-control" rows="2" name="description" cols="50"></textarea>
				</div>
			</div>
			<br>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label-lg"> 제조사 </label>
				<div class="col-sm-3">
					<input type="text" name="maker" id="maker" class="form-control">
				</div>
			</div>
			<br>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label-lg"> 상품 분류 </label>
				<div class="col-sm-3 col-form-label-lg">
					<label><input type="radio" name="category" value="신규">
						헬스용품 </label> <label><input type="radio" name="condition" value="중고">
						요가용품 </label> <label><input type="radio" name="condition" value="재생">
						홈트용품 </label>
				</div>
			</div>
			<br>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label-lg"> 상품 이미지 </label>
				<div class="col-sm-5">
					<input type="file" name="pimage" class="form-control">
				</div>
			</div>
<br>
<br>
			<!-- 등록 취소 버튼 -->
			<div class="form-group row text-start" style="padding-left: 60px;">
				<div class="col-sm-offset-2 col-sm-10">

					<button type="button" onclick="history.back()"
						class="btn btn-secondary backBtn">
						이전으로
					</button>
					<button type="submit" class="btn btn-info">
						등록 </button>
					<br> <br>

				</div>
			</div>

		</form>
		
	
	</div>
    <hr class="featurette-divider">

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
	     <%@ include file="/includes/footer.jsp"%>
</body>
</html>