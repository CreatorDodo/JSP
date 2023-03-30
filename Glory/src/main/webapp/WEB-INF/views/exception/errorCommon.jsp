<%@ include file="../header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<head>
<title>Error Page</title>

</head>
<body class="text-center">

<div class="content-wrapper">

<section class="content-header">
<div class="container-fluid">
<div class="row mb-2">
<div class="col-sm-6">
<h1>Error Page</h1>
</div>
<div class="col-sm-6">
<ol class="breadcrumb float-sm-right">
<li class="breadcrumb-item"><a href="#">Home</a></li>
<li class="breadcrumb-item active">Error Page</li>
</ol>
</div>
</div>
</div>
</section>

<section class="content">
<div class="error-page">
<h2 class="headline text-danger">???</h2>
<div class="error-content" style="width: 120%;">
<h3><i class="fas fa-exclamation-triangle text-danger"></i> 알 수 없는 에러가 발생했습니다.</h3>
<p>
알 수 없는 에러가 발생했습니다.<br>
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
