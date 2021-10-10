package com.lec.spring.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.WebSecurityConfigurer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.util.matcher.AnyRequestMatcher;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter{
	
	
	@Bean
	public BCryptPasswordEncoder encoder() {
		return new BCryptPasswordEncoder();
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable();
		http.authorizeRequests()
		
		// ↓ /sample/user/** 주소로 들어오는 요청은 인증이 필요.
		.antMatchers("/sample/user/**").authenticated()
				
		// ↓ /sample/member/** 주소로 들어오는 요청은 '인증' 뿐 아니라 ROLE_MEMBER 나 ROLE_ADMIN 권한을 갖고 있어야 한다 ('인가')
		.antMatchers("/sample/member/**").access("hasRole('ROLE_MEMBER') or hasRole('ROLE_ADMIN')")
					
		// ↓ /sample/admin/**  주소로 들어오는 요청은 '인증' 뿐 아니라 ROLE_ADMIN 권한을 갖고 있어야 한다 ('인가')
		.antMatchers("/sample/admin/**").access("hasRole('ROLE_ADMIN')")
					
		// ↓ 그 밖의 다른 요청은 모두 permit!
		
		.anyRequest()
		.permitAll()
		
		// 접근오류(권한오류) 발생시 /login 으로 이동시키기 
		.and()
		.formLogin()
		.loginPage("/login")
		.failureHandler(failHandler())
	
		// 로그인 처리
		.usernameParameter("m_id")   // 만약 로그인 username 이 name="username" 이 아닌경우
		.passwordParameter("m_password")
		.loginProcessingUrl("/loginOk")  // "/loginOk" url 로 request 가 들어오면 시큐리티가 낚아채서 처리, 대신 로그인을 진행해준다.
								// 이와 같이 하면 Controller 에서 /longinOk 를 만들지 않아도 된다!
		
		.defaultSuccessUrl("/icmall/index")   
			// 만약 다른 특정페이지에 진입하려다 로그인 하여 성공하면 해당 페이지로 이동 (너무 편리!)
		
		//.passwordParameter(null)
		
		// 로그아웃 처리
		.and()
		.logout()
		.logoutUrl("/logout")
		.logoutSuccessUrl("/icmall/index")
		;
		
		
	}
	
	@Bean
	public CustomAuthenticationProvider provider() {
		return new CustomAuthenticationProvider();
		
	}
	

	@Bean
	public UserLoginFailHandler failHandler() {
		return new UserLoginFailHandler();
	}
	
}
