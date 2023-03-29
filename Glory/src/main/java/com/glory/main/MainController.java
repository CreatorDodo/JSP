package com.glory.main;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.glory.board.Board;
import com.glory.board.BoardService;

@Controller
public class MainController {
		
	@Autowired		// DI
	private BoardService boardService;
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@RequestMapping("/main")
	public String main(Model model) {
		
		List<Board> list = boardService.getAllBoardList();
		model.addAttribute("boardList", list);
		return "main";
	}
	
	@ResponseBody
	@PostMapping("/addTodo")
	public void addTodo(@RequestParam Map<String, Object> map) {
		
		this.sqlSessionTemplate.insert("todo.insert", map);
	}
	
	
	@PostMapping("/ajaxDetail")
	public @ResponseBody List<Board> requestReplyByIdAjax(@RequestParam("bid") String bid, @ModelAttribute Board board) {
		
		List<Board> list = boardService.getReplyById(bid);
		
		return list;
	}
	
	@RequestMapping("/")
	public String loginMain() {
		return "login";
	}
	
	@RequestMapping("/admin")
	public String loginAdmin(Model model) {
		//전체 테이블을 모두 조회
		List<Board> list = boardService.getAllBoardList();
		
		//그 중 필요한 bstatus 추출. JAVA 1.8 version 부터 지원하는 기능.
		List<Integer> statusList = list.stream().map(Board::getBstatus).collect(Collectors.toList());
		
		int n1 = 0;
		int n2 = 0;
		int n3 = 0;
		int n4 = 0;
		int n5 = 0;
		
		for (Integer status : statusList) {
			if (status == 1) {n1++;}
			if (status == 2) {n2++;}
			if (status == 3) {n3++;}
			if (status == 4) {n4++;}
			if (status == 5) {n5++;}
		}
		
		int cnt = list.size();
		
		model.addAttribute("n1", n1);
		model.addAttribute("n2", n2);
		model.addAttribute("n3", n3);
		model.addAttribute("n4", n4);
		model.addAttribute("n5", n5);
		model.addAttribute("cnt", cnt);
		
		//정상적으로 작동은 하지만 Service, Repository와 같은 일련의 관습은 지키는 것이 좋다.
		List<Todo> todoList = this.sqlSessionTemplate.selectList("todo.select_list");
		
		model.addAttribute("todoList", todoList);
		
		return "admin";
	}
	
	@ResponseBody
	@PostMapping("/addBoard")
	public void addBoard(@RequestParam Map<String, Object> board) {
		Board boards = new Board();
		boards.setBtitle((String)board.get("btitle"));
		boards.setBwriter((String)board.get("bwriter"));
		boards.setBcate((String)board.get("bcate"));
		boards.setBcontent((String)board.get("bcontent"));
		
		
		boardService.setNewBoard(boards);
	}
	
	@ResponseBody
	@PostMapping("/addReply")
	public void addReply(@RequestParam Map<String, Object> map) {
		boardService.replyNewBoard(map);
	}
	
	@RequestMapping("/loginfailed")
	public String loginfailedMain() {
		return "login";
	}

}
