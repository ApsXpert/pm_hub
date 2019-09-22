package org.octa.pmhub.service.api;

import org.octa.pmhub.model.User;

public interface UserService {

	User save(User user);
	
	User findByEmail(String email);
	
	boolean ifUserExist(String email);
	
	int getUserId(String email);
		
	User findById(int userId);
	
	void updateStatus(int userId, boolean verified);
	
}
