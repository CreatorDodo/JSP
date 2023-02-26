<%@page import="jdbc.UserDTO"%>
<%@page import="java.util.*"%>
<%@page import="jdbc.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp"%>





<!-- <div class="container text-center"> -->
<!--   <div class="row row-cols-1 row-cols-sm-2 row-cols-md-4"> -->
<!--     <div class="col bg-info" style="padding: 5px; border: solid;">Name</div> -->
<!--     <div class="col bg-info" style="padding: 5px; border: solid;">Age</div> -->
<!--     <div class="col bg-info" style="padding: 5px; border: solid;">Gender</div> -->
<!--     <div class="col bg-info" style="padding: 5px; border: solid;">Email</div> -->
<!--   </div> -->

<!-- </div> -->
<%-- <% ArrayList<user> users = userDAO.getList(); --%>

<!-- // for (user user : users) { -->

<%-- %> --%>

<table class="table table-hover">
   <thead>
   <tr>
    <th scope="col">Name</th>
    <th scope="col">Age</th>
    <th scope="col">Gender</th>
    <th scope="col">Email</th>
    </tr>
  </thead>
  <tbody class="table-active" id="ajaxTable">
  </tbody>
</table>



<!-- <div class="container text-center" id="ajaxTable"> -->
<!-- 	<div class="row row-cols-1 row-cols-sm-2 row-cols-md-4"> -->
<%-- 	<div class="col" style="padding: 10px; border: solid;"><%=user.getUserName() %></div> --%>
<%--     <div class="col" style="padding: 10px; border: solid;"><%=user.getUserAge() %></div> --%>
<%--     <div class="col" style="padding: 10px; border: solid;"><%=user.getUserGender() %></div> --%>
<%--     <div class="col" style="padding: 10px; border: solid;"><%=user.getUserEmail() %></div> --%>
<!--  </div> -->

<!-- </div> -->

<%-- <% } %> --%>

<br><br>


<div class="container themed-container text-center text-light bg-primary" style="padding: 10px; border: solid; border-color: black;">Register</div>

<div class="container themed-container text-center bg-warning" style="padding: 10px; border: solid;">

          <div class="row g-3">

            <div class="col-12">
              <label for="username" class="form-label">Name</label>
              <div class="input-group has-validation">
                <input type="text" class="form-control" id="registerName" placeholder="Name" required>

              </div>
            </div>
            
            <div class="col-12">
              <label for="address2" class="form-label">Email</label>    <div class="input-group">
            <input type="text" class="form-control" id="registerEmail" placeholder="aaa@example.com">
            <button type="submit" class="btn btn-secondary">인증하기</button>
          </div>
          			<div	style="text-align: left;">re</div>
			</div>


  			<div class="col-12">
              <label for="address" class="form-label">Gender</label>
             					<div><label class="btn btn-primary active">
                                    <input type="radio" name="registerGender" autocomplete="off" value="male" checked>남자
                                    </label>
                                    <label class="btn btn-primary">
                                    <input type="radio" name="registerGender" autocomplete="off" value="female">여자
                                    </label></div>
            </div>

            <div class="col-12">
              <label for="email" class="form-label">Age</label>
              <input type="text" class="form-control"  id="registerAge" placeholder="20" required>

            </div>

          


</div>
</div>
<div class="container themed-container text-center bg-primary" style="padding: 10px; border: solid;"><button class="btn btn-success" onclick="registerFunction();" type="submit">Send</button></div>


<script type="text/javascript">

	var searchRequest = new XMLHttpRequest();
	var registerRequest = new XMLHttpRequest();
	
 function	searchFunction() {
		searchRequest.open("POST", "./UserSearchServlet?userName=" + encodeURIComponent(document.getElementById("userName").value), true);
		searchRequest.onreadystatechange = searchProcess;
		searchRequest.send(null);
	}
 
 function	searchProcess() {
	 var table = document.getElementById("ajaxTable");
	 table.innerHTML = "";
	 if(searchRequest.readyState == 4 && searchRequest.status == 200) {
		 var object = eval('(' + searchRequest.responseText + ')');
		 var result = object.result;
		 for (var i = 0; i < result.length; i++) {	// 유저 데이터 한명 한명의 자료 추출
			var row = table.insertRow(0);
				for (var j = 0; j < result[i].length; j++) {	// 유저 한명의 4개 필드를 하나씩 추출
					var cell = row.insertCell(j);
				cell.innerHTML = result[i][j].value;
				}
		}
	 }
	 
 }
	
 function	registerFunction() {
	 registerRequest.open("POST", "./UserRegisterServlet?userName=" + encodeURIComponent(document.getElementById("registerName").value)+
			   "&userAge="+encodeURIComponent(document.getElementById("registerAge").value)+
               "&userGender="+encodeURIComponent($('input[name=registerGender]:checked').val())+
               "&userEmail="+encodeURIComponent(document.getElementById("registerEmail").value)
				, true);
	 registerRequest.onreadystatechange = registerProcess;
	 registerRequest.send(null);
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

	window.onload = function() {
		searchFunction();
	}


</script>



</body>
</html>
 