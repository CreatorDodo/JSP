package com.carshop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CarServiceImpl implements CarService{

	@Autowired
	private CarRepository carRepository;
	
	@Override
	public List<CarDTO> getAllCarList() {
		return carRepository.getAllCarList();
	}

	public List<CarDTO> getCarListByCategory(String category) {
		List<CarDTO> carsByCategory = carRepository.getCarListByCategory(category);
		return carsByCategory;
	}

	@Override
	public CarDTO getCarById(String carId) {
		
		CarDTO carById = carRepository.getCarById(carId);
		
		return carById;
	}

	@Override
	public void setNewCar(CarDTO car) {
		carRepository.setNewCar(car);
	}

	@Override
	public void deleteCar(String carId) {
		carRepository.deleteCar(carId);
	}

	@Override
	public void setUpdateCar(CarDTO car) {
		carRepository.setUpdateCar(car);
	}
	
	
}
