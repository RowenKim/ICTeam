package com.lec.spring.domain;

import java.time.LocalDateTime;

import lombok.Builder;
import lombok.Getter;
import lombok.ToString;


@ToString
@Builder
@Getter
public class WonMemberDTO {
	private int m_uid;
	private String m_id;
	private String m_name;
	private String m_mail;
	private int m_class;
	private String m_phone;
	private String m_addr;
	private String m_gender;
	private String m_birth;
	private LocalDateTime m_joinDate;
	
}
