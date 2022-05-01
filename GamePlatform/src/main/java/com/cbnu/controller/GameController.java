package com.cbnu.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
@RequestMapping("/game/*")
@AllArgsConstructor
public class GameController {
 private static final int PRETTY_PRINT_INDENT_FACTOR = 4;

	
	@RequestMapping(value = "/details", method = RequestMethod.GET)	// == getMapping
	public String details(Locale locale, Model model) {
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "gameDetails";
	}
	

}
