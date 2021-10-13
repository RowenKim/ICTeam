package com.lec.spring.domain;

import java.sql.Date;

public class ReviewDTO {
	private int r_uid;
	private String r_content;
	private String r_img;
	private Date r_date;
	private String r_title;
	private int m_uid;
	private int pro_uid;
	private String m_name;
	
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public int getR_uid() {
		return r_uid;
	}
	public void setR_uid(int r_uid) {
		this.r_uid = r_uid;
	}
	public String getR_content() {
		return r_content;
	}
	public void setR_content(String r_content) {
		this.r_content = r_content;
	}
	public String getR_img() {
		return r_img;
	}
	public void setR_img(String r_img) {
		this.r_img = r_img;
	}
	public Date getR_date() {
		return r_date;
	}
	public void setR_date(Date r_date) {
		this.r_date = r_date;
	}
	public String getR_title() {
		return r_title;
	}
	public void setR_title(String r_title) {
		this.r_title = r_title;
	}
	public int getM_uid() {
		return m_uid;
	}
	public void setM_uid(int m_uid) {
		this.m_uid = m_uid;
	}
	public int getPro_uid() {
		return pro_uid;
	}
	public void setPro_uid(int pro_uid) {
		this.pro_uid = pro_uid;
	}
	public ReviewDTO(int r_uid, String r_content, String r_img, Date r_date, String r_title, int m_uid, int pro_uid, String m_name) {
		super();
		this.r_uid = r_uid;
		this.r_content = r_content;
		this.r_img = r_img;
		this.r_date = r_date;
		this.r_title = r_title;
		this.m_uid = m_uid;
		this.pro_uid = pro_uid;
	}
	public ReviewDTO() {
		System.out.println("ReviewDTO() 생성");
	}
	
	
	
	

}
