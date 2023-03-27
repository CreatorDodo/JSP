package com.glory.board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/boards")
public class BoardController {
	
//	@Autowired
//	private MailService mailService;
	
	@Autowired		// DI
	private BoardService boardService;
	
//	@Autowired
//	private UserService userService;
	
	@GetMapping("/addBoard")
	public String requestAddBoardForm(@ModelAttribute("NewBoard") Board board) {
		return "boards/addBoard";
	}
	
	@PostMapping("/addBoard")
	public String submitAddBoardForm(@ModelAttribute("NewBoard") Board board) {
		
		boardService.setNewBoard(board);
		
//		User user = userService.existUsername(board.getBwriter());
		
//		String to = user.getUemail();
//		String subject = board.getBwriter() + "님의 게시물이 등록되었습니다.";
//		String body = board.getBcontent();
		
//		mailService.sendMail(to, subject, body);
		

		return "redirect:/boards/list";
	}
	
	@RequestMapping("/list")
	public String BoardList(Model model) {
		List<Board> list = boardService.getAllBoardList();
		model.addAttribute("boardList", list);
		return "boards/list";
	}
	
	@GetMapping("/detail")
	public String requestBoardById(@RequestParam("id") String bid, Model model) {
		
		//view 데이터를 불러오기 전에 조회수 증가
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("bid", bid);
		map.put("check", "bview");
		
		//주 게시물
		Board boardById = boardService.getBoardById(bid);
		model.addAttribute("board", boardById);
		
		
		//답변 게시물
		List<Board> list = boardService.getReplyById(bid);
		int cnt = list.size();
		model.addAttribute("replyList", list);
		model.addAttribute("cnt", cnt);
		

		
		return "boards/board";
	}
	
	@ResponseBody
	@RequestMapping("/replyNew")
	public void replyNew(@RequestParam Map<String, Object> map) {
		
		boardService.replyNewBoard(map);
		
//		String boardWriter = (String) map.get("boardWriter");
		
//		User user = userService.existUsername(boardWriter);
		
//		String to = user.getUemail();
//		String subject = (String) map.get("bwriter") + "님이 댓글을 등록하였습니다.";
//		String body = (String) map.get("bcontent");
		
//		mailService.sendMail(to, subject, body);

	}
	
}
