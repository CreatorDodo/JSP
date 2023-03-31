<%@page import="org.springframework.web.bind.annotation.ModelAttribute"%>
<%@page import="com.glory.board.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Glory</title>



<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">

<link rel="stylesheet" href="/resources/admin/plugins/fontawesome-free/css/all.min.css">

<link rel="stylesheet" href="/resources/admin/dist/css/adminlte.min.css?v=3.2.0">


<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<link rel="stylesheet"
	href="/resources/admin/plugins/fontawesome-free/css/all.min.css">
<link rel="stylesheet"
	href="/resources/admin/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet"
	href="/resources/admin/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
<link rel="stylesheet"
	href="/resources/admin/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
<link rel="stylesheet"
	href="/resources/admin/dist/css/adminlte.min.css?v=3.2.0">

<script src="https://code.jquery.com/jquery-3.6.3.min.js"
	integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
	crossorigin="anonymous"></script>

<body class="hold-transition layout-top-nav">
<div class="wrapper">

<nav class="main-header navbar navbar-expand-md navbar-light navbar-white">
<div class="container">
<a href="/resources/admin/index3.html" class="navbar-brand">
<img src="/resources/admin/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
<span class="brand-text font-weight-light">Glory</span>
</a>
<button class="navbar-toggler order-1" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
<span class="navbar-toggler-icon"></span>
</button>
<div class="collapse navbar-collapse order-3" id="navbarCollapse">

<ul class="navbar-nav">
<li class="nav-item">
<a href="/main" class="nav-link">Home</a>
</li>

					<sec:authorize access="hasRole('ROLE_ADMIN')">
					<li class="nav-item">
						<a href="/admin" class="nav-link">관리메뉴</a>
					</li>
						<li class="nav-item dropdown">
							<button class="btn btn-dark dropdown-toggle"
								data-bs-toggle="dropdown" aria-expanded="false">관리자메뉴</button>
							<ul class="dropdown-menu dropdown-menu-dark">
							<li><a class="dropdown-item" href="/users/list">회원목록</a></li>
								<li><a class="dropdown-item" href="/cars/add">제품등록</a></li>
								<li><a class="dropdown-item" href="/cars/product">제품관리</a></li>
							</ul>
						</li>
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modal-primary" style="margin-left: 10px;">
						공지등록
					</button>
					</sec:authorize>


</ul>

<form class="form-inline ml-0 ml-md-3">
<div class="input-group input-group-sm">
<input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
<div class="input-group-append">
<button class="btn btn-navbar" type="submit">
<i class="fas fa-search"></i>
</button>
</div>
</div>
</form>
</div>

<ul class="order-1 order-md-3 navbar-nav navbar-no-expand ml-auto">

<li class="nav-item dropdown">
<a class="nav-link" data-toggle="dropdown" href="#">
<i class="fas fa-comments"></i>
<span class="badge badge-danger navbar-badge">3</span>
</a>
<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
<a href="#" class="dropdown-item">

<div class="media">
<img src="/resources/admin/dist/img/user1-128x128.jpg" alt="User Avatar" class="img-size-50 mr-3 img-circle">
<div class="media-body">
<h3 class="dropdown-item-title">
Brad Diesel
<span class="float-right text-sm text-danger"><i class="fas fa-star"></i></span>
</h3>
<p class="text-sm">Call me whenever you can...</p>
<p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
</div>
</div>


</a>
<div class="dropdown-divider"></div>
<a href="#" class="dropdown-item">

<div class="media">
<img src="/resources/admin/dist/img/user8-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
<div class="media-body">
<h3 class="dropdown-item-title">
John Pierce
<span class="float-right text-sm text-muted"><i class="fas fa-star"></i></span>
</h3>
<p class="text-sm">I got your message bro</p>
<p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
</div>
</div>

</a>
<div class="dropdown-divider"></div>
<a href="#" class="dropdown-item">

<div class="media">
<img src="/resources/admin/dist/img/user3-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
<div class="media-body">
<h3 class="dropdown-item-title">
Nora Silvester
<span class="float-right text-sm text-warning"><i class="fas fa-star"></i></span>
</h3>
<p class="text-sm">The subject goes here</p>
<p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
</div>
</div>

</a>
<div class="dropdown-divider"></div>
<a href="#" class="dropdown-item dropdown-footer">See All Messages</a>
</div>
</li>

