package com.carshop.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/cart")
public class CartController {

	@Autowired
	private CartService cartService;
	
	@Autowired
	private CarService carService;
	
	// 경로(/cart) 로 요청이 들어오면 세션id 값을 가져와서 cart/세션값으로 다시 호출
	@GetMapping
	public String requestCartId(HttpServletRequest request) {
		String sessionId = request.getSession(true).getId();
		return "redirect:/cart/" + sessionId;
		

	}
	
	// create() 매서드는 장바구니를 새로 생성하고 응답을 body로 전달한다.
	@PostMapping
	public @ResponseBody Cart create(@RequestBody Cart cart) {
		return cartService.create(cart);
		
	}
	
	// 요청 URI가 /cart/cartId로 get방식으로 요청되면 처리되는 매서드.
	// 해당 cartId의 모든 정보를 읽어서 model(cart)속성에 등록하고 cart.jsp를 호출한다.
	@GetMapping("/{cartId}")
	public String requestCartList(@PathVariable(value = "cartId") String cartId, Model model) {
		
		Cart cart =cartService.read(cartId);
		model.addAttribute("cart", cart);
		return "cart";
		
	}
	
	// 해당 cart/cartId 값으로 요청하면 해당 장바구니에 등록된 모든 정보 읽어오기
	@PutMapping("/{cartId}")
	public @ResponseBody Cart read(@PathVariable(value = "cartId") String cartId) {
		
		return cartService.read(cartId);
		
	}
	
	
	@PutMapping("/add/{cid}")
	public void addCartByNewItem(@PathVariable String cid, HttpServletRequest request) {
		//장바구니 ID. 즉, sessionID 가져오기
		String sessionId = request.getSession(true).getId();
		Cart cart = cartService.read(sessionId);	//장바구니에 등록되어 있는 모든 정보 가져오기
		if (cart == null)
			cart = cartService.create(new Cart(sessionId));
			
			//cid에 대한 정보 가져오기
			CarDTO car = carService.getCarById(cid);
			//cart 아이템으로 해당 제품을 등록
			cart.addCartItem(new CartItem(car));

			cartService.update(sessionId, cart);
		
	}
	
	
	@ResponseBody
	@RequestMapping("/ajaxAdd")
	public void ajaxAddCart(@RequestParam String cid, HttpServletRequest request) {
		//장바구니 ID. 즉, sessionID 가져오기
		String sessionId = request.getSession(true).getId();
		Cart cart = cartService.read(sessionId);	//장바구니에 등록되어 있는 모든 정보 가져오기
		if (cart == null)
			cart = cartService.create(new Cart(sessionId));
			
			//cid에 대한 정보 가져오기
			CarDTO car = carService.getCarById(cid);
			//cart 아이템으로 해당 제품을 등록
			cart.addCartItem(new CartItem(car));

			cartService.update(sessionId, cart);
		
	}
	
	@PutMapping("/remove/{cid}")
	public void removeCartByItem(@PathVariable String cid, HttpServletRequest request) {
		String sessionId = request.getSession(true).getId();
		Cart cart = cartService.read(sessionId);	//장바구니에 등록되어 있는 모든 정보 가져오기
		if (cart == null)
			cart = cartService.create(new Cart(sessionId));
			
			//cid에 대한 정보 가져오기
			CarDTO car = carService.getCarById(cid);
			
			cart.removeCartItem(new CartItem(car));
			
			//해당 장바구니에 대한 정보 갱신
			cartService.update(sessionId, cart);
		
	}
	
	@ResponseBody
	@RequestMapping("/ajaxRemove")
	public void ajaxremoveCart(@RequestParam String cid, HttpServletRequest request) {
		System.out.println(cid);
		String sessionId = request.getSession(true).getId();
		Cart cart = cartService.read(sessionId);	//장바구니에 등록되어 있는 모든 정보 가져오기
		if (cart == null)
			cart = cartService.create(new Cart(sessionId));
			
			//cid에 대한 정보 가져오기
			CarDTO car = carService.getCarById(cid);
			
			cart.removeCartItem(new CartItem(car));
			
			//해당 장바구니에 대한 정보 갱신
			cartService.update(sessionId, cart);
		
	}
	
	@DeleteMapping("/{cartId}")
	public void deleteCartList(@PathVariable(value = "cartId") String cartId) {
		cartService.delete(cartId);
	}
	
}
