package org.octa.pmhub.service.impl;

import org.octa.pmhub.service.api.EmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class EmailServiceImpl implements EmailService {

	@Autowired
    private JavaMailSender mailSender;
	
	@Override
	public void send(String toEmail, String subject, String message) {
		SimpleMailMessage email = new SimpleMailMessage();
        email.setTo(toEmail);
        email.setSubject(subject);
        email.setText(message);
        mailSender.send(email);
	}

}
