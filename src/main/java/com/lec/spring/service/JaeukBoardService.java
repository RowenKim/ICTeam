package com.lec.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lec.spring.crawling.FruitCrawlingDAO;
import com.lec.spring.crawling.FruitDTO;

@Service
public class JaeukBoardService {
	
	FruitCrawlingDAO dao;

	
	@Autowired
	public void setDao(FruitCrawlingDAO dao) {
		this.dao = dao;
	}


	public JaeukBoardService() {
		System.out.println("BoardServcie() 생성");
	}
	

	public List<FruitDTO> list() {
		
		return dao.select();
	}

	
	
	
	
	
	
	

}
