package com.lec.spring.domain;

import java.sql.Date;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Builder;
import lombok.ToString;

@ToString
public class UserDTO {
	private int m_uid;  // m_uid
	private String m_id;  // m_id username
	private String m_password; // m_pw password
	private String m_name;
	private String m_mail; // m_email
	private String m_phone;
	private String m_addr;
	private String m_gender;
	private String m_class;
	private Date m_birth;	
	private String enabled; // 활성화 여부
	private LocalDate m_joindate;  
	private String m_auth;
	 // m_joindate
	
	
	
	
	public int getM_uid() {
		return m_uid;
	}
	public void setM_uid(int m_uid) {
		this.m_uid = m_uid;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	
	
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
		System.out.println("getName() 호출");					
	}
	public String getM_mail() {
		return m_mail;
	}
	public void setM_mail(String m_mail) {
		this.m_mail = m_mail;
	}
	public String getM_phone() {
		return m_phone;
	}
	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}
	public String getM_addr() {
		return m_addr;
	}
	public void setM_addr(String m_addr) {
		this.m_addr = m_addr;
	}
	public String getM_gender() {
		return m_gender;
	}
	public void setM_gender(String m_gender) {
		this.m_gender = m_gender;
	}
	public Date getM_birth() {
		return m_birth;
	}
	public void setM_birth(Date m_birth) {
		this.m_birth = m_birth;
	}
//	public LocalDateTime getM_joindate() {
//		return m_joindate;
//	}
//	public void setM_joindate(LocalDateTime m_joindate) {
//		this.m_joindate = m_joindate;
//	}
	public UserDTO(int m_uid, String m_id, String m_password, String m_name, String m_mail, String m_phone, String m_addr,
			String m_gender, Date m_birth, String enabled, LocalDate m_joindate, String m_auth) {
		super();
		this.m_uid = m_uid;
		this.m_id = m_id;
		this.m_password = m_password;
		this.m_name = m_name;
		this.m_mail = m_mail;
		this.m_phone = m_phone;
		this.m_addr = m_addr;
		this.m_gender = m_gender;
		this.m_birth = m_birth;
		this.enabled = enabled;
		this.m_joindate = m_joindate;
		this.m_auth = m_auth;
	}
	public UserDTO() {
		System.out.println("UserDTO() 생성");
	}
	public String getM_password() {
		return m_password;
	}
	public void setM_password(String m_password) {
		this.m_password = m_password;
	}
	public String getEnabled() {
		return enabled;
	}
	public void setEnabled(String enabled) {
		this.enabled = enabled;
	}
	public LocalDate getM_joindate() {
		return m_joindate;
	}
	
	public String getM_joindateTime() {
		if(this.m_joindate == null) return "";
		return this.m_joindate.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
	}
	public void setM_joindate(LocalDate m_joindate) {
		this.m_joindate = m_joindate;
	}
	
	public String getM_auth() {
		return m_auth;
	}
	public void setM_auth(String m_auth) {
		this.m_auth = m_auth;
	}
	
	
	
	
	
	
}
