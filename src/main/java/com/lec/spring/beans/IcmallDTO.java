package com.lec.spring.beans;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;


	// DTO : Data Transfer Object
//  DAO 등과 연동하여 데이터를 실어 나르는 객체
//  필요한 객체(entity) 만큼 작성
public class IcmallDTO {
	private int uid;   // wr_uid
	private String subject;  // wr_subject
	private String content;  // wr_content
	private String name;  // wr_name
	private int viewCnt;  // wr_viewcnt
	private LocalDateTime regDate;  // wr_regdate

	// 웹개발시...
	// 가능한, 다음 3가지는 이름을 일치시켜주는게 좋습니다.
	// 클래스 필드명 = DB 필드명 = form의 name명	
	
	public IcmallDTO() {
		super();
		System.out.println("IcmallDTO() 객체 생성");
	}



	
	public String getRegDateTime() {
		if(this.regDate == null) return "";
		return this.regDate.format(DateTimeFormatter.ofPattern("yyyy-MM-dd hh:mm:ss"));
	}
	
	
	// DTO class 의 toString() 오버라이딩 해주면
	// 디버깅이나 테스팅 하기 좋다.
	@Override
	public String toString() {
		return String.format("WriteDTO] %d : %s : %s : %s : %d : %s", 
				uid, subject, content, name, viewCnt, regDate);
	}
	

	
}