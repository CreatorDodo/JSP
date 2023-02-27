package com.carshop.controller;

import java.util.*;

import org.springframework.stereotype.Repository;

@Repository
public class CarRepositoryImpl implements CarRepository {

	private List<CarDTO> listOfCars = new ArrayList<CarDTO>();
	
	public CarRepositoryImpl() {
		CarDTO car1 = new CarDTO("c0001", "람보르기니", "20000", "스포츠카", "신규");
		CarDTO car2 = new CarDTO("c0002", "그랜저", "3500", "승용차", "신규");
		CarDTO car3 = new CarDTO("c0003", "아반테", "2000", "승용차", "신규");
		
		listOfCars.add(car1);
		listOfCars.add(car2);
		listOfCars.add(car3);
		
	}
	
	@Override
	public List<CarDTO> getAllCarList() {

		return listOfCars;
	}

}
