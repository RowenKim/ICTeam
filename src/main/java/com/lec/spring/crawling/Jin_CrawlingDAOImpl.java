package com.lec.spring.crawling;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lec.spring.domain.JinMeatDTO;

@Repository
public class Jin_CrawlingDAOImpl implements Jin_CrawlingDAO {
	
	private Jin_CrawlingDAO mapper;
	
	@Autowired
	public Jin_CrawlingDAOImpl(SqlSession sqlSession) {
		System.out.println("Won_CrawlingDAOImpl() 생성");
		mapper = sqlSession.getMapper(Jin_CrawlingDAO.class);
	}
	
	@Override
	public int insertMeat(Jin_CrawlingDTO dto) {
		return mapper.insertMeat(dto);
	}

	@Override
	public List<JinMeatDTO> selectMeat() {
		// TODO Auto-generated method stub
		return mapper.selectMeat();
	}

}
