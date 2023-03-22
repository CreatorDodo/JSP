package com.carshop.users;

import java.util.List;
import java.util.Map;

public interface UserService {

	void setNewUser(User user);

	List<User> getAllUserList();

	void deleteUser(String username);
	
	void updateAuth(Map<String, Object> auth);

	void updateEnabled(Map<String, Object> enabled);

	User existUsername(String email);
	
}