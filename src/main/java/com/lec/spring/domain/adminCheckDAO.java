package com.lec.spring.domain;

public interface adminCheckDAO {
	
	// 상품준비중 count
	public abstract int countReadyPro();
	
	// 배송중 count
	public abstract int countShippingPro();
	
	// 배송완료 count
	public abstract int countShippingOkPro();
	
	// 구매확정 count
	public abstract int countBuyOkPro();
	
	// 교환접수 count
	public abstract int countExchangePro();
	
	// 환불접수 count
	public abstract int countRefundPro();
	
	// 결제완료 count
	public abstract int countPayOk();
	
	// 결제대기 count
	public abstract int countNotpay();
	
	// 리뷰 count
	public abstract int countReview();
	
	// 상품Q&A count
	public abstract int countProQA();
	
	// 신규회원 1일전 count
	public abstract int countNewMemOnedayAgo();
	
	// 신규회원 2일전 count
	public abstract int countNewMemTwodayAgo();
	
	// 신규회원 3일전 count
	public abstract int countNewMemThreedayAgo();
	
	// 신규회원 4일전 count
	public abstract int countNewMemFourdayAgo();
	
	// 신규회원 5일전 count
	public abstract int countNewMemfivedayAgo();
	
	// 신규회원 6일전 count
	public abstract int countNewMemSixdayAgo();
	
	// 신규회원 7일전 count
	public abstract int countNewMemSevendayAgo();
	
	// 전체회원 1일전 count
	public abstract int countAllMemOnedayAgo();
	
	// 전체회원 2일전 count
	public abstract int countAllMemTwodayAgo();
	
	// 전체회원 3일전 count
	public abstract int countAllMemThreedayAgo();
	
	// 전체회원 4일전 count
	public abstract int countAllMemFourdayAgo();
	
	// 전체회원 5일전 count
	public abstract int countAllMemFivedayAgo();
	
	// 전체회원 6일전 count
	public abstract int countAllMemSixdayAgo();
	
	// 전체회원 7일전 count
	public abstract int countAllMemSevendayAgo();
	
	// 탈퇴회원 1일전 count
	public abstract int countDelMemOnedayAgo();
	
	// 탈퇴회원 2일전 count
	public abstract int countDelMemTwodayAgo();
	
	// 탈퇴회원 3일전 count
	public abstract int countDelMemThreedayAgo();
	
	// 탈퇴회원 4일전 count
	public abstract int countDelMemFourdayAgo();
	
	// 탈퇴회원 5일전 count
	public abstract int countDelMemFivedayAgo();
	
	// 탈퇴회원 6일전 count
	public abstract int countDelMemSixdayAgo();
	
	// 탈퇴회원 7일전 count
	public abstract int countDelMemSevendayAgo();
	
	// 신규회원 1~7일 전 합계 count
	public abstract int countAllMemSevenBetOneDay();
	
	// 탈퇴회원 1~7일 전 합계 count
	public abstract int countDelMemSevenBetOneDay();
	
}
