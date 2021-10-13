package com.lec.spring.domain;

import java.util.List;

public interface UserDAO {
	
	// 사용자 추가
		int addUser(UserDTO user);
		
		// 사용자 권한 추가
		int addAuth(String id, String auth);
		
		// 사용자 삭제
		int deleteUser(UserDTO user);
		
		// 특정 사용자 권한 삭제
		int deleteAuth(String id, String auth);
		
		// 특정 사용자 권한(들) 전부 삭제
		int deleteAuths(String id);
		
		// 특정 id (username) 의 사용자 찾기
		UserDTO findById(String id);
		
		// 특정 id (username) 의 권한(들) 뽑기
		List<String> selectAuthoritiesById(String id);
		
		
		// 아이디 중복체크
		public int idChk(String user) throws Exception;
		
		
		// 이메일 중복체크
		public int mailChk(String mail) throws Exception;
		
		
		// 로그인 정보
		public UserDTO login(UserDTO dto) throws Exception;
		
		// 회원정보 수정
		public void userUpdate(UserDTO dto) throws Exception;
		
		// 회원비활성화
		public void userEnable(UserDTO dto) throws Exception;
		
		// 관리자 유저리스트
		public UserDTO UserList(UserDTO dto) throws Exception;
		
		// 모든 유저리스트
		public List<UserDTO> userList() throws Exception;
		
		// 딜리트 유정생성
		int UserDelete(UserDTO dto);
		
		// 관리자 유저리스트 삭제
		public abstract int UserListDelete(int uid);
		
		// 관리자 유저 삭제 테이블 담기
		int UserDeleteUid(int uid);
		
		// 관리자 유저 선택 검사
		public UserDTO getUserList(UserDTO dto);
		
		// 관리자 리뷰 리스트
		public List<ReviewDTO> Review() throws Exception;
		
		// 관자 리뷰 삭제
		int ReviewListDelete(int uid);
		
		// 관리자 문의 리스트
		public List<QuestionDTO> questionList() throws Exception;
		
		// 관리 문의 디테일
		public QuestionDTO questionDetailList(int uid) throws Exception;
		
		// 관리자 문의 답변
		public void questionUpdate(QuestionDTO dto);
		
		
}
