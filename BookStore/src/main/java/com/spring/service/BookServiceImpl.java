package com.spring.service;

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

}
