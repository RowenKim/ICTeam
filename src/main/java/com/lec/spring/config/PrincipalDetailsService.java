package com.lec.spring.config;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.lec.spring.domain.UserDTO;
import com.lec.spring.service.UserService;

@Service
public class PrincipalDetailsService implements UserDetailsService{
	
	@Autowired
	private UserService userService;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		System.out.println("loadUserByUsername(" + username + ")");
		
//		Map<String, Object> map = (Map<String, Object>) userService.findById(username);
//		
//		String enabled =(String) map.get("enabled");
		
		UserDTO user = userService.findById(username);
		
		
		
		// 해당 id 의 user 가 있다면
		if(user != null) {
			PrincipalDetails userDetails = new PrincipalDetails(user);
			userDetails.setUserService(userService);
			System.out.println("user =" + user);
			System.out.println("userDetails =" + userDetails);
			return userDetails;
		}
		
		// 찾지 못했으면!
		return null;
}

}