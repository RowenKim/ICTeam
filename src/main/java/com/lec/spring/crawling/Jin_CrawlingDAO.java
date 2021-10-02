package com.lec.spring.crawling;

import java.util.List;

import com.lec.spring.domain.JinMeatDTO;

public interface Jin_CrawlingDAO {
	
	// 크롤링 한 값 ic_product에 insert
	public abstract int insertMeat(Jin_CrawlingDTO dto);
	
	
	
}

