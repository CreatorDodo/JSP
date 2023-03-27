<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%-- <%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %> --%>

<head>
	<title>회원가입</title>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	    <meta charset="utf-8">

</head>
  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="/resources/admin/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="/resources/admin/dist/css/adminlte.min.css">
<body class="text-center">
<div class="container"><h1>회원가입</h1>

<fieldset>
			<form:form modelAttribute="NewMember" action="./addMember?${_csrf.parameterName}=${_csrf.token}" class="form-horizontal" method="post">
   <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-6">
          <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">General</h3>
				
              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                  <i class="fas fa-minus"></i>
                </button>
              </div>
            </div>
            <div class="card-body">
              <div class="form-group">
                <label for="inputName">아이디</label>
               <form:input path="username" class="form-control" />
              </div>
                            <div class="form-group">
                <label for="inputName">비밀번호</label>
               <form:input path="password" type="password" class="form-control" />
              </div>
                            <div class="form-group">
                <label for="inputName">이름</label>
               <form:input path="mname" class="form-control" />
              </div>
                            <div class="form-group">
                <label for="inputName">이메일</label>
               <form:input path="memail" class="form-control" />
              </div>
                            <div class="form-group">
                <label for="inputName">전화번호</label>
               <form:input path="mtel" class="form-control" />
              </div>
            </div>
            
            
            <div class="row">
        <div class="col-6">
          <a href="#" class="btn btn-secondary">취소</a>
          <input type="submit" value="등록" class="btn btn-success float-right">
        </div>
      </div>
            
            
            
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
</div>
</section>
			</form:form>
			</fieldset>
		</div>


<!-- jQuery -->
<script src="/resources/admin/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="/resources/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="/resources/admin/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<!-- <script src="/resources/admin/dist/js/demo.js"></script> -->


</body>
</html>