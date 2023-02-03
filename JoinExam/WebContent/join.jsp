<%@page import="util.joinCheck"%>
<%@page import="jdbc.*"%>
<%@page import="java.util.*"%>
<%@page import="jdbc.userDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.104.2">
    <meta name="theme-color" content="#712cf9">
<title>JOIN</title>
</head>





    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
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
    
    

  <body class="bg-info">
    <%@ include file="header.jsp"%>
<div class="container">
    <div class="py-5 text-center">
      <img class="d-block mx-auto mb-4" src="jindoge.jpg" alt="" width="100" height="100">
      <h2>JINDOGE COIN</h2>
    </div>

      <div class="col-md-7 col-lg-8">
        <h4 class="mb-3">회원가입</h4>
          <div class="row g-3">

					<div class="col-12">
						<label for="email" class="form-label">이름</label>
						
						<div class="col-sm-2">
							<input type="text" name="registerName" id="registerName" class="form-control" required>
						</div>
					</div>

					
<div class="col-md-5">
    <label for="validationCustom03" class="form-label">이메일</label>
    <input type="hidden"class="form-control" name="email" id="registerEmail">
        
    					<div class="input-group mb-3">
  <input type="text" class="form-control" placeholder="aaa" name="email1" id="email1" aria-label="Username">
  <span class="input-group-text">@</span>
  <input type="text" class="form-control" name="email2" id="email2" placeholder="naver.com" aria-label="Server">
</div>

<span id="complete" style="color: red"></span>

     </div>
  <div class="col-md-2">
  <label for="validationCustom03" class="form-label">　</label>
    <select onchange="setEmail(this)" class="form-select" required>
							<option value="direct" selected>직접입력</option>
							<option value="gmail.com">gmail.com</option>
							<option value="naver.com">naver.com</option>
						</select>
    </div>
      <div class="col-md-2">
  <label for="validationCustom03" class="form-label">　　　　　　</label>
  
    <button type="button" class="btn btn-light" onclick="check();">본인확인</button>
    </div>

    <label for="validationCustom03" class="form-label">전화번호</label>	
<div class="col-md-2">
        <input type="hidden"class="form-control" name="phone" id="rphone">
    <select class="form-select" id="phone1" required>
							<option value="010" selected>010</option>
							<option value="012">012</option>
							<option value="02">02</option>
						</select> </div>
  <div class="col-md-2">
						<input
						type="text" name="phone2"  id="phone2" size="10" class="form-control" required>
  </div>
  <div class="col-md-2">
    <input
						type="text" name="phone3"  id="phone3" size="10" class="form-control" required>
  </div>
	  <div class="col-md-2">
  <label for="validationCustom03" class="form-label">　</label>
    </div>
    <br>
    <div class="col-md-9">
				<label class="col-sm-2">성별</label>
				<div class="col-sm-3">
					<label><input type="radio" name="registerGender" value="male">남성</label>
				<label><input  type="radio" name="registerGender" value="female">여성</label>
				</div>
			</div>
					 　
	<br>
           
					<div class="col-5">
						<label for="email" class="form-label">나이</label>
						<div class="col-sm-3">
							<input type="number" name="usernm" id="registerAge" class="form-control" required>
						</div>
					</div>



            

          <hr class="my-4">

          <button class="w-100 btn btn-primary btn-lg" onclick="registerFunction();" type="submit">Send</button>

      </div>
    </div>
</div>
  <footer class="my-5 pt-5 text-muted text-center text-small">
    <p class="mb-1">&copy; 2019–2022 JINDOGE COIN</p>
    <ul class="list-inline">
      <li class="list-inline-item"><a href="#">Privacy</a></li>
      <li class="list-inline-item"><a href="#">Terms</a></li>
      <li class="list-inline-item"><a href="#">Support</a></li>
    </ul>
  </footer>



  </body>
  
