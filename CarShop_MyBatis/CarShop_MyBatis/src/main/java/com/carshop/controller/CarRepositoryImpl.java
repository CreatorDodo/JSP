package com.carshop.controller;

import java.util.*;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CarRepositoryImpl implements CarRepository {

	private List<CarDTO> listOfCars = new ArrayList<CarDTO>();
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
//	public CarRepositoryImpl() {
//		CarDTO car1 = new CarDTO("c0001", "람보르기니", "20000", "스포츠카", "신규", null);
//		CarDTO car2 = new CarDTO("c0002", "그랜저", "3500", "중형", "신규", null);
//		CarDTO car3 = new CarDTO("c0003", "아반테", "2000", "대형", "신규", null);
//		CarDTO car4 = new CarDTO("c0004", "K5", "3000", "중형", "신규", null);
//		
//		listOfCars.add(car1);
//		listOfCars.add(car2);
//		listOfCars.add(car3);
//		listOfCars.add(car4);
//		
//	}
	
	@Override
	public List<CarDTO> getAllCarList() {

		return this.sqlSessionTemplate.selectList("car.select_list");
		
	}

	public List<CarDTO> getCarListByCategory(String category) {
		List<CarDTO> carsByCategory = new ArrayList<CarDTO>();
		for (int i = 0; i < listOfCars.size(); i++) {
			CarDTO carDTO = listOfCars.get(i);
			if (category.equalsIgnoreCase(carDTO.getCcate())) {
				carsByCategory.add(carDTO);
			}
		}
		return carsByCategory;
	}

	@Override
	public CarDTO getCarById(String carId) {
		return this.sqlSessionTemplate.selectOne("car.select_detail", carId);
	}

	@Override
	public void setNewCar(CarDTO car) {
		this.sqlSessionTemplate.insert("car.insert", car);
	}
	
	@Override
	public int setUpdateCar(CarDTO car) {
		return this.sqlSessionTemplate.update("car.update", car);
	}

	@Override
	public int delete(String carId) {
		return this.sqlSessionTemplate.delete("car.delete", carId);
	}
	
}
