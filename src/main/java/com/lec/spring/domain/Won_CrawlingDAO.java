package com.lec.spring.domain;

import java.util.List;

public interface Won_CrawlingDAO {
	
	// 크롤링 한 값 ic_product에 insert
	public abstract int insertSnack(Won_CrawlingDTO dto);
	
	// 크롤링 한 값 ic_product에 insert
	public abstract int insertHealth(Won_CrawlingDTO dto);
	
	// DB에서 스낵 정보만 뺴오기 
	public abstract List<Won_CrawlingDTO> selectSnack();
	
	// DB에서 건강기능 정보만 뺴오기 
	public abstract List<Won_CrawlingDTO> selectHealth();
	
	// DB 해당 uid 상품 정보 들고오기
	public abstract List<Won_CrawlingDTO> selectProInfo(int uid);
	
	// DB 상품 정보에 있는 QUESTION 전부 SELECT
	public abstract List<WonProQuestionDTO> selectProQues(int uid);
	
	// DB 상품 정보에 있는 QUESTION 하나 SELECT
	public abstract List<WonProQuestionDTO> selectProQuesInfo(int uid);
	
	// DB 상품 정보에 있는 REVIEW 전부 SELECT
	public abstract List<WonProReviewDTO> selectProReview(int uid);
	
	// DB 상품 정보에 있는 REVIEW 한개 SELECT
	public abstract List<WonProReviewDTO> selectProReviewInfo(int r_uid);
	
	// 상품정보에 있는 REVIEW UPDATE
	public abstract int updateProReview(WonProReviewDTO dto);
	
	// 상품정보에 있는 REVIEW DELETE
	public abstract int deleteProReview(int uid);
	
	// uid 에 해당하는 MEMBER SELECT
	public abstract List<WonMemberDTO> selectMemInfo(int uid);
	
	// 전체 MEMBER SELECT
	public abstract List<WonMemberDTO> selectMemInfoAll();
	
	// 상품 후기하기 작성하는 INSERT
	public abstract int insertProReview(WonProReviewDTO dto);
	
	// 상품 Q&A 글 조회수 증가 UPDATE
	public abstract int ProQuesincViewCnt(int uid);
	
	// 상품 문의하기 작성하는 INSERT
	public abstract int insertProQues(WonProQuestionDTO dto); 
	
	//상품 문의한 정보 UPDATE
	public abstract int updateProQues(WonProQuestionDTO dto);
	
	//상품 문의 DELETE 
	public abstract int deleteProQues(int uid);
	
	//상품 장바구니에 INSERT
	public abstract int insertBasket(WonBasketDTO dto);
	
	//상품 Q&A File INSERT
	public abstract int insertProQuesFile(List<WonQuesFileDTO> quesFile);
	
	//상품 Q&A 에 해당하는 uid의 File SELECT
	public abstract List<WonQuesFileDTO> selectProQuesFiles(int uid);
	
	//상품Q&A에 있는 File 삭제 취소 UPDATE
	public abstract int undeleteProQuesFile(List<Integer> uid);

	//상품Q&A에 있는 File 삭제 UPDATE
	public abstract int deleteProQuesFile(int uid);
	
	// 마이페이지 myReview
	public abstract List<WonProReviewDTO> selectMyReview(int uid);
	
	// 마이페이지 myReview
	public abstract int updateMyReview(WonProReviewDTO dto);
	
	// 관리자 권한 SELECT 
	public abstract AuthDTO selectAuth(AuthDTO dto);
	
}