<li class="nav-item dropdown">
<a class="nav-link" data-toggle="dropdown" href="#">
<i class="far fa-bell"></i>
<span class="badge badge-warning navbar-badge">15</span>
</a>
<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
<span class="dropdown-header">15 Notifications</span>
<div class="dropdown-divider"></div>
<a href="#" class="dropdown-item">
<i class="fas fa-envelope mr-2"></i> 4 new messages
<span class="float-right text-muted text-sm">3 mins</span>
</a>
<div class="dropdown-divider"></div>
<a href="#" class="dropdown-item">
<i class="fas fa-users mr-2"></i> 8 friend requests
<span class="float-right text-muted text-sm">12 hours</span>
</a>
<div class="dropdown-divider"></div>
<a href="#" class="dropdown-item">
<i class="fas fa-file mr-2"></i> 3 new reports
<span class="float-right text-muted text-sm">2 days</span>
</a>
<div class="dropdown-divider"></div>
<a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
</div>
</li>
<li class="nav-item">
<a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
<i class="fas fa-th-large"></i>
</a>
</li>
</ul>
</div>
</nav>


<div class="content-wrapper">

<div class="content-header">
<div class="container">
<div class="row mb-2">
<div class="col-sm-6">
<h1 class="m-0"> Glory <small>[아파트 관리 시스템]</small></h1>
</div>
<div class="col-sm-6">
<ol class="breadcrumb float-sm-right">
<li class="breadcrumb-item"><a href="#">Home</a></li>
</ol>
</div>
</div>
</div>
</div>


<div class="content">
<div class="container">
<div class="row">


<!------------------------- Modal ------------------------------->

<div class="modal fade" id="modal-primary">
<div class="modal-dialog">
<div class="modal-content bg-light">
<div class="modal-header bg-primary">
<h4 class="modal-title">공지사항 등록</h4>
<button type="button" class="close" data-dismiss="modal" aria-label="Close">
<span aria-hidden="true">&times;</span>
</button>
</div>
<div class="modal-body">
<div class="col-sm">

<div class="form-group">
<label>제목</label>
<input id="ntitle" class="form-control" placeholder="Title" />
</div>
<div class="form-group">
<label>내용</label>
<textarea id="ncontent" class="form-control" rows="3" placeholder="Content"></textarea>
</div>
<div class="form-group">
  <label for="inputStatus">유형</label>
  <select id="ncate" class="form-control custom-select">
    <option selected>선택하세요</option>
    <option>버그처리</option>
    <option>신규기능</option>
    <option>기타</option>
  </select>
</div>
</div>
</div>

<input id="nwriter" type="hidden" value="admin" class="form-control">	

<div class="modal-footer justify-content-between">
<button type="button" class="btn btn-outline-light btn-secondary" data-dismiss="modal">닫기</button>
<button type="button"onclick="javascript:addNotice()" class="btn btn-outline-light btn-primary">등록</button>
</div>
</div>

</div>

</div>


<!------------------------- Modal END ------------------------------->

<!------------------------- Modal2 ------------------------------->

<div class="modal fade" id="modal-success">
<div class="modal-dialog">
<div class="modal-content bg-light">
<div class="modal-header bg-success">
<h4 class="modal-title">글 수정</h4>
<button type="button" class="close" data-dismiss="modal" aria-label="Close">
<span aria-hidden="true">&times;</span>
</button>
</div>
<div class="modal-body">
<div class="col-sm">

<div class="form-group">
<label>제목</label>
<input id="btitle2" class="form-control" placeholder="Title" />
</div>
<div class="form-group">
<label>내용</label>
<textarea id="bcontent2" class="form-control" rows="3" placeholder="Content"></textarea>
</div>
<div class="form-group">
  <label for="inputStatus">유형</label>
  <select id="bcate2" class="form-control custom-select">
    <option selected>선택하세요</option>
    <option>버그처리</option>
    <option>신규기능</option>
    <option>기타</option>
  </select>
</div>
</div>
</div>

<input id="bwriter2" type="hidden" value="admin" class="form-control">	

<div class="modal-footer justify-content-between">
<button type="button" class="btn btn-outline-light btn-secondary" data-dismiss="modal">닫기</button>
<button type="button"onclick="javascript:editBoard()" class="btn btn-outline-light btn-success">수정</button>
</div>
</div>

</div>

</div>


<!------------------------- Modal2 END ------------------------------->

<!------------------------- 게시판 ------------------------------->

<div class="col-lg-6">
<div class="card">
<div class="card card-primary card-outline">
<div class="card-header">
<h5 class="card-title m-0">게시판</h5>
</div>
<div class="card-body">




