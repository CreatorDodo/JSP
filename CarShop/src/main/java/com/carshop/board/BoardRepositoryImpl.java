package com.carshop.board;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardRepositoryImpl implements BoardRepository {


	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<Board> getAllBoardList() {		
		return this.sqlSessionTemplate.selectList("board.select_list");
	}

	@Override
	public Board getBoardById(String bId) {
		return this.sqlSessionTemplate.selectOne("board.select_detail", bId);
	}

	@Override
	public void setNewBoard(Board board) {
		this.sqlSessionTemplate.insert("board.insert", board);
	}

//	@Override
//	public void deleteCar(String carId) {
//		this.sqlSessionTemplate.delete("car.delete", carId);
//
//	}
//
//	@Override
//	public void setUpdateCar(CarDTO car) {
//		this.sqlSessionTemplate.update("car.update", car);
//	}

}
