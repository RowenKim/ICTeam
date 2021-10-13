package com.lec.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lec.spring.domain.QuestionDTO;
import com.lec.spring.domain.ReviewDTO;
import com.lec.spring.domain.UserDAO;
import com.lec.spring.domain.UserDTO;

@Service
public class UserService {
	
	@Autowired
	UserDAO dao;
	
	

	public UserService() {
		System.out.println("UserService() 생성");
	}
	
	// 회원가입
		// ROLE_MEMBER 권한 부여
		@Transactional
		public int addMember(UserDTO user) {
			int cnt = dao.addUser(user);
			dao.addAuth(user.getM_id(), "ROLE_MEMBER");
			return cnt;
		}
		
		// 회원삭제
		@Transactional
		public int deleteMember(UserDTO user) {
			dao.deleteAuths(user.getM_id());  // 권한(들) 먼저 삭제
			int cnt = dao.deleteUser(user);
			return cnt;
		}
		
		public int deleteUser(UserDTO user) {
			int cnt = dao.deleteUser(user);
			return cnt;
		}
		

		
		// 특정 id(username) 의 정보 가져오기
		public UserDTO findById(String id) {
			dao.selectAuthoritiesById(id);
			return dao.findById(id);
		}
		
		// 특정 id 의 권한(들) 정보 가져오기
		public List<String> selectAuthoritiesById(String id){
			return dao.selectAuthoritiesById(id);
		}
		
		// 아이디 중복체크
		public int idChk(String user) throws Exception {
			int result = dao.idChk(user);
			return result;
		}
		
		// 이메일 중복체크
		public int mailChk(String mail) throws Exception {
			int result = dao.mailChk(mail);
			return result;
		}
		
		// 로그인 회원 정보
		public UserDTO login(UserDTO dto) throws Exception {
			System.out.println("로그인 정보: "+ dto);
			return dao.login(dto);
		}
		
		// 회원 정보 수정
		public void userUpdate(UserDTO dto) throws Exception {
			dao.userUpdate(dto);
		}
		
		// 회원 비활성화
		public void userEnable(UserDTO dto) throws Exception {
			dao.userEnable(dto);
		}
		
		// 관리자페이지 유저리스
		public UserDTO UserList(UserDTO dto) throws Exception{
			return dao.UserList(dto);
		}
		
		// 관리자페이지 유저리스트
		public List<UserDTO> userList() throws Exception {
			// TODO Auto-generated method stub
			return dao.userList();
		}
	
	
		// 딜리트 유저 생성
		public int UserDelete(UserDTO dto) {
			int cnt = dao.UserDelete(dto);
			return cnt;
		}
	
		// 관리자페이지 유저리스트 삭제
		public int UserListDelete(int uid ) {
			int cnt = dao.UserListDelete(uid);
			return cnt;
		}
		// 관리자페이지 유저리스트 삭제테이블 담기
		public int UserDeleteUid(int uid) {
			int cnt = dao.UserDeleteUid(uid);
			return cnt;
		}
		
		// 관리자페이지 유저 선택 검사
		public UserDTO getUserList(UserDTO dto) {
	
			return dao.getUserList(dto);
		}
		
		// 관리자 리뷰 리스트
		public List<ReviewDTO> Review() throws Exception {
			return dao.Review();
		}
		
		// 관리자 리뷰 삭제
		public int ReviewListDelete(int uid) {
			
			return dao.ReviewListDelete(uid);
		}
		
		// 관리자 후기 리스트
		public List<QuestionDTO> questionList() throws Exception {		
			return dao.questionList();
		}
		
		// 관리자 문의 답변
		public void questionUpdate(QuestionDTO dto) { 
			dao.questionUpdate(dto);
		}
		
		// 관리자 문의 디테일
		public QuestionDTO questionDetailList(int uid) throws Exception {
			return dao.questionDetailList(uid);
		}




}
