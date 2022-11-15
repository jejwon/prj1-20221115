package com.study.mapper.board;

import java.util.List;

import com.study.domain.board.BoardDto1;

public interface BoardMapper1 {

	int insert(BoardDto1 board);

	List<BoardDto1> list();

	BoardDto1 getById(int id);
	
}
