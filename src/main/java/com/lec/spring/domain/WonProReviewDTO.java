package com.lec.spring.domain;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Builder
@Getter
@Setter
public class WonProReviewDTO {
	private int r_uid;
	private String r_content;
	private String r_img;
	private String r_date;
	private String r_title;
	private int m_uid;
	private int pro_uid;
	
	
	
	
	public WonProReviewDTO(int r_uid, String r_content, String r_img, String r_date, String r_title, int m_uid,
			int pro_uid) {
		super();
		this.r_uid = r_uid;
		this.r_content = r_content;
		this.r_img = r_img;
		this.r_date = r_date;
		this.r_title = r_title;
		this.m_uid = m_uid;
		this.pro_uid = pro_uid;
	}




	public WonProReviewDTO() {
		super();
	}
	
	
}