<table id="example2" class="table table-bordered table-striped">
<thead>
<tr>
<th>번호</th>
<th>분류</th>
<th>제목</th>
<th>상태</th>
<th></th>
</tr>
</thead>
<tbody>
<c:forEach items="${boardList}" var="board">
<tr>
<td>${board.bid}</td>
<td>${board.bcate}</td>
<td>${board.btitle}</td>
<td>${board.bstatus}</td>
<td><a href='javascript:detailBoard("${board.bid}", "${board.btitle}", "${fn:replace(board.bcontent, '"', '\\"')}" )' class="btn-success btn-sm">상세보기</a></td>
</tr>
</c:forEach>





</tbody>
</table>










</div>
</div>
</div>
</div>

<!------------------------- 게시판 END ------------------------------->

		
<!------------------------- 게시물 상세보기 ------------------------------->
<div class="col-lg-6">

<div class="card">
<div class="card card-primary card-outline">
<div class="card-header">

<h5 class="card-title m-0">게시물 상세보기</h5>

<button type="button" class="btn btn-danger btn-sm" onclick="deleteBoard()" style="margin-left: 10px; float: right;">
	글 삭제
</button>

<button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#modal-success" style="margin-left: 10px; float: right;">
	글 수정
</button>
<input id="bid2" type="hidden" class="form-control">	

</div>
<div class="card-body">
<h3 class="card-title" id="btitle">Title</h3>
<br>
<p class="card-text" id="bcontent">Content</p>

<div class="input-group input-group-sm">
<input type="text" id="reply" class="form-control">
<input type="hidden" id="bid" class="form-control">
<span class="input-group-append">


<button type="button" onclick="javascript:addReply()" class="btn btn-primary btn-flat">댓글 등록</button>
</span>
</div>
</div>
</div>
</div>
<div class="card card-primary card-outline">
<div class="card-header">
<h5 class="card-title m-0">댓글</h5>
</div>
<div class="card-body">
<p class="card-text replies" id="replies">내용</p>
</div>
</div>
</div>

<!------------------------- 게시물 상세보기 END ------------------------------->



<!------------------------- 게시판 등록 ------------------------------->

<div class="col-lg-6">

<div class="card">
<div class="card card-primary card-outline">
<div class="card-header">

<h5 class="card-title m-0">게시판 등록</h5>
</div>
<div class="card-body">				


<div class="col-sm">

<div class="form-group">
<label>제목</label>
<input id="smalltitle" class="form-control" placeholder="Title" />
</div>
<div class="form-group">
<label>내용</label>
<textarea id="smallcontent" class="form-control" rows="3" placeholder="Content"></textarea>
</div>
<div class="form-group">
  <label for="inputStatus">유형</label>
  <select id="smallcate" class="form-control custom-select">
    <option selected>선택하세요</option>
    <option>버그처리</option>
    <option>신규기능</option>
    <option>기타</option>
  </select>
</div>
</div>
<input id="smallwriter" type="hidden" value="admin" class="form-control">	
<input style="margin-left: 10px;" type="button" onclick="javascript:addBoard()" value="등록" class="btn btn-success float-right">


</div>
</div>
</div>
</div>

<!------------------------- 게시판 등록 END ------------------------------->


</div>

</div>
</div>

</div>


<aside class="control-sidebar control-sidebar-dark">

</aside>


<footer class="main-footer">

<div class="float-right d-none d-sm-inline">
Anything you want
</div>

<strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
</footer>
</div>




<script src="/resources/admin/plugins/jquery/jquery.min.js"></script>

<script src="/resources/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

