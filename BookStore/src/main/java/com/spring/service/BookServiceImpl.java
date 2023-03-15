package com.spring.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.repository.BookRepository;

@Service
public class BookServiceImpl implements BookService {
	
	@Autowired
	BookRepository bookRepository;

	@Override
	public String create(Map<String, Object> map) {
		
		int affectRowCount = this.bookRepository.insert(map);
		
		// insert 구문은 입력이 성공하면 1, 실패하면 0을 반환한다.
		if(affectRowCount == 1) {
			return map.get("book_id").toString();
		}
		
		
		return null;
		
	}

	@Override
	public Map<String, Object> detail(Map<String, Object> map) {
		return this.bookRepository.selectDetail(map);
	}

	@Override
	public boolean update(Map<String, Object> map) {
		int affectRowCount = this.bookRepository.update(map);
		return affectRowCount == 1;
		
	}
	
	@Override
	public List<Map<String, Object>> list(Map<String, Object> map) {
		return this.bookRepository.selectList(map);
	}

	@Override
	public boolean remove(Map<String, Object> map) {
		int affectRowCount = this.bookRepository.delete(map);
		return affectRowCount == 1;
	}

}
