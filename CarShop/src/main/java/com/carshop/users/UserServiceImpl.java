package com.carshop.users;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserRepository userRepository;
	
	@Override
	public void setNewUser(User user) {
		
		userRepository.setNewUser(user);
		
	}
	
	@Override
	public List<User> getAllUserList() {
		return userRepository.getAllUserList();
	}
	
	@Override
	public void deleteUser(String username) {
		userRepository.deleteUser(username);
	}

	@Override
	public void updateAuth(Map<String, Object> auth) {
		userRepository.updateAuth(auth);
		
	}

	@Override
	public void updateEnabled(Map<String, Object> enabled) {
		userRepository.updateEnabled(enabled);
		
	}

}
