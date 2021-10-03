package com.lec.spring.domain;

import java.util.List;

public interface Won_CrawlingDAO {
	
	// 크롤링 한 값 ic_product에 insert
	public abstract int insertSnack(Won_CrawlingDTO dto);
	
	// 크롤링 한 값 ic_product에 insert
	public abstract int insertHealth(Won_CrawlingDTO dto);
	
	// DB에서 스낵 정보만 뺴오기 
	public abstract List<Won_CrawlingDTO> selectSnack();
	
	// DB에서 건강기능 정보만 뺴오기 
	public abstract List<Won_CrawlingDTO> selectHealth();
	
	// DB 해당 uid 상품 정보 들고오기
	public abstract List<Won_CrawlingDTO> selectProInfo(int uid);
	
}
