package com.lec.spring.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class Won_CrawlingDAOImpl implements Won_CrawlingDAO {
	
	private Won_CrawlingDAO mapper;
	
	@Autowired
	public Won_CrawlingDAOImpl(SqlSession sqlSession) {
		System.out.println("Won_CrawlingDAOImpl() 생성");
		mapper = sqlSession.getMapper(Won_CrawlingDAO.class);
	}
	
	@Override
	public int insertSnack(Won_CrawlingDTO dto) {
		return mapper.insertSnack(dto);
	}

	@Override
	public int insertHealth(Won_CrawlingDTO dto) {
		return mapper.insertHealth(dto);
	}

	@Override
	public List<Won_CrawlingDTO> selectSnack() {
		return mapper.selectSnack();
	}

	@Override
	public List<Won_CrawlingDTO> selectHealth() {
		return mapper.selectHealth();
	}

	@Override
	public List<Won_CrawlingDTO> selectProInfo(int uid) {
		return mapper.selectProInfo(uid);
	}


}
