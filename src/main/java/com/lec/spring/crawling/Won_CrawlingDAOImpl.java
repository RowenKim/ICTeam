package com.lec.spring.crawling;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class Won_CrawlingDAOImpl implements Won_CrawlingDAO {
	
	private Won_CrawlingDAO mapper;
	
//	@Autowired
//	public Won_CrawlingDAOImpl(SqlSession sqlSession) {
//		System.out.println("Won_CrawlingDAOImpl() 생성");
//		mapper = sqlSession.getMapper(Won_CrawlingDAO.class);
//	}
//	
	@Override
	public int insert(Won_CrawlingDTO dto) {
		return mapper.insert(dto);
	}

}
