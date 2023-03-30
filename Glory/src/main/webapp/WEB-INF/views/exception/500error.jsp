<%@ include file="../header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<head>
<title>500 Error Page</title>

</head>
<body class="text-center">

<div class="content-wrapper">

<section class="content-header">
<div class="container-fluid">
<div class="row mb-2">
<div class="col-sm-6">
<h1>500 Error Page</h1>
</div>
<div class="col-sm-6">
<ol class="breadcrumb float-sm-right">
<li class="breadcrumb-item"><a href="#">Home</a></li>
<li class="breadcrumb-item active">500 Error Page</li>
</ol>
</div>
</div>
</div>
</section>

<section class="content">
<div class="error-page">
<h2 class="headline text-danger">500</h2>
<div class="error-content" style="width: 120%;">
<h3><i class="fas fa-exclamation-triangle text-danger"></i>서버 내부에 오류가 발생하였습니다.</h3>
<p>
서버 내부에 오류가 발생하였습니다.<br>
<a href="/">로그인</a>화면으로 이동하거나 정확한 페이지를 입력해주세요.
</p>
<form class="search-form">
<div class="input-group">
<div class="input-group-append">
</div>
</div>

</form>
</div>
</div>

</section>

</div>

	<%@ include file="../footer.jsp"%>
</body>
</html>
