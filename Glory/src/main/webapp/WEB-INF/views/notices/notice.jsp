<%@ include file="../header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<head>
<title>공지사항</title>

</head>
<body class="text-center">

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<div class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1 class="m-0">공지사항</h1>
					</div>
					<!-- /.col -->
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="#">홈</a></li>
							<li class="breadcrumb-item active">공지사항</li>
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
				
				
            
            <div class="card-body">
              <div class="form-group">
                <label for="inputName">제목</label>
                 ${notice.ntitle}
              </div>
              <div class="form-group">
                <label for="inputDescription">작성자</label>
                 ${notice.nwriter}
              </div>
              <div class="form-group">
                <label for="inputStatus">유형</label>
                 ${notice.ncate}
              </div>
              <div class="form-group">
                <label for="inputStatus">날짜</label>
                 ${notice.ndate}
              </div>
              <div class="form-group">
                <label for="inputDescription">내용</label>
                 ${notice.ncontent}
              </div>

            </div>
            
            
            <div class="row" style="padding-bottom: 30px; padding-left: 30px;">
          <a onclick="history.back()" class="btn btn-secondary">이전으로</a>
        </div>
			</fieldset>
		
					
<!------------------------- form end ------------------------------->
				</div>
			</div>
		</div>
	</div>
</div>

	<%@ include file="../footer.jsp"%>
</body>
</html>