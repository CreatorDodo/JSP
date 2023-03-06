package com.carshop.study;

import java.io.File;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/imgexam")
public class ImageController {
	
	@GetMapping("/form")
	public String requestForm() {
		return "study/imageExam";
	}
	
	@PostMapping("/form")
	public String submitForm(@RequestParam("name") String name,
							 @RequestParam("fileImage") MultipartFile file) {
		String filename = file.getOriginalFilename();
		
		File f = new File("/resources/images/" + name + "_" + filename);
		
		try {
			file.transferTo(f);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "study/imageSuccess";
	}
	
	
}
