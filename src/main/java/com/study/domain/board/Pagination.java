package com.study.domain.board;

import lombok.Data;

@Data
public class Pagination {
	private int right;
	private int left;
	private int last;
	private int current;
	private int prevButton;
	private int nextButton;
	private boolean next;
	private boolean prev;
}
