package com.lec.spring.domain;

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
	public List<ServiceCenterDTO> selectServiceCenter(int uid) {
		return mapper.selectServiceCenter(uid);
	}
	
	@Override
	public List<UserDTO> selectMemInfo(int uid) {
		return mapper.selectMemInfo(uid);
	}

	@Override
	public List<ServiceCenterDTO> selectServiceCenterInfo(int uid) {
		return mapper.selectServiceCenterInfo(uid);
	}
	
	@Override
	public List<UserDTO> selectMemInfoAll() {
		return mapper.selectMemInfoAll();
	}

	@Override
	public int ServiceCenterViewCnt(int uid) {
		return mapper.ServiceCenterViewCnt(uid);
	}
	
	@Override
	public int insertServiceCenter(ServiceCenterDTO dto) {
		System.out.println("DAO DTO" + dto);
		return mapper.insertServiceCenter(dto);
	}
	
	@Override
	public int updateServiceCenter(ServiceCenterDTO dto) {
		return mapper.updateServiceCenter(dto);
	}

	@Override
	public int deleteServiceCenter(int uid) {
		return mapper.deleteServiceCenter(uid);
	}

}
