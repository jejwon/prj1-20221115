package com.study.service.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.domain.board.ReplyDto1;
import com.study.mapper.board.ReplyMapper1;

@Service
public class ReplyService1 {

	@Autowired
	private ReplyMapper1 mapper;
	
	public int addReply(ReplyDto1 reply) {
		return mapper.insert(reply);
		
	}

}
