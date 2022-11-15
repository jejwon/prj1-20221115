package com.study.controller.board;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.study.domain.board.BoardDto1;
import com.study.service.board.BoardService1;

@Controller
@RequestMapping("board1")
public class BoardCon {
	@Autowired
	private BoardService1 service;

	@GetMapping("registerEx")
	public void register() {
		// 메소드 자체로 링크 생성
	}

	@PostMapping("registerEx")
	public String register(BoardDto1 board) {
		System.out.println(board);
		service.register(board);
		return "redirect:/board1/listEx";
	}

	@GetMapping("listEx")
	public void list(Model model) {

		List<BoardDto1> list = service.listBoard();

		model.addAttribute("boardList", list);
	}

	@GetMapping("getEx")
	public void get(int id, Model model) {
		BoardDto1 board = service.get(id);

		model.addAttribute("board", board);
	}
	
	@GetMapping("modifyEx")
	public void modify(int id, Model model) {
		BoardDto1 board = service.get(id);
		model.addAttribute("board", board);
	}
	
	@PostMapping("modifyEx")
	public String modify(BoardDto1 board, RedirectAttributes rttr, int id) {
		int cnt = service.update(board);
		
		if(cnt == 1) {
			rttr.addFlashAttribute("message", board.getId() + "번 게시물이 수정되었습니다.");
		} else {
			rttr.addFlashAttribute("message", board.getId() + "번 게시물이 수정되었습니다.");
		}
		
		return "redirect:/board1/listEx";
	}
	
	@PostMapping("remove")
	public String remove(int id, RedirectAttributes rttr) {
		int cnt = service.delete(id);
		
		if(cnt == 1) {
			rttr.addFlashAttribute("message", id + "번 게시물이 삭제되었습니다.");
		} else {
			rttr.addFlashAttribute("message", id + "번 게시물이 삭제되지 않았습니다.");
		}
		
		return "redirect:/board1/listEx";
	}
}
