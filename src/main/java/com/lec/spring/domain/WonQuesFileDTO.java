package com.lec.spring.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class WonQuesFileDTO {
	private int pqfUid; // 상품Q&A File uid (PK)
	private int proqUid; // 상품 Q&A uid (FK)
	private String originalName; // 원본 파일명
	private String ques_path; // 파일 경로
	private String saveName; // 저장 파일명
	private long size; // 파일 크기
	private int deleteuid;
	
	public WonQuesFileDTO(int pqfUid, int proqUid, String originalName, String ques_path, String saveName, long size) {
		super();
		this.pqfUid = pqfUid;
		this.proqUid = proqUid;
		this.originalName = originalName;
		this.ques_path = ques_path;
		this.saveName = saveName;
		this.size = size;
	}
	public WonQuesFileDTO() {
		super();
	}
	public WonQuesFileDTO(int deleteuid) {
		super();
		this.deleteuid = deleteuid;
	}
	
	
	
	
}
