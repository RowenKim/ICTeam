package com.lec.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lec.spring.crawling.Jin_CrawlingDAO;
import com.lec.spring.domain.JinMeatDTO;

@Service
public class JinService {
	
//	@Autowired
	Jin_CrawlingDAO dao;

	@Autowired
	public void getDao(Jin_CrawlingDAO dao) {
		System.out.println("getDAO() 생성!!!");
		System.out.println(dao.selectMeat().get(7));
		this.dao = dao;
	}
	
	
	
	
	public JinService() {
		System.out.println("JinService() 생성");
		
	}

	public List<JinMeatDTO> meatList() {
		System.out.println("list()생성!");
		return dao.selectMeat();
	}
	
}
