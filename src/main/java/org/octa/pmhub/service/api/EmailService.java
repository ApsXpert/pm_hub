package org.octa.pmhub.service.api;

public interface EmailService {
	void send(String toEmail, String subject, String message);
}
