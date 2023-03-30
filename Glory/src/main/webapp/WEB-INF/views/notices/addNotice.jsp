<%@ include file="../header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<head>
<title>공지사항 등록</title>

</head>
<body class="text-center">

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<div class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1 class="m-0">공지사항 등록</h1>
					</div>
					<!-- /.col -->
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="#">홈</a></li>
							<li class="breadcrumb-item active">공지사항 등록</li>
						</ol>
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container-fluid -->
		</div>
		<!-- /.content-header -->



		<!-- Main content -->
		<div class="content">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">

						<!------------------------- form ------------------------------->
						<fieldset>
							<form:form modelAttribute="NewNotice"
								action="./addNotice?${_csrf.parameterName}=${_csrf.token}"
								class="form-horizontal" method="post">

								<form:input path="nwriter" type="hidden" value="admin"
									class="form-control" />
								<div class="card-body">
									<div class="form-group">
										<label for="inputName">제목</label>
										<form:input path="ntitle" class="form-control" />
									</div>
									<div class="form-group">
										<label for="inputDescription">내용</label>
										<form:textarea path="ncontent" id="summernote" class="form-control" rows="10" />
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

								<div class="row"
									style="padding-bottom: 30px; padding-left: 30px;">
									<a href="#" class="btn btn-secondary">취소</a> <input
										style="margin-left: 10px;" type="submit" value="등록"
										class="btn btn-success float-right">
								</div>
							</form:form>
						</fieldset>


						<!------------------------- form end ------------------------------->
					</div>
				</div>
			</div>
		</div>
	</div>


	<%@ include file="../footer.jsp"%>
</body>

     <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
   <script>
      $('#summernote').summernote({
        placeholder: 'Hello stand alone ui',
        tabsize: 5,
        height: 300,
        toolbar: [
          ['style', ['style']],
          ['font', ['bold', 'underline', 'clear']],
          ['color', ['color']],
          ['para', ['ul', 'ol', 'paragraph']],
          ['table', ['table']],
          ['insert', ['link', 'picture', 'video']],
          ['view', ['fullscreen', 'codeview', 'help']]
        ]
      });
    </script>
</html>