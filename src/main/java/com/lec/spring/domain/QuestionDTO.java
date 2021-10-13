package com.lec.spring.domain;

import java.sql.Date;

public class QuestionDTO {
	private int q_uid;
	private String q_title;
	private String q_content;
	private String q_answer;
	private String q_img;
	private String q_status;
	private int q_viewCnt;
	private Date q_questionDate;
	private Date q_answerDate;
	private int m_uid;
	private String m_name;
	
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public int getQ_uid() {
		return q_uid;
	}
	public void setQ_uid(int q_uid) {
		this.q_uid = q_uid;
	}
	public String getQ_title() {
		return q_title;
	}
	public void setQ_title(String q_title) {
		this.q_title = q_title;
	}
	public String getQ_content() {
		return q_content;
	}
	public void setQ_content(String q_content) {
		this.q_content = q_content;
	}
	public String getQ_answer() {
		return q_answer;
	}
	public void setQ_answer(String q_answer) {
		this.q_answer = q_answer;
	}
	public String getQ_img() {
		return q_img;
	}
	public void setQ_img(String q_img) {
		this.q_img = q_img;
	}
	public String getQ_status() {
		return q_status;
	}
	public void setQ_status(String q_status) {
		this.q_status = q_status;
	}
	public int getQ_viewCnt() {
		return q_viewCnt;
	}
	public void setQ_viewCnt(int q_viewCnt) {
		this.q_viewCnt = q_viewCnt;
	}
	public Date getQ_questionDate() {
		return q_questionDate;
	}
	public void setQ_questionDate(Date q_questionDate) {
		this.q_questionDate = q_questionDate;
	}
	public Date getQ_answerDate() {
		return q_answerDate;
	}
	public void setQ_answerDate(Date q_answerDate) {
		this.q_answerDate = q_answerDate;
	}
	public int getM_uid() {
		return m_uid;
	}
	public void setM_uid(int m_uid) {
		this.m_uid = m_uid;
	}
	public QuestionDTO(int q_uid, String q_title, String q_content, String q_answer, String q_img, String q_status,
			int q_viewCnt, Date q_questionDate, Date q_answerDate, int m_uid, String m_name) {
		super();
		this.q_uid = q_uid;
		this.q_title = q_title;
		this.q_content = q_content;
		this.q_answer = q_answer;
		this.q_img = q_img;
		this.q_status = q_status;
		this.q_viewCnt = q_viewCnt;
		this.q_questionDate = q_questionDate;
		this.q_answerDate = q_answerDate;
		this.m_uid = m_uid;
	}
	public QuestionDTO() {
		System.out.println("QuestionDTO() 생성");
	}
	
	
}