<script src="/resources/admin/dist/js/adminlte.min.js?v=3.2.0"></script>

	<script
		src="/resources/admin/plugins/datatables/jquery.dataTables.min.js"></script>
	<script
		src="/resources/admin/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
	<script
		src="/resources/admin/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
	<script
		src="/resources/admin/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
	<script
		src="/resources/admin/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
	<script
		src="/resources/admin/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
	<script src="/resources/admin/plugins/jszip/jszip.min.js"></script>
	<script src="/resources/admin/plugins/pdfmake/pdfmake.min.js"></script>
	<script src="/resources/admin/plugins/pdfmake/vfs_fonts.js"></script>
	<script
		src="/resources/admin/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
	<script
		src="/resources/admin/plugins/datatables-buttons/js/buttons.print.min.js"></script>
	<script
		src="/resources/admin/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>





	<script>
		$(function() {
			$("#example1").DataTable(
					{
						"responsive" : true,
						"lengthChange" : false,
						"autoWidth" : false,
						"buttons" : [ "copy", "csv", "excel", "pdf", "print",
								"colvis" ]
					}).buttons().container().appendTo(
					'#example1_wrapper .col-md-6:eq(0)');
			$('#example2').DataTable({
				"paging" : true,
				"lengthChange" : false,
				"searching" : false,
				"ordering" : true,
				"info" : true,
				"autoWidth" : false,
				"responsive" : true,
			});
		});
		

		function deleteBoard() {
			bid = $("#bid2").val();
			
			$.ajax({
				type:"POST",
				url:"/deleteBoard",
				data:{
					bid : bid
				},
				beforeSend : function(xhr)
		        {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다. */
		            xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
		        },
				success:function(result) {
					alert("삭제 성공")
					window.location.reload();
				},
				error:function(request,status,error) {
					alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
				}
				
			})
			

		}
		
		function editBoard() {
			bid = $("#bid2").val();
			btitle = $("#btitle2").val();
			bcontent = $("#bcontent2").val();
			bwriter = $("#bwriter2").val();
			bcate = $("#bcate2").val();
			
			$.ajax({
				type:"POST",
				url:"/editBoard",
				data:{
					bid : bid,
					btitle : btitle,
					bcontent : bcontent,
					bwriter : bwriter,
					bcate : bcate
				},
				beforeSend : function(xhr)
		        {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다. */
		            xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
		        },
				success:function(result) {
					alert("수정 성공")
					window.location.reload();
				},
				error:function(request,status,error) {
					alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
				}
				
			})
			

		}
		
		function addBoard() {
			btitle = $("#smalltitle").val();
			bcontent = $("#smallcontent").val();
			bwriter = $("#smallwriter").val();
			bcate = $("#smallcate").val();
			
			$.ajax({
				type:"POST",
				url:"/addBoard",
				data:{
					btitle : btitle,
					bcontent : bcontent,
					bwriter : bwriter,
					bcate : bcate
				},
				beforeSend : function(xhr)
		        {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다. */
		            xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
		        },
				success:function(result) {
					alert("등록 성공")
					window.location.reload();
				},
				error:function(request,status,error) {
					alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
				}
				
			})
			

		}
		
		function addNotice() {
			ntitle = $("#ntitle").val();
			ncontent = $("#ncontent").val();
			nwriter = $("#nwriter").val();
			ncate = $("#ncate").val();
			
			$.ajax({
				type:"POST",
				url:"/addNotice",
				data:{
					ntitle : ntitle,
					ncontent : ncontent,
					nwriter : nwriter,
					ncate : ncate
				},
				beforeSend : function(xhr)
		        {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다. */
		            xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
		        },
				success:function(result) {
					alert("등록 성공")
					window.location.reload();
				},
				error:function(request,status,error) {
					alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
				}
				
			})
			

		}
		
		function detailBoard(bid, btitle, bcontent) {
			document.getElementById('btitle').innerHTML = btitle;
			document.getElementById('bcontent').innerHTML = bcontent;
			document.getElementById('bid').value = bid;
			
			document.getElementById('btitle2').value = btitle;
			document.getElementById('bcontent2').innerHTML = bcontent;
			document.getElementById('bid2').value = bid;
			$.ajax({
				type:"POST",
				url:"/ajaxDetail",
				data:{
					bid : bid
				},
				/*Jackson Driver 의존성을 추가하여야 한다. */
				dataType:"JSON",
				beforeSend : function(xhr)
		        {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다. */
		            xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
		        },
				success:function(result) {
					var str = "";
					for(var i in result){
						str+='				<li class="list-group-item">'
						str+='					<div class="list-group-item list-group-item-secondary small">'
						str+='						<span>' + result[i].bcontent +  '</span>'
						str+='						<span class="small float-end">' + result[i].bwriter + '</span>'
						str+='					</div>'
						str+='					<div class="list-group-item">' + result[i].bdate + '</div>'
						str+='				</li>'
					}
					$(".replies").html(str);
					document.getElementById('replies').innerHTML=str;
				},
				error:function(request,status,error) {
					alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
				}
				
			})
			

		}
		
		function addReply() {
			reply = $("#reply").val();
			bid = $("#bid").val();
			
			$.ajax({
				type:"POST",
				url:"/addReply",
				data:{
					bid : bid,
					bwriter : "비회원",
					bcontent : reply,
				},
				beforeSend : function(xhr)
		        {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다. */
		            xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
		        },
				success:function(result) {
					alert("등록 성공")
					window.location.reload();
				},
				error:function(request,status,error) {
					alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
				}
				
			})


		}
		
	</script>

</body>

     <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
   <script>
      $('#smallcontent').summernote({
        placeholder: '게시판 등록',
        tabsize: 5,
        height: 100,
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
    
    <script>
      $('#ncontent').summernote({
        placeholder: '공지사항 등록',
        tabsize: 5,
        height: 100,
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
