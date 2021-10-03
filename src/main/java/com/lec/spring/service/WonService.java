package com.lec.spring;

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
	
	
	public List<Won_CrawlingDTO> list(){
		
		return dao.selectSnack();
	}
	
	
	
	
	
	
}
