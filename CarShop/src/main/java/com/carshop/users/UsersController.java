package com.carshop.users;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.context.HttpSessionSecurityContextRepository;
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
	
	@RequestMapping("/kakao")
	public String loginCheckKakao(HttpServletRequest req, @RequestParam Map<String, Object> auth) {
		String email = (String)auth.get("email");
		
		User user = this.userService.existUsername(email);
		
		if(user != null) {
			System.out.println("이미 회원가입한 고객입니다.");
			//DB에 존재하는 회원이므로 로그인 세션처리를 진행한다.
			//JSP 방식의 독자적인 세션처리가 아니라 Spring Security 방식의 세션처리를 해야한다.
			List<GrantedAuthority> list = new ArrayList<GrantedAuthority>();
			list.add(new SimpleGrantedAuthority("ROLE_USER"));
			
			SecurityContext sc = SecurityContextHolder.getContext();
			
			// user : 회원정보 객체, null : 비밀번호(회원정보 객체에 이미 암호화된 비밀번호가 존재하기 때문에 null로 처리해도 된다.), list : 권한 설정
			sc.setAuthentication(new UsernamePasswordAuthenticationToken(user, null, list));
			
			HttpSession session = req.getSession(true);
			
			session.setAttribute(HttpSessionSecurityContextRepository.SPRING_SECURITY_CONTEXT_KEY, sc);
			
			
			//AJAX를 사용하므로 올바른 return 값을 입력해 success 경로로 보내준다.
			return "users/list";
		}else {
			System.out.println("회원가입 가능합니다.");
			//AJAX를 사용하므로 존재하지 않는 return 값을 입력해 error 경로로 보내준다.
			return "";
		}
		
		

	}
	
	
	@GetMapping("/joinkakao")
	public String joinkakaoForm(@RequestParam("email") String email, @ModelAttribute("NewUser") User user) {
		String username = email;
		user.setUsername(username);
		return "users/joinkakao";
	}
	
	@PostMapping("/joinkakao")
	public String submitkakaoForm(@ModelAttribute("NewUser") User user) {
		
		//Spring은 기본적으로 password를 암호화하여 DB에 등록해야만 로그인을 할 수 있도록 설정되어 있다.
		
		String encodedPassword = bCryptPasswordEncoder.encode(user.getPassword());
		user.setPassword(encodedPassword);
		userService.setNewUser(user);
		return "login";
	}
	
}
