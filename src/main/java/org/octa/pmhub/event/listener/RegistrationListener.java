package org.octa.pmhub.event.listener;

import java.util.UUID;

import org.octa.pmhub.event.RegistrationCompleteEvent;
import org.octa.pmhub.model.User;
import org.octa.pmhub.service.api.EmailService;
import org.octa.pmhub.service.api.VerificationTokenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.stereotype.Component;

@Component
public class RegistrationListener implements ApplicationListener<RegistrationCompleteEvent> {
	
	@Autowired
	private VerificationTokenService tokenService;
	
	@Autowired
	private EmailService emailService;
	
	@Override
	public void onApplicationEvent(RegistrationCompleteEvent event) {
		sendConfirmationEmail(event);
	}
	
	private void sendConfirmationEmail(RegistrationCompleteEvent event) {
		User user = event.getUser();
		String token = UUID.randomUUID().toString();
		tokenService.save(user, token);
		
		String recipientAddress = user.getEmail();
        String subject = "Confir Registration";
        String confirmationUrl 
          = event.getAppUrl() + "?token=" + token;
        
        emailService.send(recipientAddress, subject, confirmationUrl);
	}

}

