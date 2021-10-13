package com.lec.spring.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
public class Jin_CrawlingDAOImpl implements Jin_CrawlingDAO {
	
	private Jin_CrawlingDAO mapper;
	
	@Autowired
	public Jin_CrawlingDAOImpl(SqlSession sqlSession) {
		System.out.println("Jin_CrawlingDAOImpl() 생성");
		mapper = sqlSession.getMapper(Jin_CrawlingDAO.class);
	}
	
	@Override
	public int insertMeat(Jin_CrawlingDTO dto) {
		return mapper.insertMeat(dto);
	}


	@Override
	public List<Jin_CrawlingDTO> selectMeat() {
		return mapper.selectMeat();
	}

	@Override
	public List<Jin_CrawlingDTO> searchOk(String search) {
		return mapper.searchOk(search);
	}

//	@Override
//	public List<Jin_CrawlingDTO> getsearchOkList(Search search) throws Exception {
//		// TODO Auto-generated method stub
//		return sqlSession.selectList("com.freehoon.web.board.boardMapper.getBoardList", search);
//
//	}

//	@Override
//	public int getsearchOkListCnt(Search search) throws Exception {
//		// TODO Auto-generated method stub
//		return 0;
//	}


//
//	@Override
//	public List<Jin_CrawlingDTO> selectProInfo(int uid) {
//		return mapper.selectProInfo(uid);
//	}
//

}
