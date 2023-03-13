package com.carshop.controller;

import java.util.*;

public interface CarService {
	
	List<CarDTO> getAllCarList();

	List<CarDTO> getCarListByCategory(String carCategory);
	
	CarDTO getCarById(String carId);
	
	void setNewCar(CarDTO car);
	
	void deleteCar(String carId);
	
}
