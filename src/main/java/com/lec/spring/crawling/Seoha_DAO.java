package com.lec.spring.crawling;

import java.util.List;

import com.lec.spring.domain.BasketListDTO;
import com.lec.spring.domain.OrderDTO;



public interface Seoha_DAO {
	
	// 전체 SELECT
	public abstract List<VegetablesDTO> select();
	
	// 데이터 넣어주기
	public abstract int insert(VegetablesDTO dto);
	
	//장바구니 리스트 SELECT
	public abstract List<BasketListDTO> select1();

	//장바구니 리스트 삭제
	public abstract int deleteByUid(int uid);

	public abstract int insertOrder(OrderDTO dto);
	
}




