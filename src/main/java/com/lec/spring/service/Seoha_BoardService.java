package com.lec.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lec.spring.crawling.Seoha_DAO;
import com.lec.spring.crawling.VegetablesDTO;
import com.lec.spring.domain.BasketListDTO;
import com.lec.spring.domain.OrderDTO;
import com.lec.spring.domain.PayDTO;
import com.lec.spring.domain.ShippingDTO;

@Service
public class Seoha_BoardService {
	Seoha_DAO dao;
	
	@Autowired
	public void setDao(Seoha_DAO dao) {
		this.dao = dao;
	}
	
	public Seoha_BoardService() {
		System.out.println("BoardServcie() 생성");
		
	}
	public int write(VegetablesDTO dto) {
		return dao.insert(dto);
	}
	// 서하 추가한 서비스 
	
	//장바구니 리스트 부분
	public List<BasketListDTO> list() {
		
		return dao.select1();
	}
	//장바구니에 담긴 테이블 삭제
	public Object deleteByUid(int uid) {
		
		return dao.deleteByUid(uid);
	}

	//주문하기 테이블에 저장
	public int insertOrder(OrderDTO dto) {
		return dao.insertOrder(dto);
	}
	
	//주문하기 주문정보 불러오기
	public List<OrderDTO> listOrder() {
		
		return dao.selectOrder();
	}

	//결제하기 테이블에 저장
	public int insertPay(PayDTO dto) {
		System.out.println("서비스 진입 성공" + dto);
		return dao.insertPay(dto);
	}

	//주문내역 불러오기
	public List<PayDTO> listPay() {
		
		return dao.selectPay();
	}

	
	//주문내역 배송 상태 불러오기
	public List<ShippingDTO> listShipping() {
		return dao.selectShipping();
	}

	@Transactional
	public List <PayDTO> viewByUidPay(int p_uid) {
		return dao.selectByUidPay(p_uid);
	}

	// 주문내역 업데이트
	public int updatePay(int p_uid) {
		
		return dao.updatePay(p_uid);
	}

	public int deleteByUidOrder(OrderDTO dtoOrder) {
	
		return dao.deleteByUidOrder(dtoOrder);
	}
	
	public List<VegetablesDTO> selectfruit() {
		
		return dao.selectfruit();
	}
	
	public List<VegetablesDTO> selectmeat() {
		
		return dao.selectmeat();
	}

	public List<VegetablesDTO> selectsnack() {
	
	return dao.selectsnack();
	}

	public List<VegetablesDTO> selecthealth() {
	
	return dao.selecthealth();
	}

	public List<VegetablesDTO> selectvegetable() {
		// TODO Auto-generated method stub
		return dao.selectvegetable();
	}

	
	
	
}
