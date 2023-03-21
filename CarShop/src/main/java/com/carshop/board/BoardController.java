package com.carshop.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.carshop.controller.CarDTO;

@Controller
@RequestMapping("/boards")
public class BoardController {
	
	@Autowired		// DI
	private BoardService boardService;
	
	@GetMapping("/addBoard")
	public String requestAddBoardForm(@ModelAttribute("NewBoard") Board board) {
		return "boards/addBoard";
	}
	
	@PostMapping("/addBoard")
	public String submitAddBoardForm(@ModelAttribute("NewBoard") Board board) {
		boardService.setNewBoard(board);
		return "redirect:/boards/list";
	}
	
	@RequestMapping("/list")
	public String BoardList(Model model) {
		List<Board> list = boardService.getAllBoardList();
		model.addAttribute("boardList", list);
		return "boards/list";
	}
	
	@GetMapping("/board")
	public String requestCarById(@RequestParam("id") String bid, Model model) {
		Board boardById = boardService.getBoardById(bid);
		model.addAttribute("board", boardById);
		return "boards/board";
	}
	
}
