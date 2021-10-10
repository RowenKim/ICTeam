package com.lec.spring.config;

import com.lec.spring.domain.UserDTO;
import com.lec.spring.service.UserService;

public class UserEnable {
	
	public UserService userService;
	public UserDTO dto;
	String dto1;
	
	public String userDB (UserDTO user) throws Exception {
	dto = userService.login(user);
	dto1 = dto.getEnabled();
	System.out.println("dto.getEnabled()" + dto1);
	return dto1;
	}

}
