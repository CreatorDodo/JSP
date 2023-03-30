package com.glory.mail;

public interface MailService {
	
	void sendMail(String to, String subject, String body);
	
}
