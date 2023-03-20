package com.carshop.users;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserRepositoryImpl implements UserRepository {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public void setNewUser(User user) {
		this.sqlSessionTemplate.insert("user.insert", user);
	}
	
	@Override
	public List<User> getAllUserList() {
		return this.sqlSessionTemplate.selectList("user.select_list");
	}
	
	@Override
	public void deleteUser(String username) {
		this.sqlSessionTemplate.delete("user.delete", username);

	}
	
	@Override
	public void updateAuth(Map<String, Object> auth) {
		this.sqlSessionTemplate.delete("user.update_Auth", auth);

	}

	@Override
	public void updateEnabled(Map<String, Object> enabled) {
		this.sqlSessionTemplate.delete("user.update_Enabled", enabled);
		
	}

}
