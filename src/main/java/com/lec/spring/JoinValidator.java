package com.lec.spring;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.lec.spring.domain.UserDTO;

public class JoinValidator implements Validator{
	
	// 메일 정규식 표현	
//	private static final String emailRegExp =
//            "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@" +
//            "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
//	
//	
//	private static final String regExpId = "/^[0-9a-z]+$/{6}";
//
	private Pattern pattern;
//	
//	public void RegisterRequestValidator() {
//		Empattern = Pattern.compile(emailRegExp);
//	}


	@Override
	public boolean supports(Class<?> clazz) {
		
		return UserDTO.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		UserDTO dto = (UserDTO)target;
		
		
		// 아이디 유효성 검사
		String m_id = dto.getM_id();
		if(m_id == null || m_id.trim().isEmpty()) {
			System.out.println("id 오류 : 아이디를 입력해야 합니다.");
			errors.rejectValue("m_id", "emptyid");
		} else {
//			Matcher matcher = pattern.matcher(m_id);
//			if(!matcher.matches()) {
//				 errors.rejectValue("email", "bad");
//				 System.out.println("mail 오류 : 올 바른메일을 입력해야 합니다.");
			System.out.println("아이디 = " + m_id);
			System.out.println("패턴 검사 : " + Pattern.matches("^[0-9a-z]{6,15}$", m_id));
			if(!Pattern.matches("^[0-9a-z]{6,15}$", m_id)) {
				errors.rejectValue("m_id", "bad");
				System.out.println("id 오류 : 올바른 아이디를 입력해야 합니다.");
			}
		}
		
		
		
		// 패스워드 유효성 검사
		String m_password = dto.getM_password();
		if(m_password == null || m_password.trim().isEmpty()) {
			System.out.println("password 오류 : 비밀번호를 입력해야 합니다.");
			errors.rejectValue("m_password", "emptyPassword");
		}
		
		// 이름 유효성 검사
		String m_name = dto.getM_name();
		if(m_name == null || m_name.trim().isEmpty()) {
			System.out.println("name 오류 : 반드시 한글자라도 입력해야 합니다");
			errors.rejectValue("m_name", "emptyName");
		}
		
		// 핸드폰 유효성 검사
		String m_phone = dto.getM_phone();
		if(m_phone == null || m_phone.trim().isEmpty()) {
			System.out.println("phone 오류 : 핸드폰 번호를 입력해야 합니다.");
			errors.rejectValue("m_phone", "emptyphone");
		}
		
		// 메일 유효성 검사
		String m_mail = dto.getM_mail();
		if(m_mail == null || m_mail.trim().isEmpty()) {
			System.out.println("mail 오류 : 메일을 입력해야 합니다.");
			errors.rejectValue("m_mail", "emptymail");
		} else {
//			Matcher matcher = pattern.matcher(m_mail);
//			if(!matcher.matches()) {
//				 errors.rejectValue("email", "bad");
//				 System.out.println("mail 오류 : 올 바른메일을 입력해야 합니다.");
//			}
			if(!Pattern.matches( "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@" +
            "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$", m_mail)) {
				errors.rejectValue("m_mail", "bad");
				System.out.println("mail 오류 : 올 바른메일을 입력해야 합니다.");
			}
		}
		
		// 주소 유효성 검사
		String m_addr = dto.getM_addr();
		if(m_addr == null || m_addr.trim().isEmpty()) {
			System.out.println("addr 오류 : 을 입력해야 합니다.");
			errors.rejectValue("m_addr", "emptyaddr");
		} 
		
		
	}



	


}
