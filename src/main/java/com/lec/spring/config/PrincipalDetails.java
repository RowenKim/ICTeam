package com.lec.spring.config;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.lec.spring.domain.UserDTO;
import com.lec.spring.service.UserService;

public class PrincipalDetails implements UserDetails {
	
	private UserService userService; 

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	private UserDTO user;
	// 데이터베이스 유저 가져오기
	
	
	
	public PrincipalDetails(UserDTO user){
		System.out.println("PrincipalDetails(user) 생성: " + user);
		try {
			user= userService.login(user);
			System.out.println("user : " + user);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.user = user;
	}
	
	
	
	



	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		System.out.println("getAuthorities() 호출");
		
		Collection<GrantedAuthority> collect = new ArrayList<>();
		
		List<String> list = userService.selectAuthoritiesById(user.getM_id());
		
		for(String auth : list) {
			collect.add(new GrantedAuthority() {
				
				@Override
				public String getAuthority() {
					return auth;
				}
			});
		}		
		
		return collect;
	}


	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		String m_password = user.getM_password();
		return m_password;
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return user.getM_id();
	}
	
	public void setPassword(String pw) {
		user.setM_password(pw);
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}


	UserDTO dto;
	String dto1;
	// 유저정보 리턴
	public void userDB (UserDTO user) throws Exception {
		dto = userService.login(user);
		dto1 = dto.getEnabled();
		System.out.println("dto.getEnabled()" + dto1);
		
	}
	
	// 계정이 사용하능한 계정인지를 리턴한다
	@Override
	public boolean isEnabled() {
		System.out.println("계정여부 : " + dto1);
		
	
		if(user.getEnabled().equals("1")) {
			System.out.println("계정여부 : " + dto1);
			return true;
		}
		else {
			System.out.println("계정여부 : " + user);
			return false;
		}
		
	}
	

}
