package com.policymaster.mail;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;

public class MailSender {
	public static void main(String[] args) {
		final String fromEmail = "vikrant.c@jaisteel.in"; 
		final String password = "jaisteel2017"; 
		final String toEmail = "vikrant.c@jaisteel.in"; 	
		System.out.println("MailSender Start");
		Properties props = new Properties();
		Authenticator auth=null;
		try
		{		
			props.put("mail.host", "mail.jaisteel.in"); 
			props.put("mail.smtp.port", "25");
			props.put("mail.transport.protocol", "smtp"); 
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.starttls.enable", "true"); 
			props.put("mail.smtp.starttls.required", "true"); 
			auth = new Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(fromEmail, password);
				}
		};
		throw new Exception();
		}catch (Exception e) {
						System.out.println("Error mailing");
						String error=e.toString();
						Session session = Session.getInstance(props, auth);		
						MailUtil.sendMail(session, toEmail,"Testing Subject For Error",error );
		}
		
		
	}
}
