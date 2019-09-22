package org.octa.pmhub.service.impl;

import java.util.Date;
import java.util.Optional;

import org.octa.pmhub.exception.ResourceNotFoundException;
import org.octa.pmhub.exception.VerificationTokenExpiredException;
import org.octa.pmhub.model.User;
import org.octa.pmhub.model.VerificationToken;
import org.octa.pmhub.repository.VerificationTokenRepository;
import org.octa.pmhub.service.api.UserService;
import org.octa.pmhub.service.api.VerificationTokenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class VerificationTokenServiceImpl implements VerificationTokenService {

	@Autowired
	private VerificationTokenRepository repository;
	
	@Autowired
	private UserService userService;

	@Override
	public void save(User user, String token) {
		repository.save(new VerificationToken(token, user));
	}

	@Override
	@Transactional
	public void verify(String token) {
		Optional<VerificationToken> vToken = repository.findByToken(token);
		if (!vToken.isPresent())
			throw new ResourceNotFoundException("Token not found: " + token);

		Date now = new Date();
		if (now.after(vToken.get().getExpiryDatetime()))
			throw new VerificationTokenExpiredException("Your token expired register again");

		userService.updateStatus(vToken.get().getUserId(), true);
		
	}

}
