package com.lec.spring.domain;

import java.util.List;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Builder
@Getter
@Setter
public class WonProQuestionDTO {
	private int proq_uid;
	private String proq_answerDate;
	private String proq_questionDate;
	private String proq_viewCnt;
	private String proq_status;
	private String proq_title;
	private String proq_img;
	private String proq_answerContent; 
	private String proq_questionContent;
	private int m_uid;
	private int pro_uid;
	/** 파일 변경 여부 */
	private String changeYn;

	/** 파일 인덱스 리스트 */
	private List<Integer> fileIdxs;

	
	public WonProQuestionDTO(int proq_uid, String proq_answerDate, String proq_questionDate, String proq_viewCnt,
			String proq_status, String proq_title, String proq_img, String proq_answerContent,
			String proq_questionContent, int m_uid, int pro_uid, String changeYn, List<Integer> fileIdxs) {
		super();
		this.proq_uid = proq_uid;
		this.proq_answerDate = proq_answerDate;
		this.proq_questionDate = proq_questionDate;
		this.proq_viewCnt = proq_viewCnt;
		this.proq_status = proq_status;
		this.proq_title = proq_title;
		this.proq_img = proq_img;
		this.proq_answerContent = proq_answerContent;
		this.proq_questionContent = proq_questionContent;
		this.m_uid = m_uid;
		this.pro_uid = pro_uid;
		this.changeYn = changeYn;
		this.fileIdxs = fileIdxs;
	}

	public WonProQuestionDTO() {
		super();
	}
	
	
	
}
