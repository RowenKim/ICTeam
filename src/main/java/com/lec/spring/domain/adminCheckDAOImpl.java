package com.lec.spring.domain;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class adminCheckDAOImpl implements adminCheckDAO {

	private adminCheckDAO mapper;
	
	@Autowired
	public adminCheckDAOImpl(SqlSession sqlSession) {
		System.out.println("Won_CrawlingDAOImpl() 생성");
		mapper = sqlSession.getMapper(adminCheckDAO.class);
	}
	
	@Override
	public int countReadyPro() {
		return mapper.countReadyPro();
	}

	@Override
	public int countShippingPro() {
		return mapper.countShippingPro();
	}

	@Override
	public int countShippingOkPro() {
		return mapper.countShippingOkPro();
	}

	@Override
	public int countBuyOkPro() {
		return mapper.countBuyOkPro();
	}

	@Override
	public int countExchangePro() {
		return mapper.countExchangePro();
	}

	@Override
	public int countRefundPro() {
		return mapper.countRefundPro();
	}

	@Override
	public int countPayOk() {
		return mapper.countPayOk();
	}

	@Override
	public int countNotpay() {
		return mapper.countNotpay();
	}

	@Override
	public int countReview() {
		return mapper.countReview();
	}

	@Override
	public int countProQA() {
		return mapper.countProQA();
	}

	@Override
	public int countNewMemOnedayAgo() {
		return mapper.countNewMemOnedayAgo();
	}

	@Override
	public int countNewMemTwodayAgo() {
		return mapper.countNewMemTwodayAgo();
	}

	@Override
	public int countNewMemThreedayAgo() {
		return mapper.countNewMemThreedayAgo();
	}

	@Override
	public int countNewMemFourdayAgo() {
		return mapper.countNewMemFourdayAgo();
	}

	@Override
	public int countNewMemfivedayAgo() {
		return mapper.countNewMemfivedayAgo();
	}

	@Override
	public int countNewMemSixdayAgo() {
		return mapper.countNewMemSixdayAgo();
	}
	
	@Override
	public int countNewMemSevendayAgo() {
		return mapper.countNewMemSevendayAgo();
	}

	@Override
	public int countAllMemOnedayAgo() {
		return mapper.countAllMemOnedayAgo();
	}

	@Override
	public int countAllMemTwodayAgo() {
		return mapper.countAllMemTwodayAgo();
	}

	@Override
	public int countAllMemThreedayAgo() {
		return mapper.countAllMemThreedayAgo();
	}

	@Override
	public int countAllMemFourdayAgo() {
		return mapper.countAllMemFourdayAgo();
	}

	@Override
	public int countAllMemFivedayAgo() {
		return mapper.countAllMemFivedayAgo();
	}

	@Override
	public int countAllMemSixdayAgo() {
		return mapper.countAllMemSixdayAgo();
	}

	@Override
	public int countAllMemSevendayAgo() {
		return mapper.countAllMemSevendayAgo();
	}

	@Override
	public int countDelMemOnedayAgo() {
		return mapper.countDelMemOnedayAgo();
	}

	@Override
	public int countDelMemTwodayAgo() {
		return mapper.countDelMemTwodayAgo();
	}

	@Override
	public int countDelMemThreedayAgo() {
		return mapper.countDelMemThreedayAgo();
	}

	@Override
	public int countDelMemFourdayAgo() {
		return mapper.countDelMemFourdayAgo();
	}

	@Override
	public int countDelMemFivedayAgo() {
		return mapper.countDelMemFivedayAgo();
	}

	@Override
	public int countDelMemSixdayAgo() {
		return mapper.countDelMemSixdayAgo();
	}

	@Override
	public int countDelMemSevendayAgo() {
		return mapper.countDelMemSevendayAgo();
	}

	@Override
	public int countAllMemSevenBetOneDay() {
		return mapper.countAllMemSevenBetOneDay();
	}

	@Override
	public int countDelMemSevenBetOneDay() {
		return mapper.countDelMemSevenBetOneDay();
	}

	

}
