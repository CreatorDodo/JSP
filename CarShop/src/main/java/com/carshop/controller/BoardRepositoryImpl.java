package com.carshop.controller;

import java.util.*;

import org.springframework.stereotype.Repository;

@Repository
public class BoardRepositoryImpl implements BoardRepository {

	private List<BoardDTO> listOfBoards = new ArrayList<BoardDTO>();
	
	public BoardRepositoryImpl() {
		BoardDTO board1 = new BoardDTO("가입인사", "가입했어요.", "하나", "2023/02/27");
		BoardDTO board2 = new BoardDTO("등록", "등록했어요.", "두리", "2023/02/22");
		BoardDTO board3 = new BoardDTO("등업", "등업부탁해요.", "석삼", "2023/02/21");
		
		listOfBoards.add(board1);
		listOfBoards.add(board2);
		listOfBoards.add(board3);
		
	}
	
	@Override
	public List<BoardDTO> getAllBoardList() {

		return listOfBoards;
	}

}
