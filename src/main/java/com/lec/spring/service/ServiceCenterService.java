package com.lec.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.lec.spring.domain.ServiceCenterDAO;
import com.lec.spring.domain.ServiceCenterDTO;
import com.lec.spring.domain.UserDTO;


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
	
	
	// 문의 전체 SELECT
		public List<ServiceCenterDTO> selectServiceCenter(){
			return dao.selectServiceCenter();
		}
		
		// 문의 한개 SELECT
		public List<ServiceCenterDTO> selectServiceCenterInfo(int q_uid){
			
			return dao.selectServiceCenterInfo(q_uid);
		}
		
		// 한개 uid 멤버 정보
		public List<UserDTO> selectMemInfo(int m_uid){
			return dao.selectMemInfo(m_uid);
		}
		
		// 멤버정보 정체 
		public List<UserDTO> selectMemInfoAll(){
			return dao.selectMemInfoAll();
		}
		
		// 문의 조회수 증가
		public int ServiceCenterViewCnt(int q_uid) {
			return dao.ServiceCenterViewCnt(q_uid);
		}
		
		// 문의 insert
		public int insertServiceCenter(ServiceCenterDTO dto) {
//			System.out.println("서비스 dto : " + dto);
			return dao.insertServiceCenter(dto);
		}
		
		//문의 update
		public int updateServiceCenter(ServiceCenterDTO dto) {
//			System.out.println("서비스 dto : " + dto.toString());
			return dao.updateServiceCenter(dto);
		}
		
		//문의 delete
		public int deleteServiceCenter(int q_uid) {
			return dao.deleteServiceCenter(q_uid);
		}
	
	
}













