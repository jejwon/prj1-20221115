package com.study.mapper.board;

import java.util.List;


import com.study.domain.board.BoardDto1;

public interface BoardMapper1 {

	int insert(BoardDto1 board);

	List<BoardDto1> list(int offset, int some, String type, String keyword);

	BoardDto1 getById(int id);

	int update(BoardDto1 board);

	int remove(int id);

	int countAll(String type, String keyword);
	
}
