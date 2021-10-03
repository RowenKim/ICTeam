package com.lec.spring.domain;

import java.util.List;

public interface Won_CrawlingDAO {
	
	// 크롤링 한 값 ic_product에 insert
	public abstract int insertSnack(Won_CrawlingDTO dto);
	
	// 크롤링 한 값 ic_product에 insert
	public abstract int insertHealth(Won_CrawlingDTO dto);
	
	// DB에서 스낵 정보만 뺴오기 
	public abstract List<Won_CrawlingDTO> selectSnack();
	
}
