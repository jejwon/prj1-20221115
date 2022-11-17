package com.study.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.AutoConfigureOrder;
import org.springframework.stereotype.Component;

import com.study.domain.board.ReplyDto;
import com.study.mapper.board.ReplyMapper;

@Component//("이름결정 가능")
public class ReplySecurity {
	@Autowired
	private ReplyMapper mapper;
	
	public boolean checkWriter(String userName, int id) {
		
		ReplyDto reply = mapper.selectById(id);
		
		return reply.getWriter().equals(userName);
	}
}
