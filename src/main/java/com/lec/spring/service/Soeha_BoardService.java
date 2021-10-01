package com.lec.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lec.spring.crawling.Seoha_DAO;
import com.lec.spring.crawling.VegetablesDTO;

@Service
public class Soeha_BoardService {
	Seoha_DAO dao;
	
	@Autowired
	public void setDao(Seoha_DAO dao) {
		this.dao = dao;
	}
	
	public Soeha_BoardService() {
		System.out.println("BoardServcie() 생성");
		
	}
	public int write(VegetablesDTO dto) {
		return dao.insert(dto);
	}
	
}
