package com.lec.spring.crawling;

import java.util.List;

import com.lec.spring.domain.WonSnackDTO;

public interface Won_CrawlingDAO {
	
	// 크롤링 한 값 ic_product에 insert
	public abstract int insertSnack(Won_CrawlingDTO dto);
	
	// 크롤링 한 값 ic_product에 insert
	public abstract int insertHealth(Won_CrawlingDTO dto);
	
	// 스낵 리스트 전체 SELECT() 
	public abstract List<WonSnackDTO> selectSnack();
}
