package com.lec.spring.crawling;

import java.util.List;

import com.lec.spring.domain.BasketListDTO;
import com.lec.spring.domain.MemberSDTO;
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

	//장바구니 담은 것들 주문하기 테이블로 추가
	public abstract int insertOrder(OrderDTO dto);

	//주문하기 회원정보 리스트 불러오기
	public abstract List<MemberSDTO> selectMember(int m_uid);
	
}




