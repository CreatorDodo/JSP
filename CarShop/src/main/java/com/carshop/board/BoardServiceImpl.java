package com.carshop.board;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired		// DI 의존성 주입 IoC 제어의 역전
	private BoardRepository boardRepository;
	
	@Override
	public List<Board> getAllBoardList() {	
		return boardRepository.getAllBoardList();
	}

	@Override
	public Board getBoardById(String bid) {
		
		Board boardById = boardRepository.getBoardById(bid);
		
		return boardById;
	}

	@Override
	public void setNewBoard(Board board) {
		boardRepository.setNewBoard(board);
	}

	@Override
	public void replyNewBoard(Map map) {
		boardRepository.replyNewBoard(map);
		
	}

	@Override
	public List<Board> getReplyById(String bid) {
		return boardRepository.getReplyById(bid);
	}

	@Override
	public void checkBoard(Map<String, Object> map) {
		boardRepository.checkBoard(map);
	}

	
	
	
}
