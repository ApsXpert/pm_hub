package org.octa.pmhub.service.api;

import org.octa.pmhub.model.User;

public interface VerificationTokenService {

	void save(User user, String token);
	
	void verify(String token);
}