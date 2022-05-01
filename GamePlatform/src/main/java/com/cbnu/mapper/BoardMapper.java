package com.cbnu.mapper;

import java.util.List;

import com.cbnu.dto.BoardDTO;

public interface BoardMapper {

	public void boardSubmit(BoardDTO board);

	public List<BoardDTO> output();

}
