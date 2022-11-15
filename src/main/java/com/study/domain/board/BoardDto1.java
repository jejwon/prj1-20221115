package com.study.domain.board;

import java.time.LocalDateTime;

import lombok.Data;
@Data
public class BoardDto1 {
	private int id;
	private String title;
	private String writer;
	private String content;
	private LocalDateTime inserted; //작성 시간까지
	
}
