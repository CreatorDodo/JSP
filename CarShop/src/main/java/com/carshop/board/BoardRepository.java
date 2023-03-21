package com.carshop.board;

import java.util.List;

public interface BoardRepository {

	void setNewBoard(Board board);

	List<Board> getAllBoardList();

	Board getBoardById(String bId);
	
	
	
	
}
