package com.lec.spring.domain;

import java.sql.Date;

public class ProductQuestionDTO {
	private int proq_uid;
	private Date proq_answerDate;
	private Date proq_questionDate;
	private int proq_viweCnt;
	private String proq_status;
	private String proq_img;
	private String proq_answerContent;
	private String proq_questionContent;
	private String proq_title;
	private int m_uid;
	private int pro_uid;
	public int getProq_uid() {
		return proq_uid;
	}
	public void setProq_uid(int proq_uid) {
		this.proq_uid = proq_uid;
	}
	public Date getProq_answerDate() {
		return proq_answerDate;
	}
	public void setProq_answerDate(Date proq_answerDate) {
		this.proq_answerDate = proq_answerDate;
	}
	public Date getProq_questionDate() {
		return proq_questionDate;
	}
	public void setProq_questionDate(Date proq_questionDate) {
		this.proq_questionDate = proq_questionDate;
	}
	public int getProq_viweCnt() {
		return proq_viweCnt;
	}
	public void setProq_viweCnt(int proq_viweCnt) {
		this.proq_viweCnt = proq_viweCnt;
	}
	public String getProq_status() {
		return proq_status;
	}
	public void setProq_status(String proq_status) {
		this.proq_status = proq_status;
	}
	public String getProq_img() {
		return proq_img;
	}
	public void setProq_img(String proq_img) {
		this.proq_img = proq_img;
	}
	public String getProq_answerContent() {
		return proq_answerContent;
	}
	public void setProq_answerContent(String proq_answerContent) {
		this.proq_answerContent = proq_answerContent;
	}
	public String getProq_questionContent() {
		return proq_questionContent;
	}
	public void setProq_questionContent(String proq_questionContent) {
		this.proq_questionContent = proq_questionContent;
	}
	public String getProq_title() {
		return proq_title;
	}
	public void setProq_title(String proq_title) {
		this.proq_title = proq_title;
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
	public ProductQuestionDTO(int proq_uid, Date proq_answerDate, Date proq_questionDate, int proq_viweCnt,
			String proq_status, String proq_img, String proq_answerContent, String proq_questionContent,
			String proq_title, int m_uid, int pro_uid) {
		super();
		this.proq_uid = proq_uid;
		this.proq_answerDate = proq_answerDate;
		this.proq_questionDate = proq_questionDate;
		this.proq_viweCnt = proq_viweCnt;
		this.proq_status = proq_status;
		this.proq_img = proq_img;
		this.proq_answerContent = proq_answerContent;
		this.proq_questionContent = proq_questionContent;
		this.proq_title = proq_title;
		this.m_uid = m_uid;
		this.pro_uid = pro_uid;
	}
	public ProductQuestionDTO() {
		System.out.println("ProductQuestionDTO() 생성");
	}
	
	

}
