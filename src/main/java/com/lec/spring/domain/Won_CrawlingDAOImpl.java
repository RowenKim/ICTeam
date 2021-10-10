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

	@Override
	public List<WonProQuestionDTO> selectProQues(int uid) {
		return mapper.selectProQues(uid);
	}

	@Override
	public List<WonMemberDTO> selectMemInfo(int uid) {
		return mapper.selectMemInfo(uid);
	}

	@Override
	public List<WonProQuestionDTO> selectProQuesInfo(int uid) {
		return mapper.selectProQuesInfo(uid);
	}

	@Override
	public List<WonProReviewDTO> selectProReview(int uid) {
		return mapper.selectProReview(uid);
	}

	@Override
	public List<WonMemberDTO> selectMemInfoAll() {
		return mapper.selectMemInfoAll();
	}

	@Override
	public int ProQuesincViewCnt(int uid) {
		return mapper.ProQuesincViewCnt(uid);
	}

	@Override
	public int insertProReview(WonProReviewDTO dto) {
		return mapper.insertProReview(dto);
	}

	@Override
	public int insertProQues(WonProQuestionDTO dto) {
		System.out.println("DAO DTO" + dto);
		return mapper.insertProQues(dto);
	}

	@Override
	public List<WonProReviewDTO> selectProReviewInfo(int uid) {
		return mapper.selectProReviewInfo(uid);
	}

	@Override
	public int updateProReview(WonProReviewDTO dto) {
		return mapper.updateProReview(dto);
	}

	@Override
	public int deleteProReview(int uid) {
		return mapper.deleteProReview(uid);
	}

	@Override
	public int updateProQues(WonProQuestionDTO dto) {
		return mapper.updateProQues(dto);
	}

	@Override
	public int deleteProQues(int uid) {
		return mapper.deleteProQues(uid);
	}

	@Override
	public int insertBasket(WonBasketDTO dto) {
		return mapper.insertBasket(dto);
	}

	@Override
	public int insertProQuesFile(List<WonQuesFileDTO> quesFile) {
		return mapper.insertProQuesFile(quesFile);
	}

	@Override
	public List<WonQuesFileDTO> selectProQuesFiles(int uid) {
		return mapper.selectProQuesFiles(uid);
	}

	@Override
	public int undeleteProQuesFile(List<Integer> uid) {
		return mapper.undeleteProQuesFile(uid);
	}

	@Override
	public int deleteProQuesFile(int uid) {
		// TODO Auto-generated method stub
		return 0;
	}




}
