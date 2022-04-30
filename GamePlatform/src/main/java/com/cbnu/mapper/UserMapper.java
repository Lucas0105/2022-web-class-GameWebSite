package com.cbnu.mapper;

import com.cbnu.dto.UserDTO;

public interface UserMapper {

	public void userRegister(UserDTO user);

	public UserDTO userLogin(UserDTO user);
}
