package com.lec.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lec.spring.crawling.Seoha_DAO;
import com.lec.spring.crawling.VegetablesDTO;
import com.lec.spring.domain.BasketListDTO;
import com.lec.spring.domain.OrderDTO;

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

	public Object deleteByUid(int uid) {
		
		return dao.deleteByUid(uid);
	}

	//주문하기 테이블에 저장
	public int insertOrder(OrderDTO dto) {
		return dao.insertOrder(dto);
	}

	
}
