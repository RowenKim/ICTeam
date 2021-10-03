package com.lec.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lec.spring.domain.Won_CrawlingDAO;
import com.lec.spring.domain.Won_CrawlingDTO;

@Service
public class WonService {

	
	Won_CrawlingDAO dao;
	
	
	@Autowired
	public void setDAO(Won_CrawlingDAO dao) {
		this.dao = dao;
	}


	public WonService() {
		System.out.println("WonService() 생성!");
	}
	
	// snack 리스트 뽑기
	public List<Won_CrawlingDTO> list(){
		
		return dao.selectSnack();
	}
	
	// health 리스트 뽑기
	public List<Won_CrawlingDTO> Healthlist(){
		
		return dao.selectHealth();
	}
	
	// 상품 해당 uid 상세정보 불러오기
	public List<Won_CrawlingDTO> selectProInfo(int pro_uid){
		
		return dao.selectProInfo(pro_uid);
	}
	
	
	
	
	
	
}
