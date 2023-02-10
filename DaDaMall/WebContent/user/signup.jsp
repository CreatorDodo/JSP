<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
 <body class="text-center">
 <%@ include file="../includes/header.jsp"%>
  <header class="bgimg w3-display-container w3-grayscale-min" style="height: 80%" id="home">
 <img src="../images/스포츠이미지.jpg"  width="100%" height="90%"> 
  <div class="w3-display-bottomleft w3-center w3-padding-large w3-hide-small">
  </div>
  <div class="w3-display-middle w3-center">
    <span class="w3-text-white text-light" style="font-size:90px">DaDaMall</span>
  </div>
  <div class="w3-display-bottomright w3-center w3-padding-large">
  </div>
</header>
    <div class="col-md-6 px-0">
      <h1 class="display-4 fst-italic" style="padding-right: 220px;">회원가입</h1>
     </div>
		    <hr class="featurette-divider">
		    	<br>
	<br>
	<br>
	<div class="container">
		<form action="signupCheckAJAX.jsp" method="get" id="prodRegFrm" name="prodRegFrm"
			class="form-horizontal" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2 col-form-label-lg"> 아이디 
				</label>
				<div class="col-sm-3">
					<input type="text" onkeyup="idChkr(this)" name="id" id="ide"
						class="form-control" required><span style="color: red;" id="idChk"></span>
				</div>
				
			</div>
			<br>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label-lg"> 비밀번호 </label>
				<div class="col-sm-3">
					<input type="password" onkeyup="pwChkr(this)" name="password" id="pwe"
						class="form-control" required><span style="color: red;" id="pwChk"></span>				</div>
						<span style="color: red;" id="pwChk"></span>
			</div>
			<br>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label-lg"> 비밀번호 확인 </label>
				<div class="col-sm-3">
					<input type="password" onkeyup="pwcChkr(this)"
						id="pwChke" class="form-control" required><span style="color: red;" id="pwcChk"></span>

				</div>
				
			</div>
			<br>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label-lg"> 이름 </label>
				<div class="col-sm-3">
					<input type="text" name="name" class="form-control" required>
				</div>
			</div>
			<br>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label-lg"> 이메일 </label>
				<div class="col-sm-4" style="padding-right:40px;">
					<input type="hidden" name="email" id="email"> <input
						type="text" class="form-control" style="display:inline; width: 30%;" name="email1" id="email1" size="10" required> @ <input
						type="text" class="form-control" style="display:inline; width: 30%;" name="email2" id="email2" size="10" required> <select
						 class="form-control" style="display:inline; width: 30%;" onchange="setEmail(this)" required>
						<option value="direct" selected>직접입력</option>
						<option value="gmail.com">gmail.com</option>
						<option value="naver.com">naver.com</option>
					</select>　
				</div>
			</div>
			<br>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label-lg"> 성별 </label>
				<div class="col-sm-3 col-form-label-lg">
					<label><input type="radio" name="gender" value="남성">
						남성 </label> <label><input type="radio" name="gender" value="여성">
						여성 </label> 
				</div>
			</div>
			<br>
<br>
<br>
			<!-- 등록 취소 버튼 -->
			<div class="form-group row text-start" style="padding-left: 60px;">
				<div class="col-sm-offset-2 col-sm-10">

					<button type="button" onclick="history.back()"
						class="btn btn-secondary backBtn">
						이전으로
					</button>
					 <input type="submit"
					value="회원가입" class="btn btn-success joinBtn regBtn">
					<br> <br>

				</div>
			</div>

		</form>
		
	
	</div>
    <hr class="featurette-divider">

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	
	     <%@ include file="../includes/footer.jsp"%>
</body>


	<script>
	
	//아이디와 비밀번호 확인 여부
	idChk = pwChk = false;
	
	//아이디 중복 확인 -------------------------------------
// 	$('#ide').keyup(function() {
// 		var id = $(this).val();
// 		var idChkMsg = $('#idChk');
		
// 		if(id.length < 5 || id.length > 10) {	//아이디 입력 길이 확인
// 			idChkMsg.text('아이디는 5 ~ 10자로 입력해주세요.');
// 		} else {	//아이디 중복 확인 처리
// 			idChkMsg.text('');

