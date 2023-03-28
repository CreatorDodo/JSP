package com.glory.board;

import java.util.List;
import java.util.Map;

public interface BoardRepository {

	void setNewBoard(Board board);

	List<Board> getAllBoardList();

	Board getBoardById(String bId);

	void replyNewBoard(Map<String, Object> map);

	List<Board> getReplyById(String bid);

	void updateStatus(Map<String, Object> status);
	
	
	
	
}
