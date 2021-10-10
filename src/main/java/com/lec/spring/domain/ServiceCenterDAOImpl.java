package com.lec.spring.domain;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ServiceCenterDAOImpl implements ServiceCenterDAO {
	
	private ServiceCenterDAO mapper;
	
	@Autowired
	public ServiceCenterDAOImpl(SqlSession sqlsession) {
		System.out.println("ServiceCenterDAOImpl() 생성");
		mapper = sqlsession.getMapper(ServiceCenterDAO.class);
	}

	@Override
	public int insertServiceCenter(ServiceCenterDTO ServiceCenter) {
//		System.out.println("DAO dto : " + ServiceCenter.toString());
		return mapper.insertServiceCenter(ServiceCenter);
	}

	@Override
	public int updateServiceCenter(ServiceCenterDTO ServiceCenter) {
	
		return mapper.updateServiceCenter(ServiceCenter);
	}

	@Override
	public int deleteServiceCenter(int num) {
		
		return mapper.deleteServiceCenter(num);
	}

	@Override
	public ServiceCenterDTO selectOneServiceCenter(int num) {
		
		return mapper.selectOneServiceCenter(num);
	}

	@Override
	public List<ServiceCenterDTO> selectSearchServiceCenter(HashMap<String, Object> params) {
		return mapper.selectSearchServiceCenter(params);
	}

	@Override
	public List<ServiceCenterDTO> selectAllServiceCenter() {
		return mapper.selectAllServiceCenter();
	}
	
	
	

}
