package com.lec.spring.crawling;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lec.spring.domain.WonSnackDTO;

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
	public List<WonSnackDTO> selectSnack() {
		// TODO Auto-generated method stub
		return mapper.selectSnack();
	}

}
