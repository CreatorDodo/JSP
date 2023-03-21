package com.carshop.study;


import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.carshop.board.Board;
import com.carshop.board.BoardService;

@Controller
@RequestMapping("/study")
public class ModelAndViewExam {

	private BoardService boardService;
	
//	@GetMapping("/modelandview")
//	public ModelAndView modelandview() {
//		ModelAndView modelAndView = new ModelAndView();
//		List<Board> list = boardService.getAllBoardList();
//		modelAndView.addObject("test", list);
//		modelAndView.setViewName("study/modelandview");
//		return modelAndView;
//	}
	
}
