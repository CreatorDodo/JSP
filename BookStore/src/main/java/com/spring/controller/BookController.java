package com.spring.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
// ctrl + shift + o : import 자동 정리 기능.
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.service.BookService;

//@Controller : Spring에서 Controller로 인식(Java Bean으로 등록하여 관리), Model 객체를 만들어 데이터를 담고 View를 반환.
@Controller
public class BookController {
	
	@Autowired
	BookService bookService;
	
	//ModelAndView : Model 데이터와 이동하고자 하는 View Page를 같이 저장한다.
	@RequestMapping("/")
	public ModelAndView main() {
		return new ModelAndView("book/create");
	}
	
	@GetMapping("/create")
	public String createMethod() {
		return "book/create";
	}

	@RequestMapping(value="/create", method=RequestMethod.POST)
	public ModelAndView create(@RequestParam Map<String, Object> map) {
		ModelAndView mav = new ModelAndView();
		
		String bookId = this.bookService.create(map);
		
		if(bookId == null) {
			mav.setViewName("redirect:/create");
		}else {
			mav.setViewName("redirect:/detail?bookId=" + bookId);
		}
		
		
		
		return mav;
	}
	
	@RequestMapping(value="/detail", method=RequestMethod.GET)
	public ModelAndView detail(@RequestParam Map<String, Object> map) {
		Map<String, Object> detailMap = this.bookService.detail(map);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("data", detailMap);
		String bookId = map.get("bookId").toString();
		mav.addObject("bookId", bookId);
		mav.setViewName("/book/detail");
		return mav;
	}
	
	@RequestMapping(value="/update", method=RequestMethod.GET)
	public ModelAndView update(@RequestParam Map<String, Object> map) {
		Map<String, Object> detailMap = this.bookService.detail(map);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("data", detailMap);
		String bookId = map.get("bookId").toString();
		mav.addObject("bookId", bookId);
		mav.setViewName("/book/update");
		return mav;
	}
	
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public ModelAndView updatePost(@RequestParam Map<String, Object> map) {
		ModelAndView mav = new ModelAndView();
		
		Boolean isUpdateSuccess = this.bookService.update(map);
		
		if(isUpdateSuccess) {
			String bookId = map.get("bookId").toString();
			mav.setViewName("redirect:/detail?bookId=" + bookId);
		}else {
			mav = this.update(map);
		}
		
		return mav;
	}
	
//	@RequestMapping(value="/list")
//	public ModelAndView list(@RequestParam Map<String, Object> map) {
//		
//		List<Map<String, Object>> list = this.bookService.list(map);
//		
//		ModelAndView mav = new ModelAndView();
//		mav.addObject("data", list);
//		mav.setViewName("/book/list");
//		return mav;
//	}
	
	@RequestMapping(value="/list")
	public ModelAndView list(@RequestParam Map<String, Object> map) {
		
		List<Map<String, Object>> list = this.bookService.list(map);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("data", list);
		
		if(map.containsKey("keyword")) {
			mav.addObject("keyword", map.get("keyword"));
		}
		
		mav.setViewName("/book/list");
		return mav;
	}
	
	@RequestMapping(value="/delete", method=RequestMethod.POST)
	public ModelAndView deletePost(@RequestParam Map<String, Object> map) {
		ModelAndView mav = new ModelAndView();
		
		Boolean isDeleteSuccess = this.bookService.remove(map);
		
		if(isDeleteSuccess) {
			mav.setViewName("redirect:/list");
		}else {
			String bookId = map.get("bookId").toString();
			mav.setViewName("redirect:/detail?bookId=" + bookId);
		}
		
		return mav;
	}
	
	
}
