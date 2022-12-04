package com.study.controller.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.study.domain.board.ReplyDto1;
import com.study.service.board.ReplyService1;

@Controller
@RequestMapping("reply1")
public class ReplyCon {
	
	@Autowired
	private ReplyService1 service;
	
	@PostMapping("add")
	@ResponseBody
	public void add(@RequestBody ReplyDto1 reply) {
		System.out.println(reply);
	}
}
