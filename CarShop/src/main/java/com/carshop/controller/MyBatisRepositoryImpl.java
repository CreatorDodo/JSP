package com.carshop.controller;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Repository;

//해당 Repository에 우선순위를 지정한다.
@Primary
@Repository
public class MyBatisRepositoryImpl implements CarRepository {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<CarDTO> getAllCarList() {		
		return this.sqlSessionTemplate.selectList("car.select_list");
	}

	@Override
	public List<CarDTO> getCarListByCategory(String category) {
		return null;
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
	public void deleteCar(String carId) {
		this.sqlSessionTemplate.delete("car.delete", carId);

	}

	@Override
	public void setUpdateCar(CarDTO car) {
		this.sqlSessionTemplate.update("car.update", car);
	}

}
