package com.carshop.controller;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@RequestMapping("/cars")
@Controller
public class CarController {
	
	@Autowired
	private CarService carService;
	
	@RequestMapping
	public String CarList(Model model) {
		List<CarDTO> list = carService.getAllCarList();
		model.addAttribute("carList", list);
		return "cars";
	}

	@GetMapping("/{ccate}")
	public String requestCarsByCategory(@PathVariable("ccate") String carCategory, Model model) {
		List<CarDTO> carsByCategory = carService.getCarListByCategory(carCategory);
		model.addAttribute("carList", carsByCategory);
		return "cars";
	}
	
	@GetMapping("/car")
	public String requestCarById(@RequestParam("id") String carId, Model model) {
		CarDTO carById = carService.getCarById(carId);
		model.addAttribute("car", carById);
		return "car";
	}
	
	@GetMapping("/add")
	public String requestaddCarForm(@ModelAttribute("NewCar") CarDTO car) {
		return "addCar";
	}
	
	@RequestMapping("/product")
	public String product(Model model) {
		List<CarDTO> list = carService.getAllCarList();
		model.addAttribute("carList", list);
		return "product";
	}
	
	@ResponseBody
	@RequestMapping("/removeProduct")
	public void ajaxremoveProduct(@RequestParam String carId) {
			carService.deleteCar(carId);
	}
	
	@Resource(name = "uploadPath")
	private String uploadPath;
	
//	@PostMapping("/add")
//	public String submitAddNewCar(@ModelAttribute("NewCar") CarDTO car, HttpServletRequest request) {
//		
//		MultipartFile carimage = car.getCarimage();
//		String saveName = carimage.getOriginalFilename();
//		
////		String uploadpath = request.getRealPath("/resources/images");
//		
////		File saveFile = new File("C:\\upload", saveName);
//		File saveFile = new File(uploadPath + "\\images", saveName);
////		System.out.println(saveFile.getPath());
//
//		
//		if (carimage != null && !carimage.isEmpty()) {
//			try {
//				carimage.transferTo(saveFile);
//			} catch (Exception e) {
////				throw new RuntimeException("차량 이미지 업로드가 실패했습니다.");
//				e.printStackTrace();
//			}
//		}
//				
//				
//		carService.setNewCar(car);
//		return "redirect:/cars";
//	}
	
	@PostMapping("/add")
	public String submitAddNewCar(@ModelAttribute("NewCar") CarDTO car, HttpServletRequest request) {
		
		
		MultipartFile carimage = car.getCarimage();
		String saveName = carimage.getOriginalFilename();
		
		File saveFile = new File(uploadPath + "\\images", saveName);

		
		if (carimage != null && !carimage.isEmpty()) {
			try {
				carimage.transferTo(saveFile);
				car.setCfilename(saveName);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
				
				
		carService.setNewCar(car);
		return "redirect:/cars";
	}
	
	@GetMapping("/update")
	public String requestUpdateCarForm(@RequestParam("cid") String carId, Model model) {
		
		CarDTO carById = carService.getCarById(carId);
		model.addAttribute("updateCar", carById);
		
		return "update";
	}
	
	@PostMapping("/update")
	public String submitUpdateCar(@ModelAttribute("updateCar") CarDTO car, HttpServletRequest request) {
		
		
		MultipartFile carimage = car.getCarimage();
		String fileName = carimage.getOriginalFilename();
		
		File saveFile = new File(uploadPath + "\\images", fileName);

		
		if (carimage != null && !carimage.isEmpty()) {
			try {
				carimage.transferTo(saveFile);
				car.setCfilename(fileName);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
				
				
		carService.setUpdateCar(car);
		return "redirect:/cars";
	}
	
	@ModelAttribute
	public void addAttributes(Model model) {
		model.addAttribute("addTitle", "신규 차량 등록");
	}
	
	@PostMapping("/login")
	public String loginMethod() {
		return "login";
	}
	
	@RequestMapping("/loginfailed")
	public String loginfailedMethod() {
		return "login";
	}
	
	@RequestMapping("/logout")
	public String logoutMethod() {
		return "login";
	}
	
}
