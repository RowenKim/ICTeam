package com.lec.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
		
		// 특정 id(username) 의 정보 가져오기
		public UserDTO findById(String id) {
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
	
	
	

}
