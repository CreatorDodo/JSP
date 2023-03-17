package com.carshop.users;

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

}
