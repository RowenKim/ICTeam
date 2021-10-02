package com.lec.spring.crawling;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class VegetableService {

	Seoha_DAO dao;

	@Autowired
	public void setDao(Seoha_DAO dao) {
		this.dao = dao;
	}
	
	public VegetableService() {
		System.out.println("VegetableService() 생성");
		
	}

	public List<VegetablesDTO> list() {
		
		return dao.select();
	}

	
}
