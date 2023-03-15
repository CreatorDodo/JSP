package com.spring.repository;

import java.util.List;
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


	@Override
	public Map<String, Object> selectDetail(Map<String, Object> map) {
		//selectOne : 쿼리의 결과 행 수가 0개면 null을 반환, 결과가 여러 개면 예외를 발생시킨다(Mapper.xml의 resultType과 일치시켜야 한다.)
		return this.sqlSessionTemplate.selectOne("book.select_detail", map);
	}
	
	@Override
	public int update(Map<String, Object> map) {
		return this.sqlSessionTemplate.update("book.update", map);
	}
	
	@Override
	public List<Map<String, Object>> selectList(Map<String, Object> map) {
		return this.sqlSessionTemplate.selectList("book.select_list", map);
	}
	
	@Override
	public int delete(Map<String, Object> map) {
		return this.sqlSessionTemplate.delete("book.delete", map);
	}

}
