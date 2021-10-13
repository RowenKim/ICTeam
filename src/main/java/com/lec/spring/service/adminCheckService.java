package com.lec.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lec.spring.domain.AdminOrderStatusDTO;
import com.lec.spring.domain.adminCheckDAO;

@Service
public class adminCheckService {

	adminCheckDAO dao;
	
	
	@Autowired
	public void setDAO(adminCheckDAO dao) {
		this.dao = dao;
	}
	
	// 상품준비중 count
	public int countReadyPro() {
		System.out.println("서비스 진입 성공");
		return dao.countReadyPro();
	}
	
	
	// 배송중 count
	public int countShippingPro() {
		return dao.countShippingPro();
	};
	
	// 배송완료 count
	public int countShippingOkPro() {
		return dao.countShippingOkPro();
	};
	
	// 구매확정 count
	public int countBuyOkPro() {
		return dao.countBuyOkPro();
	};
	
	// 교환접수 count 
	public int countExchangePro() {
		return dao.countExchangePro();
	};
	
	// 환불접수 count
	public int countRefundPro() {
		return dao.countRefundPro();
	};
	
	// 결제완료 count
	public int countPayOk() {
		return dao.countPayOk();
	};
	
	// 결제대기 count
	public int countNotpay() {
		return dao.countNotpay();
	};
	
	// 리뷰 count
	public int countReview() {
		return dao.countReview();
	};
	
	// 상품Q&A count
	public int countProQA() {
		return dao.countProQA();
	};
	
	// 신규회원 1일전 count
	public int countNewMemOnedayAgo() {
		return dao.countNewMemOnedayAgo();
	};
	
	// 신규회원 2일전 count
	public int countNewMemTwodayAgo() {
		return dao.countNewMemTwodayAgo();
	};
	
	// 신규회원 3일전 count
	public int countNewMemThreedayAgo() {
		return dao.countNewMemThreedayAgo();
	};
	
	// 신규회원 4일전 count
	public int countNewMemFourdayAgo() {
		return dao.countNewMemFourdayAgo();
	};
	
	// 신규회원 5일전 count
	public int countNewMemfivedayAgo() {
		return dao.countNewMemfivedayAgo();
	};
	
	// 신규회원 6일전 count
	public int countNewMemSixdayAgo() {
		return dao.countNewMemSixdayAgo();
	};
	
	// 신규회원 7일전 count
	public int countNewMemSevendayAgo() {
		return dao.countNewMemSevendayAgo();
	};
	
	// 전체회원 1일전 count
	public int countAllMemOnedayAgo() {
		return dao.countAllMemOnedayAgo();
	};
	
	// 전체회원 2일전 count
	public int countAllMemTwodayAgo() {
		return dao.countAllMemTwodayAgo();
	};
	
	// 전체회원 3일전 count
	public int countAllMemThreedayAgo() {
		return dao.countAllMemThreedayAgo();
	};
	
	// 전체회원 4일전 count
	public int countAllMemFourdayAgo() {
		return dao.countAllMemFourdayAgo();
	};
	
	// 전체회원 5일전 count
	public int countAllMemFivedayAgo() {
		return dao.countAllMemFivedayAgo();
	};
	
	// 전체회원 6일전 count
	public int countAllMemSixdayAgo() {
		return dao.countAllMemSixdayAgo();
	};
	
	// 전체회원 7일전 count
	public int countAllMemSevendayAgo() {
		return dao.countAllMemSevendayAgo();
	};
	
	// 탈퇴회원 1일전 count
	public int countDelMemOnedayAgo() {
		return dao.countDelMemOnedayAgo();
	};
	
	// 탈퇴회원 2일전 count
	public int countDelMemTwodayAgo() {
		return dao.countDelMemTwodayAgo();
	};
	
	// 탈퇴회원 3일전 count
	public int countDelMemThreedayAgo() {
		return dao.countDelMemThreedayAgo();
	};
	
	// 탈퇴회원 4일전 count
	public int countDelMemFourdayAgo() {
		return dao.countDelMemFourdayAgo();
	};
	
	// 탈퇴회원 5일전 count
	public int countDelMemFivedayAgo() {
		return dao.countDelMemFivedayAgo();
	};
	
	// 탈퇴회원 6일전 count
	public int countDelMemSixdayAgo() {
		return dao.countDelMemSixdayAgo();
	};
	
	// 탈퇴회원 7일전 count
	public int countDelMemSevendayAgo() {
		return dao.countDelMemSevendayAgo();
	};
	
	
	// 신규회원 1~7일 사이 합계
	public int countAllMemSevenBetOneDay() {
		return dao.countAllMemSevenBetOneDay();
	}

	// 탈퇴회원 1~7일 사이 합계
	public int countDelMemSevenBetOneDay() {
		return dao.countDelMemSevenBetOneDay();
	}
	
	// 주문관리 결제완료 테이블 정보 SELECT
	public List<AdminOrderStatusDTO> statusOfshipPayOk(){
		return dao.statusOfshipPayOk();
	}
	
	// 주문관리 상품준비중 테이블 정보 SELECT
	public List<AdminOrderStatusDTO> statusOfshipPreparedPro(){
		return dao.statusOfshipPreparedPro();
	}
	// 주문관리 배송중 테이블 정보 SELECT
	public List<AdminOrderStatusDTO> statusOfshipping(){
		return dao.statusOfshipping();
	}
	// 주문관리 배송완료 테이블 정보 SELECT
	public List<AdminOrderStatusDTO> statusOfshipOk(){
		return dao.statusOfshipOk();
	}
	// 주문관리 구매확정 테이블 정보 SELECT
	public List<AdminOrderStatusDTO> statusOfshipBuyOk(){
		return dao.statusOfshipBuyOk();
	}
	// 주문관리 교환접수 테이블 정보 SELECT
	public List<AdminOrderStatusDTO> statusOfshipExchange(){
		return dao.statusOfshipExchange();
	}
	// 주문관리 환불접수 테이블 정보 SELECT
	public List<AdminOrderStatusDTO> statusOfshipRefund(){
		return dao.statusOfshipRefund();
	}
	
	
	// 결제완료 주문 shipping DB에 INSERT
	public int insertShip(int p_uid) {
		return dao.insertShip(p_uid);
	}
	
	// Shipping 생성된 p_uid 밑 컬럼 shipInto UPDATE
	public int updateShipInto(int p_uid) {
		return dao.updateShipInto(p_uid);
	}
	
	// 배송상태 UPDATE
	public int updateShipStatus(AdminOrderStatusDTO dto) {
		return dao.updateShipStatus(dto);
	}

	
}
