package org.octa.pmhub.service.impl;

import java.util.Date;

import org.octa.pmhub.model.User;
import org.octa.pmhub.repository.UserRepository;
import org.octa.pmhub.service.api.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository userRepository;
	
	@Override
	@Transactional
	public User save(User user) {
		user.setVerified(false);
		user.setCreateTimestamp(new Date());
		return userRepository.save(user);
	}

	@Override
	public User findByEmail(String email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean ifUserExist(String email) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int getUserId(String email) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public User findById(int userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional
	public void updateStatus(int userId, boolean verified) {
		User login = findById(userId);
		login.setVerified(verified);
		userRepository.saveAndFlush(login);
		
	}

}
