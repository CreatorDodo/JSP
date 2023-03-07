package com.carshop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartServiceImpl implements CartService {
	
	@Autowired
	private CartRepository CartRepository;
	
	@Override
	public Cart create(Cart cart) {
		return CartRepository.create(cart);
	}

	@Override
	public Cart read(String cartId) {
		return CartRepository.read(cartId);
	}

}
