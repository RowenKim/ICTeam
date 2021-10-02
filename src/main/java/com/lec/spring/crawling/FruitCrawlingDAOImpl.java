package com.lec.spring.crawling;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FruitCrawlingDAOImpl implements FruitCrawlingDAO {

	private FruitCrawlingDAO mapper;
	
	
	
	@Autowired
	public FruitCrawlingDAOImpl(SqlSession sqlSession) {
		System.out.println("FruitCrawlingDAOImpl 생성");
		mapper = sqlSession.getMapper(FruitCrawlingDAO.class);
	}
	
	@Override
	public int insert(FruitDTO dto) {
		return mapper.insert(dto);
	}

	@Override
	public List<FruitDTO> select() {
		
		return mapper.select();
	}

}