<script type="text/javascript">

	var registerRequest = new XMLHttpRequest();
	
 function	registerFunction() {

if($('#complete').text() == "이메일 인증성공") {

		var phone1 = $('#phone1').val().trim();
		var phone2 = $('#phone2').val().trim();
		var phone3 = $('#phone3').val().trim();
		$('#rphone').val(phone1 + "-" + phone2 + "-" + phone3);

		
		

	 
	 registerRequest.open("POST", "./UserRegisterServlet?userName=" + encodeURIComponent(document.getElementById("registerName").value)+
			   "&userAge="+encodeURIComponent(document.getElementById("registerAge").value)+
               "&userGender="+encodeURIComponent($('input[name=registerGender]:checked').val())+
               "&userEmail="+encodeURIComponent(document.getElementById("registerEmail").value)
				, true);
	 registerRequest.onreadystatechange = registerProcess;
	 registerRequest.send(null);
	}
	
 }

 function registerProcess(){
     if(registerRequest.readyState == 4 && registerRequest.status == 200){
         var result = registerRequest.responseText;
         if(result!=1){    //잘못되었다면
             alert('등록에 실패했습니다.');
         }
         else{
             

             var userName=document.getElementById("userName");
             var registerName=document.getElementById("registerName");
             location.href = "smsCheck.jsp?msg=" + document.getElementById("registerName").value +
			   "&rphone=010-8779-5395";
             var registerAge=document.getElementById("registerAge");
             var registerEmail=document.getElementById("registerEmail");
             userName.value ="";
             registerName.value ="";
             registerAge.value ="";
             registerEmail.value ="";


             searchFunction();

         }
     }
     
 }


	//이메일 선택 처리 함수
	function setEmail(email3) {
		//직접입력을 선택한 경우 email2의 값을 입력받도록 처리
		//그외의 값을 선택한 경우, 선택한 도메인으로 email2의 값을 지정
		//email1과 email2의 값을 더해서 email의 값으로 지정
		var email2 = document.getElementById("email2");

		if (email3.value == '직접입력') {
			//email2 읽기전용 해제
			//email2 포커스 맞추기
			//email2 입력되어 있는 값 지우기
			email2.readOnly = false;
			email2.focus();
			email2.value = '';
		} else {
			email2.value = email3.value;
			email2.readOnly = true;
		}

	}
	



	
</script>
  
 <div class="modal" id="exampleModal" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">본인인증</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        	      본인확인 인증메일이 발송되었습니다. 인증코드를 입력해주세요.
	      <br>
			<br>
							<% String code = joinCheck.authCodeMaker(); %>
			인증코드
	       <input type="text" id="code" class="form-control">
	       <span id="complete2" style="color: red"></span><br>
	        <button type="button" class="btn btn-success" id="emailCheck" onclick="emailcode();" >인증</button>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-bs-dismiss="modal">확인</button>
      </div>
    </div>
  </div>
</div>
  


	<script>
		function check() {
			
			var email1 = $('#email1').val().trim();
			var email2 = $('#email2').val().trim();

			
				$('#registerEmail').val(email1 + '@' + email2); //이메일 합치기
			

				
				
			if(email2 == "gmail.com") {
				$.ajax({
					url : 'googleCheck.jsp?to=' + $('#registerEmail').val() + '&pass=' + "<%=code %>",
					type : 'post',
					dataType : 'text',
					success : function(result) {
						$('#complete2').text("이메일 본인확인 인증을 해주세요.");

					},
					error : function(error) {
						console.log(error); //요청 실패 시 처리
					}

				});
			}
				
			if(email2 == "naver.com") {
				$.ajax({
					url : 'naverCheck.jsp?to=' + $('#registerEmail').val() + '&pass=' + "<%=code %>",
					type : 'post',
					dataType : 'text',
					success : function(result) {
						$('#complete2').text("이메일 본인확인 인증을 해주세요.");

					},
					error : function(error) {
						console.log(error); //요청 실패 시 처리
					}

				});
			}
			$("#exampleModal").modal("show");
		}
		
		function emailcode() {
			if($("#code").val() == "<%= code %>") {
				$('#complete').text("이메일 인증성공");
				$('#complete2').text("이메일 인증성공");
			}else {
				$('#complete2').text("이메일 인증코드를 확인해주세요.");
			}
			
			
		}
		
	</script>

  
</html>
