package com.lec.spring.crawling;

import java.util.List;

import com.lec.spring.domain.BasketListDTO;
import com.lec.spring.domain.OrderDTO;
import com.lec.spring.domain.PayDTO;
import com.lec.spring.domain.ShippingDTO;



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

	//주문하기 페이지 주문내역 불러오기
	public abstract List<OrderDTO> selectOrder();

	//결제하기 테이블에 저장
	public abstract int insertPay(PayDTO dto);

	//주문내역 select
	public abstract List<PayDTO> selectPay();

	// 결제하면 배송테이블 생성
	public abstract int insertShipping(ShippingDTO dto1);

	//주문내역 배송 상태 불러오기
	public abstract List<ShippingDTO> selectShipping();

	// 주문내역 상세 페이지 불러오기
	public abstract List<PayDTO> selectByUidPay(int p_uid);

	//주문내역 업데이트
	public abstract int updatePay(int p_uid);

	//결제하기시 order 테이블에 있는 것들 삭제
	public abstract int deleteByUidOrder(OrderDTO dtoOrder);

	//인덱스 불러오기
	public abstract List<VegetablesDTO> selectfruit();

	public abstract List<VegetablesDTO> selectmeat();

	public abstract List<VegetablesDTO> selectsnack();

	public abstract List<VegetablesDTO> selecthealth();

	public abstract List<VegetablesDTO> selectvegetable();

	
}




