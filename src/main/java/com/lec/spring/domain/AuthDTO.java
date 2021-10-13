package com.lec.spring.domain;

public class AuthDTO {
	
	private String m_id;
	private String m_auth;
	
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getM_auth() {
		return m_auth;
	}
	public void setM_auth(String m_auth) {
		this.m_auth = m_auth;
	}
	public AuthDTO(String m_id, String m_auth) {
		super();
		this.m_id = m_id;
		this.m_auth = m_auth;
	}
	public AuthDTO() {
		System.out.println("AuthDTO 생성()");
	}
	
	
	

}
