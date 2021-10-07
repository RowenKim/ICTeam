package com.lec.spring.service;


import org.apache.ibatis.session.SqlSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lec.spring.crawling.Seoha_DAO;
import com.lec.spring.crawling.VegetablesDTO;
import com.lec.spring.domain.BasketListDTO;

import java.util.List;




@Repository
public class Seoha_DAOImpl implements Seoha_DAO {

	private Seoha_DAO mapper;
	
	@Autowired
	public Seoha_DAOImpl(SqlSession sqlSession) {
		System.out.println("WriteDAOImpl() 생성");
		mapper = sqlSession.getMapper(Seoha_DAO.class);
	}


	@Override
	public int insert(VegetablesDTO dto) {
		return mapper.insert(dto);
	}
	
	@Override
	public List<VegetablesDTO> select() {
		return mapper.select();
	}
	
	@Override
	public List<BasketListDTO> select1() {
		return mapper.select1();
	}



}
