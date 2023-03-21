package com.carshop.board;

import java.util.List;

public interface BoardService {

	void setNewBoard(Board board);

	List<Board> getAllBoardList();

	Board getBoardById(String bid);
	
}
