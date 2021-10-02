package com.lec.spring.crawling;

import java.util.List;

public interface Seoha_DAO {
	
	// 전체 SELECT
	public abstract List<VegetablesDTO> select();
	
	// 데이터 넣어주기
	public abstract int insert(VegetablesDTO dto);
}