// $.post('idChkProc.jsp', //요청 url
// 			{"id" : id }, //전송 데이터
// 			function(result) { //callback 함수
// 				if(result.trim() == 'O'){
// 				idChkMsg.text('사용 가능한 아이디입니다.');
// 				idChk = true;
// 				} else {
// 					idChkMsg.text('이미 사용 중인 아이디입니다.');
// 					idChk = false;
// 				}
			
				
		
// 	});
	//END 아이디 중복 확인 -----------------------------------------------
	
// 	//회원가입 버튼 클릭 이벤트 처리-------------------------
// 	$('.regBtn').click(function(event) {
// 		event.preventDefault();
		
// 		if(idChk == false){ //아이디 중복 확인 X
// 			alert('아이디를 확인해주세요.');
// 		} else if( pwChk == false){	//비밀번호 일치 X
// 			alert('비밀번호를 확인해주세요.');
// 		} else if( $('name').val().trim() == '') {	//이름 입력 확인
// 			alert('이름을 입력해주세요.');
// 		}  else if( emailCheck() == false ) {	//이름 입력 확인 및 합치기
// 			alert('이메일을 입력해주세요.');
// 		} else{	//그렇지 않으면 폼 전송
// 			$('#joinFrm').submit();
// 		}
// 	});
// 	//END 회원가입 버튼 클릭 이벤트 처리-------------------------
	
		//이메일 선택 처리 함수
		function setEmail(email3) {
			//직접입력을 선택한 경우 email2의 값을 입력받도록 처리
			//그외의 값을 선택한 경우, 선택한 도메인으로 email2의 값을 지정
			//email1과 email2의 값을 더해서 email의 값으로 지정
			var email2 = document.prodRegFrm.email2;
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

		// 아이디, 비밀번호 체크
		var txtPtn = /[\w|가-힣|`~@!#%<>\*\$]{5,10}/;
		//영문자, 숫자, _, 한글, 특수문자 5~10
		var numPtn = /[0-9]/; //숫자
		var engPtn = /[a-zA-Z]/; //영문자		
		var korPtn = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/; //한글	
		var spPtn = /[`~@!#%<>\*\$]/; //특수 문자
		
		
		$('.regBtn').click(function() {
			var email1 = $('#email1').val().trim();
			var email2 = $('#email2').val().trim();
			$('#email').val(email1 + '@' + email2);
			console.log($('#email').val());
		});

		


		
// 		function idChkr(obj) {
// 			if (obj.value.length >= 5 && 10 >= obj.value.length) {
// 				$.ajax({
// 					url : 'idChkProc.jsp',
// 					type : 'post',
// 					data : 'id=' + $('#ide').val(),
// 					dataType : 'text',
// 					success : function(result) {
// 						$('#idChk').text(result);
// 						if (obj.value == 'admin') {
// 							$('#frm').attr('onSubmit', 'return false');
// 						} else {
							
// 							$('#frm').attr('onSubmit', 'return true');
// 						}

// 					},
// 					error : function(error) {
// 						console.log(error); //요청 실패 시 처리
// 					}

// 				});
// 			} else {
// 				$('#idChk').text('5 ~ 10자 이내로 입력해 주세요.');
// 				$('#frm').attr('onSubmit', 'return false');
// 			}
// 		}

		function pwChkr(obj) {
			var txt = $(obj).val();
			if (obj.value.length >= 5 && 10 >= obj.value.length) {
				if (!numPtn.test(txt)) {
					$('#pwChk').text('숫자가 포함되지 않았습니다.');
					$('#frm').attr('onSubmit', 'return false');
				} else if (!engPtn.exec(txt)) {
					$('#pwChk').text('알파벳이 포함되지 않았습니다.');
					$('#frm').attr('onSubmit', 'return false');
				} else if (txt.match(korPtn)) {
					$('#pwChk').text('한글은 포함하실 수 없습니다.');
					$('#frm').attr('onSubmit', 'return false');
				} else {
					$('#pwChk').text('');
					$('#frm').attr('onSubmit', 'return true');
				}
			} else {
				$('#pwChk').text('5 ~ 10자 이내로 입력해 주세요.');
				$('#frm').attr('onSubmit', 'return false');
			}
		}

		function pwcChkr(obj) {
			var txt1 = $(obj).val();
			var txt2 = $('#pwe').val();
			if (txt1 != txt2) {
				$('#pwcChk').text('비밀번호가 일치하지 않습니다.');
				$('#frm').attr('onSubmit', 'return false');
			} else {
				$('#pwcChk').text('');
				$('#frm').attr('onSubmit', 'return true');
			}
		}
	</script>


</html>