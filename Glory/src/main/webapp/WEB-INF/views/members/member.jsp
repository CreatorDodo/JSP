<%@ include file="../header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<head>
<title>회원정보</title>

</head>
<body class="text-center">

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<div class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1 class="m-0">회원정보</h1>
					</div>
					<!-- /.col -->
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="#">홈</a></li>
							<li class="breadcrumb-item active">회원정보</li>
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
                <label for="inputName">아이디</label>
                 ${member.username}
              </div>
              <div class="form-group">
                <label for="inputDescription">권한</label>
                 ${member.authority}
              </div>
              <div class="form-group">
                <label for="inputStatus">이름</label>
                 ${member.mname}
              </div>
              <div class="form-group">
                <label for="inputStatus">이메일</label>
                 ${member.memail}
              </div>
              <div class="form-group">
                <label for="inputDescription">전화번호</label>
                 ${member.mtel}
              </div>
              <div class="form-group">
                <label for="inputDescription">가입날짜</label>
                 ${member.mdate}
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