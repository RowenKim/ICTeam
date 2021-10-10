package com.lec.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lec.spring.domain.Jin_CrawlingDAO;
import com.lec.spring.domain.Jin_CrawlingDTO;
import com.lec.spring.domain.ServiceCenterDAO;
import com.lec.spring.domain.ServiceCenterDTO;

@Service
public class ServiceCenterService {

	ServiceCenterDAO dao;
	
	@Autowired
	public void setDAO(ServiceCenterDAO dao) {
		this.dao = dao;
	}
	
	public ServiceCenterService() {
		System.out.println("ServiceCenterService() 생성!");
	}
	
	
	// 쇼핑몰 문의하기 insert
	public int insertServiceCenter(ServiceCenterDTO dto) {
//		System.out.println("dto : " + dto.toString());
		return dao.insertServiceCenter(dto);
	}
	// 쇼핑몰 수정하기 update
	 public int updateServiceCenter(ServiceCenterDTO dto) {
		 return dao.updateServiceCenter(dto);
	 }

	
	
}













