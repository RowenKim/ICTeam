package com.lec.spring.domain;
import java.util.Date;


import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


@ToString
@Builder
@Getter
@Setter
public class ServiceCenterDTO {
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
	
	
		public ServiceCenterDTO(int q_uid, String q_title, String q_content, String q_answer, String q_img, String q_status, int q_viewCnt, Date q_questionDate, Date q_answerDate, int m_uid) {
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

		public ServiceCenterDTO() {
			super();
		}
		 


}




