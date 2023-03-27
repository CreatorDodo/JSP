package com.glory.member;

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
@RequestMapping("/member")
public class MemberController {

	
//	@Autowired
//	private MailService mailService;
	
	@Autowired
	private MemberService memberService;
	
//	@Autowired
//	private UserService userService;
	
	@GetMapping("/addMember")
	public String requestAddMemberForm(@ModelAttribute("NewMember") Member member) {
		return "members/addMember";
	}
	
	@PostMapping("/addMember")
	public String submitAddMemberForm(@ModelAttribute("NewMember") Member member) {
		
		memberService.setNewMember(member);
		
//		User user = userService.existUsername(board.getBwriter());
		
//		String to = user.getUemail();
//		String subject = board.getBwriter() + "님의 게시물이 등록되었습니다.";
//		String body = board.getBcontent();
		
//		mailService.sendMail(to, subject, body);
		

		return "redirect:/member/list";
	}
	
	@RequestMapping("/list")
	public String MemberList(Model model) {
		List<Member> list = memberService.getAllMemberList();
		model.addAttribute("memberList", list);
		return "members/list";
	}
	
	@GetMapping("/detail")
	public String requestMemberById(@RequestParam("id") String mid, Model model) {
		
		//view 데이터를 불러오기 전에 조회수 증가
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("mid", mid);
		map.put("check", "mview");
		
		//주 게시물
		Member memberById = memberService.getMemberById(mid);
		model.addAttribute("member", memberById);
		

		
		return "members/member";
	}
	
	
}
