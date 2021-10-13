package com.lec.spring;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.lec.spring.domain.PayDTO;


public class checkOutValidator implements Validator{
	
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
		
		return PayDTO.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		PayDTO dto = (PayDTO)target;
		
		
		
		// 핸드폰 유효성 검사
		String p_phone = dto.getP_phone();
		if(p_phone == null || p_phone.trim().isEmpty()) {
			System.out.println("phone 오류 : 핸드폰 번호를 입력해야 합니다.");
			errors.rejectValue("p_phone", "emptyphone");
		}
		
		// 주소 유효성 검사
		String p_addr1 = dto.getP_addr1();
		if(p_addr1 == null || p_addr1.trim().isEmpty()) {
			System.out.println("addr 오류 : 을 입력해야 합니다.");
			errors.rejectValue("p_addr", "emptyaddr");
		} 
		
		// 주소 유효성 검사
		String p_addr2 = dto.getP_addr2();
		if(p_addr2 == null || p_addr2.trim().isEmpty()) {
			System.out.println("addr 오류 : 을 입력해야 합니다.");
			errors.rejectValue("p_addr", "emptyaddr");
		} 
		
		// 배송요청 유효성 검사
		String p_message = dto.getP_message();
		if(p_message == null || p_message.trim().isEmpty()) {
			System.out.println("message 오류 : 을 입력해야 합니다.");
			errors.rejectValue("p_message", "emptyaddr");
		} 

		
		
	}



	


}





