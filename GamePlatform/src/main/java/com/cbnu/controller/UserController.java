package com.cbnu.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cbnu.dto.UserDTO;
import com.cbnu.service.UserService;

import lombok.extern.log4j.Log4j;
import lombok.AllArgsConstructor;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * Handles requests for the application home page.
 */
@RestController		//controller 대신 RestController를 사용하여 json형식으로 데이터  전송
@Log4j
@RequestMapping("/user/*")
@AllArgsConstructor
public class UserController {
 private static final int PRETTY_PRINT_INDENT_FACTOR = 4;

	private UserService service;
	
	 @PostMapping("/login")
	 public ResponseEntity<String> test(@RequestBody UserDTO user, RedirectAttributes rttr) throws JsonProcessingException {
	
		 UserDTO result = service.login(user);
		
		ObjectMapper mapper = new ObjectMapper();
		String samString = mapper.writeValueAsString(result);

		
	 return new ResponseEntity<>(samString, HttpStatus.OK);
	 }
	
	 
	 
	 
	 
	 @PostMapping("/register")
	 public String register(@RequestBody UserDTO user, RedirectAttributes rttr) {
	
	 log.info("register: " + user);
	
	 service.register(user);
		
	 rttr.addFlashAttribute("result");
	 
	 return "redirect:/";
	 }
}
