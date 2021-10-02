package com.lec.spring.crawling;

import java.util.List;

public interface FruitCrawlingDAO {
	
	public abstract List<FruitDTO> select();
	public abstract int insert(FruitDTO dto);
	
}
