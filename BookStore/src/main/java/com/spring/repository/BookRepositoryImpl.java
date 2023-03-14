package com.spring.repository;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BookRepositoryImpl implements BookRepository {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	
	@Override
	public int insert(Map<String, Object> map) {
		return this.sqlSessionTemplate.insert("book.insert", map);
	}

}
