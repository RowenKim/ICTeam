package com.lec.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lec.spring.domain.Jin_CrawlingDAO;
import com.lec.spring.domain.Jin_CrawlingDTO;
import com.lec.spring.domain.ServiceCenterDAO;
import com.lec.spring.domain.ServiceCenterDTO;

@Service
public class JinService {

	
	Jin_CrawlingDAO dao;
	
	
	@Autowired
	public void setDAO(Jin_CrawlingDAO dao) {
		this.dao = dao;
	}


	public JinService() {
		System.out.println("JinService() 생성!");
	}
	
	// snack 리스트 뽑기
	public List<Jin_CrawlingDTO> list(){
		
		return dao.selectMeat();
	}
	
	
//	// 상품 해당 uid 상세정보 불러오기
//public List<Jin_CrawlingDTO> selectProInfo(int pro_uid){
//	
//		return dao.selectProInfo(pro_uid);
//	}
	
	
	
}
