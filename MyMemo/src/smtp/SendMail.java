package smtp;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.HashMap;
import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;


public class SendMail {
	
		public static void sending(String id, String email, String name) throws AddressException, MessagingException {

			
			
			Map<String, String> emailInfo = new HashMap<String, String>();
			
			emailInfo.put("from", "difbfl4750@naver.com"); //보내는 사람, 변동 불가, 반드시 본인의 네이버 메일 주소
			emailInfo.put("to", email); //받는 사람
			emailInfo.put("subject", "My MEMO"); //메일 제목
			emailInfo.put("content", id + "님 회원가입을 환영합니다!"); //메일 제목
				emailInfo.put("format", "text/plain;charset=UTF-8"); //메일 형식


				NaverSMTP smtpServer = new NaverSMTP(); //메일 전송 객체 생성
				smtpServer.emailSending(emailInfo);
				
				
		}
}
