package com.carshop.controller;

import java.util.HashMap;
import java.util.Map;

public class CartRepositoryImpl implements CartRepository {
	
	private Map<String, Cart> listOfCarts;
	
	public CartRepositoryImpl() {
		listOfCarts = new HashMap<String, Cart>();
	}
	
	
	
	@Override
	public Cart create(Cart cart) {
		if(listOfCarts.keySet().contains(cart.getCartId())) {
			throw new IllegalArgumentException(String.format("장바구니를 생성할 수 없습니다. 자동차 ID가 이미 존재합니다.", cart.getCartId()));
		}else {
			listOfCarts.put(cart.getCartId(), cart);
		}
		return cart;
	}

	@Override
	public Cart read(String cartId) {
		// cartId 를 이용하여 장바구니에 등록된 모든 정보를 가져온다.
		return listOfCarts.get(cartId);
	}

}
