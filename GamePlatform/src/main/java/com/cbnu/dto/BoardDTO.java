package com.cbnu.dto;

import lombok.Data;

@Data
public class BoardDTO {
	private int boardid;
	private String title;
	private String content;
	private String imgpath;
	private String uid;
	private String unickname;
}
