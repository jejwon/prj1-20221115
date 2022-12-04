package com.study.service.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.study.domain.board.BoardDto1;
import com.study.domain.board.PageInfo;
import com.study.domain.board.Pagination;
import com.study.mapper.board.BoardMapper1;

@Service
public class BoardService1 { //mapper에 넘기기
	@Autowired
	private BoardMapper1 mapper;
	
	public int register(BoardDto1 board) {

		 return mapper.insert(board);
	}

	public List<BoardDto1> listBoard(int page, String type, String keyword, Pagination pagination) {
		int some = 10; //limit query
		int offset = (page - 1) * some;
		
		int countAll = mapper.countAll(type, "%" + keyword + "%");
		int last = (countAll - 1) / some + 1;
		
		int left = (page - 1) / 10 * 10 + 1;
		int right = left + 9;
		right = Math.min(right, last);
		
		boolean prev = page > 10 ;
		boolean next = page <= ((last - 1) / 10 * 10);
		
		int prevButton = (page - 1) / 10 * 10 - 9;
		int nextButton = (page - 1) / 10 * 10 + 11;
		
		
		pagination.setLeft(left);
		pagination.setRight(right);
		pagination.setLast(last);
		pagination.setCurrent(page);
		pagination.setPrevButton(prevButton);
		pagination.setNextButton(nextButton);
		pagination.setPrev(prev);
		pagination.setNext(next);
		
		return mapper.list(offset, some, type, "%" + keyword +"%");
	}

	public BoardDto1 get(int id) {
		
		return mapper.getById(id);
	}

	public int update(BoardDto1 board) {
		
		return mapper.update(board);
		
	}

	public int delete(int id) {
		return mapper.remove(id);
	}
}
