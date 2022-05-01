package com.cbnu.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cbnu.dto.BoardDTO;
import com.cbnu.service.BoardService;

import lombok.extern.log4j.Log4j;
import lombok.AllArgsConstructor;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * Handles requests for the application home page.
 */
@RestController		//controller 대신 RestController를 사용하여 json형식으로 데이터  전송
@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor
public class BoardController {
 private static final int PRETTY_PRINT_INDENT_FACTOR = 4;

	private BoardService service;
	
	 @PostMapping("/submit")
	 public ResponseEntity<String> submit(@RequestParam HashMap<Object, Object> param, @RequestParam("file1") MultipartFile multi, RedirectAttributes rttr)  {
		 BoardDTO board = new BoardDTO();
		 
		 board.setTitle(param.get("title").toString());
		 board.setContent(param.get("content").toString());
		 board.setUid(param.get("uid").toString());
		 board.setUnickname(param.get("unickname").toString());
		 
		 
		 
		 service.register(board, multi);
		 
		
	 return new ResponseEntity<>("success", HttpStatus.OK);
	 }
	 
	 @GetMapping("/output")
	 public ResponseEntity<List<BoardDTO>> output(RedirectAttributes rttr) throws JsonProcessingException  {
		 
		 List<BoardDTO> board = service.output();
		 log.info(board);

		 
		
	 return new ResponseEntity<>(board, HttpStatus.OK);
	 }
}
