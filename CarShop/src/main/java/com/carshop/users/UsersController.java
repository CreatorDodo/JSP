package com.carshop.users;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UsersController {
	
	@Autowired
	UserService userService;
	
	@GetMapping("/join")
	public String joinForm(@ModelAttribute("NewUser") User user) {
		return "users/joinform";
	}
	
	@PostMapping("/join")
	public String submitForm(@ModelAttribute("NewUser") User user) {
		userService.setNewUser(user);
		return "login";
	}

}
