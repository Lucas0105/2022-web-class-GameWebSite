package com.cbnu.service;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.cbnu.dto.BoardDTO;
import com.cbnu.mapper.BoardMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class BoardService {

	@Setter(onMethod_ = @Autowired)
	private BoardMapper mapper;
	private String path="C:\\Users\\jwj\\Desktop\\eclipse_workspation\\2022-web-class-GameWebSite\\GamePlatform\\src\\main\\webapp\\resources\\imgs";
	
	
	public void register(BoardDTO board, MultipartFile multi) {
		
	  try {
			  
		String originFilename = multi.getOriginalFilename();
		String extName = originFilename.substring(originFilename.lastIndexOf("."),originFilename.length());
			
        if(!multi.isEmpty())
        {
            File file = new File(path, multi.getOriginalFilename());
            multi.transferTo(file);
            log.info("success");
            board.setImgpath("\\resources\\imgs\\"+originFilename);
            
    		mapper.boardSubmit(board);
        }
	  	}
        catch (Exception e) {
			log.info(e);
		}
		
		
		

	}

	public List<BoardDTO> output() {
			List<BoardDTO> board = mapper.output();
		  			
			
			
		
			return board;
		}

}
