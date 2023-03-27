<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%-- <%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %> --%>

<head>
	<title>공지사항 등록</title>
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

<%@ include file="../header.jsp" %>



<div class="container"><h1>공지사항 등록</h1>

<fieldset>
			<form:form modelAttribute="NewNotice" action="./addNotice?${_csrf.parameterName}=${_csrf.token}" class="form-horizontal" method="post">
   <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-6">
          <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">General</h3>
				
			<form:input path="nwriter" type="hidden" value="admin" class="form-control" />	
				
              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                  <i class="fas fa-minus"></i>
                </button>
              </div>
            </div>
            <div class="card-body">
              <div class="form-group">
                <label for="inputName">제목</label>
               <form:input path="ntitle" class="form-control" />
              </div>
              <div class="form-group">
                <label for="inputDescription">내용</label>
                <form:textarea path="ncontent" class="form-control" rows="10"/>
              </div>
              <div class="form-group">
                <label for="inputStatus">유형</label>
                <form:select path="ncate" class="form-control custom-select">
                  <option selected disabled>선택하세요</option>
                  <option>일반</option>
                  <option>행사</option>
                  <option>기타</option>
                </form:select>
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
<%@ include file="../footer.jsp" %>

</body>
</html>