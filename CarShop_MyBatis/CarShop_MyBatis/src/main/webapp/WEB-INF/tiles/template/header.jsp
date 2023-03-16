<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<html>
<head>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	    <meta charset="utf-8">
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
<body class="text-center">
<nav class="navbar navbar-expand navbar-dark bg-dark fixed-top" aria-label="Second navbar example">
    <div class="container-fluid">
      <a class="navbar-brand" href="/">CarShop</a>
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
            <a class="nav-link" href="/cart">장바구니</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/boards/list">게시판</a>
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
					<sec:authorize access="hasRole('ROLE_ADMIN')">
						<li class="nav-item dropdown">
							<button class="btn btn-dark dropdown-toggle"
								data-bs-toggle="dropdown" aria-expanded="false">관리자메뉴</button>
							<ul class="dropdown-menu dropdown-menu-dark">
								<li><a class="dropdown-item" href="/cars/add">제품등록</a></li>
								<li><a class="dropdown-item" href="/cars/product">제품관리</a></li>
							</ul>
						</li>
					</sec:authorize>

				</ul>
        
        
        <sec:authorize access="isAnonymous()">
        				<form action="/cars/login" method="post">
				 <input type="submit" class="btn btn-primary" value="login">
				    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				</form>
        </sec:authorize>
        sec:authorize= "hasRole("ADMIN")"
        <sec:authorize access="isAuthenticated()">
        				<form action="/logout" method="post">
				 <input type="submit" class="btn btn-success" value="logout">
				    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				</form>
        </sec:authorize>
        
        

				
			</div>
    </div>
  </nav>