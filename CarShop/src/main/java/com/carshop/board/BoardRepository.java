package com.carshop.board;

import java.util.List;
import java.util.Map;

public interface BoardRepository {

	void setNewBoard(Board board);

	List<Board> getAllBoardList();

	Board getBoardById(String bId);

	void replyNewBoard(Map map);

	List<Board> getReplyById(String bid);

	void checkBoard(Map<String, Object> map);
	
	
	
	
}
