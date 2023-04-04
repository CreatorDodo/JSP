package com.glory.notice;

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

@Controller
@RequestMapping("/notice")
public class NoticeController {
	
//	@Autowired
//	private MailService mailService;
	
	@Autowired
	private NoticeService noticeService;
	
//	@Autowired
//	private UserService userService;
	
	@GetMapping("/addNotice")
	public String requestAddNoticeForm(@ModelAttribute("NewNotice") Notice notice) {
		return "notices/addNotice";
	}
	
	@GetMapping("/chatGPT")
	public String chatGPT(@ModelAttribute("NewNotice") Notice notice) {
		return "notices/chatGPT";
	}
	
	@PostMapping("/addNotice")
	public String submitAddNoticeForm(@ModelAttribute("NewNotice") Notice notice) {
		
		noticeService.setNewNotice(notice);
		
//		User user = userService.existUsername(board.getBwriter());
		
//		String to = user.getUemail();
//		String subject = board.getBwriter() + "님의 게시물이 등록되었습니다.";
//		String body = board.getBcontent();
		
//		mailService.sendMail(to, subject, body);
		

		return "redirect:/notice/list";
	}
	
	@RequestMapping("/list")
	public String NoticeList(Model model) {
		List<Notice> list = noticeService.getAllNoticeList();
		model.addAttribute("noticeList", list);
		return "notices/list";
	}
	
	@GetMapping("/detail")
	public String requestNoticeById(@RequestParam("id") String nid, Model model) {
		
		//view 데이터를 불러오기 전에 조회수 증가
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("nid", nid);
		map.put("check", "nview");
		
		//주 게시물
		Notice noticeById = noticeService.getNoticeById(nid);
		model.addAttribute("notice", noticeById);
		

		
		return "notices/notice";
	}
	
}
