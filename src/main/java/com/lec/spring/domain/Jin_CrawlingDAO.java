package com.lec.spring.domain;

import java.util.List;

public interface Jin_CrawlingDAO {
	
	// 크롤링 한 값 ic_product에 insert
			public abstract int insertMeat(Jin_CrawlingDTO dto);
			
			// DB에서 스낵 정보만 뺴오기 
			public abstract List<Jin_CrawlingDTO> selectMeat();
			
			
//			// DB 해당 uid 상품 정보 들고오기
//			public abstract List<Jin_CrawlingDTO> selectProInfo(int uid);
			
			
	}

