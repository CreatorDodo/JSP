package com.glory.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ExceptionController {

	@RequestMapping("/errorcommon")
	public void errorCommon() {
		

		    // throw로 강제 예외 발생
		    throw new ArithmeticException("강제 예외 발생!!!");

		
	}
	

	
}
