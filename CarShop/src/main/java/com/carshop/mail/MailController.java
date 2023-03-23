package com.carshop.mail;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@RequestMapping("/mail")
@EnableAsync
@Controller
public class MailController {
	
	@Autowired
	private MailService mailService;

	@GetMapping("/send")
	public void sendMail(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		mailService.sendMail("difbfl4750@gmail.com", "테스트 메일입니다.", "내용");
		out.println("메일 전송 완료");
	}
	
	// 폼 메일 전송 연습
	
	@GetMapping("/form")
	public String mailform() {
		return "mail/form";	
	}
	
	@PostMapping("/form")
	public void mailform(@RequestParam Map<String, Object> map) {
		
		String to = (String) map.get("to");
		String subject = (String) map.get("subject");
		String body = (String) map.get("body");
		
		mailService.sendMail(to, subject, body);
	}
	
	
	
}
