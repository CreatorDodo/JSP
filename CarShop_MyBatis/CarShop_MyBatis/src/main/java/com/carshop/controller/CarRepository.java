package com.carshop.controller;

import java.util.List;

public interface CarRepository {
	
	List<CarDTO> getAllCarList();

	List<CarDTO> getCarListByCategory(String category);
	
	CarDTO getCarById(String carId);

	void setNewCar(CarDTO car);

	int setUpdateCar(CarDTO car);

	int delete(String carId);


	
}
