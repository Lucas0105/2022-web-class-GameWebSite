package com.cbnu.service;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import com.cbnu.dto.UserDTO;
import com.cbnu.mapper.UserMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class UserService {

	@Setter(onMethod_ = @Autowired)
	private UserMapper mapper;

	public UserDTO login(UserDTO user) {
		
		log.info("success");
		
		UserDTO result = mapper.userLogin(user);
		
		log.info(result);
		
		return result;
	}
	
	public void register(UserDTO user) {
		
		log.info("success");
		
		mapper.userRegister(user);
	}
	

	
}
