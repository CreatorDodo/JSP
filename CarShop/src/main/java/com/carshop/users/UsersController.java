package com.carshop.users;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@RequestMapping("users")
@Controller
public class UsersController {
	
	@Autowired
	UserService userService;
	
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@GetMapping("/join")
	public String joinForm(@ModelAttribute("NewUser") User user) {
		return "users/joinform";
	}
	
	@PostMapping("/join")
	public String submitForm(@ModelAttribute("NewUser") User user) {
		
		//Spring은 기본적으로 password를 암호화하여 DB에 등록해야만 로그인을 할 수 있도록 설정되어 있다.
		
		String encodedPassword = bCryptPasswordEncoder.encode(user.getPassword());
		user.setPassword(encodedPassword);
		userService.setNewUser(user);
		return "login";
	}

	@RequestMapping("/list")
	public String UserList(Model model) {
		List<User> list = userService.getAllUserList();
		model.addAttribute("userList", list);
		return "users/list";
	}
	
	@PostMapping("/list")
	public void updateAuth(@RequestParam Map<String, Object> auth) {
		userService.updateAuth(auth);
	}
	
	@PostMapping("/updateEnabled")
	public String updateEnabled(@RequestParam Map<String, Object> enabled) {
		userService.updateEnabled(enabled);
		return "users/list";
	}
	
	@ResponseBody
	@RequestMapping("/removeUser")
	public void ajaxremoveUser(@RequestParam("username") String username) {
		userService.deleteUser(username);
	}
	
}
