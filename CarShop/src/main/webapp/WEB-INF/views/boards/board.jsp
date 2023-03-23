<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>

<head>
	<title>글 상세보기</title>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	    <meta charset="utf-8">

</head>
<body class="container">
<!-- 글 -->
<div class="card">
  <h5 class="card-header">${board.btitle}</h5>
  <div class="card-body">
    <h5 class="card-title">${board.bcontent}</h5>
    <br><br><br>
    <div class="d-flex justify-content-end">
    <p class="btn btn-success btn-sm">조회수 [${board.bview}]</p>
    <a href="javascript:checkFunction('${board.bid}', 'blike')" style="height: 50%;" class="btn btn-primary btn-sm">좋아요 [${board.blike}]</a>
    <a href="javascript:checkFunction('${board.bid}', 'bhate')" style="height: 50%;" class="btn btn-danger btn-sm">싫어요 [${board.bhate}]</a>
    </div>
    <div class="d-flex justify-content-end badge bg-light text-dark">${board.bdate}</div>
  </div>
</div>

<!-- 댓글 -->
<div class="card">
  <div class="card-body">
	댓글 리스트
	<br><br>
<b>${cnt}개의 답변이 있습니다.</b><br>
	<c:forEach items="${replyList}" var="reply">
	
	<div class="card">
  <div class="card-header">
    ${reply.bwriter}
  </div>
  <div class="card-body">
    <blockquote class="blockquote mb-0">
      <p>${reply.bcontent}</p>
      <footer class="blockquote-footer">${reply.bdate}</footer>
    </blockquote>
  </div>
</div>
	
	
	
<br>
	
	
	</c:forEach>
	
	
	<!-- 댓글 등록 -->
	<sec:authentication property="principal" var="user"/>
<input id="boardWriter" type="hidden" value="${board.bwriter}" />
<input id="bwriter" type="hidden" value="${user.username}" />
<input id="bid" type="hidden" name="bid" value="${board.bid}" >
<textarea name="bcontent" id="bcontent" rows="5" class="form-control"></textarea>
<input type="button" class="btn btn-primary my-2" onclick="replyNewFunction()" value="댓글 등록">
	
  </div>
</div>





<div class="my-5">
</div>

</body>

<iframe name="cart" style="display: none;"></iframe>

<script type="text/javascript">

function replyNewFunction() {
	$.ajax({
		type:"POST",
		url:"/boards/replyNew",
		data:{
			boardWriter : document.getElementById('boardWriter').value,
			bid : document.getElementById('bid').value,
			bwriter : document.getElementById('bwriter').value,
			bcontent : document.getElementById('bcontent').value,
		},
		beforeSend : function(xhr)
        {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
            xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
        },
		success:function(result) {
			alert("답변 등록 성공");
		},
		error:function(request, status, error) {
			alert(request.status + " " + request.responseText);
		}
		
	})
	
	window.location.reload();
}

function checkFunction(bid, check) {
	$.ajax({
		type:"POST",
		url:"/boards/check",
		data:{
			bid : bid,
			check : check
		},
		beforeSend : function(xhr)
        {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
            xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
        },
		success:function(result) {
			window.location.reload();
		},
		error:function(request, status, error) {
			alert(request.status + " " + request.responseText);
		}
		
	})
	

}

</script>




</html>
