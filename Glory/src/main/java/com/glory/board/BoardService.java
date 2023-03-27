package com.glory.board;

import java.util.List;
import java.util.Map;

public interface BoardService {

	void setNewBoard(Board board);

	List<Board> getAllBoardList();

	Board getBoardById(String bid);

	void replyNewBoard(Map<String, Object> map);

	List<Board> getReplyById(String bid);
	
}
