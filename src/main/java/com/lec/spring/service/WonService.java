package com.lec.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.web.multipart.MultipartFile;

import com.lec.spring.domain.WonBasketDTO;
import com.lec.spring.domain.WonMemberDTO;
import com.lec.spring.domain.WonProQuestionDTO;
import com.lec.spring.domain.WonProReviewDTO;
import com.lec.spring.domain.WonQuesFileDTO;
import com.lec.spring.domain.Won_CrawlingDAO;
import com.lec.spring.domain.Won_CrawlingDTO;
import com.lec.spring.file.FileUtils;

@Service
public class WonService {

	
	Won_CrawlingDAO dao;
	
	
	@Autowired
	public void setDAO(Won_CrawlingDAO dao) {
		this.dao = dao;
	}
	
	@Autowired
	private FileUtils fileUtils;


	public WonService() {
		System.out.println("WonService() 생성!");
	}
	
	// snack 리스트 뽑기
	public List<Won_CrawlingDTO> list(){
		
		return dao.selectSnack();
	}
	
	// health 리스트 뽑기
	public List<Won_CrawlingDTO> Healthlist(){
		
		return dao.selectHealth();
	}
	
	// 상품 해당 uid 상세정보 불러오기
	public List<Won_CrawlingDTO> selectProInfo(int pro_uid){
		
		return dao.selectProInfo(pro_uid);
	}
	
	// 해당 상품의 QUESTION 전체 SELECT
	public List<WonProQuestionDTO> selectProQues(int pro_uid){
		return dao.selectProQues(pro_uid);
	}
	
	// 해당 상품의 QUESTION 한개 SELECT
	public List<WonProQuestionDTO> selectProQuesInfo(int proq_uid){
		
		return dao.selectProQuesInfo(proq_uid);
	}
	
	// 해당 상품의 REVIEW 전체 SELECT
	public List<WonProReviewDTO> selectProReview(int pro_uid){
//		System.out.println("Service pro_uid 값 : " + pro_uid);
		return dao.selectProReview(pro_uid);
	}
	
	// 해당 상품의 REVIEW 한개 SELECT
	public List<WonProReviewDTO> selectProReviewInfo(int r_uid){
//		System.out.println("Service r_uid 값 : " + r_uid);
		
		return dao.selectProReviewInfo(r_uid);
	}
	
	// 상품 REVIEW UPDATE 하기 (제목, 내용)
	public int updateProReview(WonProReviewDTO dto) {
		System.out.println("리뷰 : " + dto);
		return dao.updateProReview(dto);
	}
	
	// 상품 REVIEW DELETE 하기
	public int deleteProReview(int r_uid) {
		return dao.deleteProReview(r_uid);
	}
	
	// 한개 uid 멤버 정보
	public List<WonMemberDTO> selectMemInfo(int m_uid){
		return dao.selectMemInfo(m_uid);
	}
	
	// 멤버정보 정체 
	public List<WonMemberDTO> selectMemInfoAll(){
		return dao.selectMemInfoAll();
	}
	
	
	// 상품 후기작성 insert
	public int insertProReview(WonProReviewDTO dto) {
		return dao.insertProReview(dto);
	}
	
	// 상품 Q&A 조회수 증가
	public int ProQuesincViewCnt(int proq_uid) {
		return dao.ProQuesincViewCnt(proq_uid);
	}
	
	// 상품 문의하기 insert
	public int insertProQues(WonProQuestionDTO dto) {
//		System.out.println("서비스 dto : " + dto);
		return dao.insertProQues(dto);
	}
	
	//문의한 상품 update
	public int updateProQues(WonProQuestionDTO dto) {
//		System.out.println("Service dto : " + dto.toString());
		return dao.updateProQues(dto);
	}
	
	//문의한 상품 delete
	public int deleteProQues(int proq_uid) {
		return dao.deleteProQues(proq_uid);
	}
	
	//장바구니 INSERT
	public int insertBasket(WonBasketDTO dto) {
		return dao.insertBasket(dto);
	}
	
	//상품 Q&A File INSERT
	public int insertProQuesFile(WonProQuestionDTO dto, MultipartFile[] files) {
//		int result = 1;
		List<WonQuesFileDTO> fileList = fileUtils.uploadFiles(files, dto.getProq_uid());
//		if(CollectionUtils.isEmpty(fileList) == false) {
//			result = dao.insertProQuesFile(fileList);
//			if (result < 1) {
//				result = 0;
//			}
//		}
//		System.out.println("wonServic files : " + files.toString());
//		System.out.println("wonServic uid : " + dto.getProq_uid());
		
		return dao.insertProQuesFile(fileList);
	}
	
	//상품 Q&A File SELECT
	public List<WonQuesFileDTO> selectProQuesFiles(int proq_uid){
		
		return dao.selectProQuesFiles(proq_uid);
	}
	
	// 마이페이지 myReview SELECT
	public List<WonProReviewDTO> selectMyReview(int m_uid){
		return dao.selectMyReview(m_uid);
	}
	
	// 마이페이지 myReview Update
	public int updateMyReview(WonProReviewDTO dto) {
		return dao.updateMyReview(dto);
	}
	
	
	
}
