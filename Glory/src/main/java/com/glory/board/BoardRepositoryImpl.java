package com.glory.board;

import java.util.List;
import java.util.Map;

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

	@Override
	public void replyNewBoard(Map<String, Object> map) {
		this.sqlSessionTemplate.insert("board.insert_reply", map);
	}

	@Override
	public List<Board> getReplyById(String bid) {
		return this.sqlSessionTemplate.selectList("board.select_reply", bid);
	}


	
	

}
