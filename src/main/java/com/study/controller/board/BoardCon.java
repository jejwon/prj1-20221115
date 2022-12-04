package com.study.controller.board;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.study.domain.board.BoardDto1;
import com.study.domain.board.Pagination;
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
	public String register(BoardDto1 board, RedirectAttributes rttr) {
		//System.out.println(board);
		int cnt = service.register(board);
		
		if(cnt == 1) {
			rttr.addFlashAttribute("message", "registered!");
		} else {
			rttr.addFlashAttribute("message", "failed.");
		}
		
		return "redirect:/board1/listEx";
	}

	@GetMapping("listEx")
	public void list(
			
			@RequestParam(name="page", defaultValue="1") int page,
			@RequestParam(name="t", defaultValue="all") String type,
			@RequestParam(name="q", defaultValue="") String keyword,
			Pagination pagination, //model attr  생략
			Model model) {

		List<BoardDto1> list = service.listBoard(page, type, keyword, pagination);

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
	public String modify(BoardDto1 board, RedirectAttributes rttr) {
		int cnt = service.update(board);
		System.out.println(cnt);
		
		 if(cnt == 1) { 
			 rttr.addFlashAttribute("message", "no." + board.getId() + " post edit success"); 
			 } else { 
			 rttr.addFlashAttribute("message", "no." + board.getId() + " post failed to edit"); 
			 }
		return "redirect:/board1/listEx";
	}
	
	@PostMapping("remove")
	public String remove(int id, RedirectAttributes rttr) {
		int cnt = service.delete(id);
		
		if(cnt == 1) {
			rttr.addFlashAttribute("message", "no." + id + " post delete success");
		} else {
			rttr.addFlashAttribute("message", "no." + id + " post failed to delete");
		}
		
		return "redirect:/board1/listEx";
	}
}
