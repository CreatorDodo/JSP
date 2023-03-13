<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>고객정보</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

	<style>
		.bd-placeholder-img {
			font-size: 1.125rem;
			text-anchor: middle;
			-webkit-user-select: none;
			-moz-user-select: none;
			user-select: none;
		}
		
		@media ( min-width : 768px) {
			.bd-placeholder-img-lg {
				font-size: 3.5rem;
			}
		}
		
		.b-example-divider {
			height: 3rem;
			background-color: rgba(0, 0, 0, .1);
			border: solid rgba(0, 0, 0, .15);
			border-width: 1px 0;
			box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em
				rgba(0, 0, 0, .15);
		}
		
		.b-example-vr {
			flex-shrink: 0;
			width: 1.5rem;
			height: 100vh;
		}
		
		.bi {
			vertical-align: -.125em;
			fill: currentColor;
		}
		
		.nav-scroller {
			position: relative;
			z-index: 2;
			height: 2.75rem;
			overflow-y: hidden;
		}
		
		.nav-scroller .nav {
			display: flex;
			flex-wrap: nowrap;
			padding-bottom: 1rem;
			margin-top: -1px;
			overflow-x: auto;
			text-align: center;
			white-space: nowrap;
			-webkit-overflow-scrolling: touch;
		}
	</style>


</head>
<body>
<nav class="navbar navbar-expand navbar-dark bg-dark" aria-label="Second navbar example">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">CarShop</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample02" aria-controls="navbarsExample02" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsExample02">
        <ul class="navbar-nav me-auto">
         <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="/">홈</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/cars">차량보기</a>
          </li>
                    <li class="nav-item">
            <a class="nav-link" href="/board">게시판</a>
          </li>
                  <li class="nav-item dropdown">
          <button class="btn btn-dark dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
            회원관리
          </button>
          <ul class="dropdown-menu dropdown-menu-dark">
            <li><a class="dropdown-item" href="#">로그인</a></li>
            <li><a class="dropdown-item" href="#">로그아웃</a></li>
          </ul>
        </li>
          
        </ul>
        <sec:authorize access="isAnonymous()">
        				<form action="/login" method="post">
				 <input type="submit" class="btn btn-primary" value="login">
				    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				</form>
        </sec:authorize>
        
        <sec:authorize access="isAuthenticated()">
        				<form action="/logout" method="post">
				 <input type="submit" class="btn btn-success" value="logout">
				    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				</form>
        </sec:authorize>
        
        

				
			</div>
    </div>
  </nav>
	<div class="my-30">
		<div class="alert alert-dark" role="alert">
			<div class="container">
				<h1>고객정보</h1>
			</div>
		</div>
	</div>


<div class="container">
	<form:form modelAttribute="order.customer" class="form-holizo">
		<fieldset>
		<legend>고객 세부 사항</legend>
		
		
		<div class="form-group row">
      <label class="col-sm-2 control-label" >고객 ID</label>
      <div class="col-sm-3">
         <form:input path="customerId" class="form-control" />
      </div>
   </div>
   <div class="form-group row">
      <label class="col-sm-2 control-label" >성명</label>
      <div class="col-sm-3">
         <form:input path="name" class="form-control" />
      </div>
   </div>
   <div class="form-group row">
      <label class="col-sm-2 control-label" >전화번호</label>
      <div class="col-sm-3">
         <form:input  path="phone" class="form-control" />
      </div>
   </div>
   <div class="form-group row">
      <label class="col-sm-2 control-label" >국가명</label>
      <div class="col-sm-3">
         <form:input path="address.country"  class="form-control"/>
      </div>
   </div>
   <div class="form-group row">
      <label class="col-sm-2 control-label" >우편번호</label>
      <div class="col-sm-3">
         <form:input path="address.zipCode" class="form-control" />
      </div>
   </div>
   <div class="form-group row">
      <label class="col-sm-2 control-label" >주소</label>
      <div class="col-sm-5">
         <form:input path="address.addressName" class="form-control" />
      </div>
   </div>
   <div class="form-group row">
      <label class="col-sm-2 control-label" >세부주소</label>
      <div class="col-sm-3">
       <form:input path="address.detailName"  class="form-control" />
      </div>
   </div>
   <input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey }">
		
		<div class="form-group row">
    <div class="col-sm-offset-2 col-sm-10 " >
       <input type="submit" class="btn btn-primary" value="등록" name="_eventId_customerInfo" />
       <button class="btn btn-default" name="_eventId_cancel">취소</button>
     </div>
   </div>
		
		</fieldset>
	
	
	
	
	</form:form>
</div>



<footer class="w3-center w3-black w3-padding-48 w3-xlarge" style="margin-top: 300px;">

  <a href="#" class="w3-button w3-light-grey"><i class="fa fa-arrow-up w3-margin-right"></i>To the top</a>
  <div class="w3-xlarge w3-section">
  </div>
  <img class="box" style="width: 40px; height: 40px; margin: 50px;" src="data:image/png;base64,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">
  <p style="font-family: 'Amatic SC';"> <a href="/" title="DaDaMall" class="w3-hover-text-light"> 2022 CarShop </a></p>
</footer>


</body>
</html>