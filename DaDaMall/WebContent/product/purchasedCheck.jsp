<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

<%@page import="jdbc.*"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="smtp.*"%>

<%

	request.setCharacterEncoding("utf-8");	//한글 처리
	
	String to = request.getParameter("to");
	String name = request.getParameter("name");
	String pname = request.getParameter("pname");
	String pquantity = request.getParameter("pquantity");
	String address = request.getParameter("address");
	
	Map<String, String> emailInfo = new HashMap<String, String>();
	
	emailInfo.put("from", "difbfl4750@gmail.com"); //보내는 사람, 변동 불가, 반드시 본인의 네이버 메일 주소
	emailInfo.put("to", request.getParameter("to")); //받는 사람
	emailInfo.put("subject", "DaDaMall"); //메일 제목

	
		String htmlContent = ""; //전체 내용을 html 형식으로 바꾸어 저장할 변수
	
		//html 메일 템플릿 파일 읽어오기
		String templatePath = application.getRealPath("purchasedCheck.html");
		BufferedReader br = new BufferedReader(new FileReader(templatePath));
	
		String oneLine;
		while ((oneLine = br.readLine()) != null) {
			htmlContent += oneLine + "\n";
		}
	
		br.close();
	
		// 읽어온 템플릿의 자리표시자인 __CONTENT__ 부분을 메일 내용으로 대체
		htmlContent = htmlContent.replace("__NAME__", name);
		htmlContent = htmlContent.replace("__PNAME__", pname);
		htmlContent = htmlContent.replace("__PQUANTITY__", pquantity);
		htmlContent = htmlContent.replace("__ADDRESS__", address);
	
		// 변경 내용 저장
	
		emailInfo.put("content", htmlContent); //메일 내용
		emailInfo.put("format", "text/html;charset=UTF-8"); //메일 형식


		GoogleSMTP smtpServer = new GoogleSMTP(); //메일 전송 객체 생성
		smtpServer.emailSending(emailInfo);
		%>
