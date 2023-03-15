package com.spring.repository;

import java.util.List;
import java.util.Map;

public interface BookRepository {
	
	int insert(Map<String, Object> map);
	
	Map<String, Object> selectDetail(Map<String, Object> map);

	int update(Map<String, Object> map);

	List<Map<String, Object>> selectList(Map<String, Object> map);

	int delete(Map<String, Object> map);

}
