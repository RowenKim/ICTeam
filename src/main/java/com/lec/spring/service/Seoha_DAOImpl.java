package com.lec.spring.service;


import org.apache.ibatis.session.SqlSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lec.spring.crawling.Seoha_DAO;
import com.lec.spring.crawling.VegetablesDTO;
import com.lec.spring.domain.BasketListDTO;
import com.lec.spring.domain.OrderDTO;
import com.lec.spring.domain.PayDTO;
import com.lec.spring.domain.ShippingDTO;

import java.util.List;




@Repository
public class Seoha_DAOImpl implements Seoha_DAO {

	private Seoha_DAO mapper;
	
	@Autowired
	public Seoha_DAOImpl(SqlSession sqlSession) {
		System.out.println("WriteDAOImpl() 생성");
		mapper = sqlSession.getMapper(Seoha_DAO.class);
	}


	@Override
	public int insert(VegetablesDTO dto) {
		return mapper.insert(dto);
	}
	
	@Override
	public List<VegetablesDTO> select() {
		return mapper.select();
	}
	
	@Override
	public List<BasketListDTO> select1() {
		return mapper.select1();
	}


	@Override
	public int deleteByUid(int uid) {
		return mapper.deleteByUid(uid);
	}


	@Override
	public int insertOrder(OrderDTO dto) {
		return mapper.insertOrder(dto);
	}


	@Override
	public List<OrderDTO> selectOrder() {
		
		return mapper.selectOrder();
	}


	@Override
	public int insertPay(PayDTO dto) {
		return mapper.insertPay(dto);
	}

	// 주문내역 불러오기
	@Override
	public List<PayDTO> selectPay() {
		
		return mapper.selectPay();
	}

	//결제하면 배송 테이블 생성
	@Override
	public int insertShipping(ShippingDTO dto1) {
	
		return mapper.insertShipping(dto1);
	}

	// 주문내역 배송 상태 불러오기
	@Override
	public List<ShippingDTO> selectShipping() {
		return mapper.selectShipping();
	}


	@Override
	public List<PayDTO> selectByUidPay(int p_uid) {
		return mapper.selectByUidPay(p_uid);
	}

	// 주문내역 삭제
	@Override
	public int updatePay(int p_uid) {
		return mapper.updatePay(p_uid);
	}

	//결제하기시 order테이블 삭제
	@Override
	public int deleteByUidOrder(OrderDTO dtoOrder) {
		return mapper.deleteByUidOrder(dtoOrder);
	}


	//메인 인덱스
	@Override
	public List<VegetablesDTO> selectfruit() {
		return mapper.selectfruit();
	}


	@Override
	public List<VegetablesDTO> selectmeat() {
		return mapper.selectmeat();
	}


	@Override
	public List<VegetablesDTO> selectsnack() {
		return mapper.selectsnack();
	}


	@Override
	public List<VegetablesDTO> selecthealth() {
		return mapper.selecthealth();
	}


	@Override
	public List<VegetablesDTO> selectvegetable() {
		// TODO Auto-generated method stub
		return mapper.selectvegetable();
	}

	



}
