package com.lec.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lec.spring.crawling.Won_CrawlingDAO;
import com.lec.spring.domain.WonSnackDTO;

@Service
public class WonService {
	
//	@Autowired
	Won_CrawlingDAO dao;

	@Autowired
	public void getDao(Won_CrawlingDAO dao) {
		System.out.println("getDAO() 생성!!!");
		System.out.println(dao.selectSnack().get(7));
		this.dao = dao;
	}
	
	
	
	
	public WonService() {
		System.out.println("WonService() 생성");
		
	}

	public List<WonSnackDTO> snackList() {
		System.out.println("list()생성!");
		return dao.selectSnack();
	}
	
}
