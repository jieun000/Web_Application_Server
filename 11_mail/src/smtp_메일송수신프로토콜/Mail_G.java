package smtp_메일송수신프로토콜;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Mail_G {

	Properties serverInfo; // 서버 정보
	Authenticator auth; // 인증 정보
	String from = "email@Address.com";
	
	// 생성자
	public Mail_G() {
		
		serverInfo = System.getProperties();
		
		// 'tls 사용할 것인지' 정보 전달
		serverInfo.put("mail.smtp.starttls.enable", "true");
		serverInfo.put("mail.smtp.host", "smtp.gmail.com");
		serverInfo.put("mail.smtp.auth", "true");
		serverInfo.put("mail.smtp.prot", "589");
		
		serverInfo.put("mail.smtp.ssl.trust", "smtp.gmail.com");
		serverInfo.put("mail.smtp.socketFactory.fallback", "false");
		serverInfo.put("mail.smtp.ssl.protocols", "TLSv1.2");
		
		auth = new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(from, "googleAppPassword");
			}
		};
	}
	
	// sendMail 메서드
	public int sendMail(String to, String subject, String content) {
		int result; // 메일 전송 여부 결과
		Session session = Session.getInstance(serverInfo, auth);
		MimeMessage msg = new MimeMessage(session);
		try {
			// 보내는 사람 메일 주소
			msg.setFrom(new InternetAddress(from, "smtp"));
			// 받는 사람 메일 주소
			msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			msg.setSubject(subject); // 제목
			msg.setText(content); // 내용
			
			Transport.send(msg);
			result = 1;
		} catch(Exception e) {
			result = 0;
			e.printStackTrace();
		}
		return result;
	}
	
}
