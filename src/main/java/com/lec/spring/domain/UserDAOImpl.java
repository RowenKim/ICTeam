package com.lec.spring.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fasterxml.jackson.annotation.JacksonInject;

@Repository
public class UserDAOImpl implements UserDAO{
	
	private UserDAO mapper;
	
	SqlSession sql;
	
	@Autowired
	public UserDAOImpl(SqlSession sqlSession) {
		System.out.println("UserDAOImpl() 생성");
		mapper = sqlSession.getMapper(UserDAO.class);
	}
	

	@Override
	public int addUser(UserDTO user) {
		return mapper.addUser(user);
	}

	@Override
	public int addAuth(String id, String auth) {
		return mapper.addAuth(id, auth);
	}

	@Override
	public int deleteUser(UserDTO user) {
		return mapper.deleteUser(user);
	}

	@Override
	public int deleteAuth(String id, String auth) {
		return mapper.deleteAuth(id, auth);
	}

	@Override
	public int deleteAuths(String id) {
		return mapper.deleteAuths(id);
	}

	@Override
	public UserDTO findById(String id) {
		return mapper.findById(id);
	}

	@Override
	public List<String> selectAuthoritiesById(String id) {
		return mapper.selectAuthoritiesById(id);
	}

	// 중복체크
	@Override
	public int idChk(String user) throws Exception {
		
		return mapper.idChk(user);	// 있으면 1, 없으면 0
	}


	@Override
	public int mailChk(String mail) throws Exception {
		
		return mapper.mailChk(mail);
	}

	// 회원 정보 수정
	@Override
	public void userUpdate(UserDTO dto) throws Exception {
		
		mapper.userUpdate(dto);

	}


	@Override
	public UserDTO login(UserDTO dto) throws Exception {
		return mapper.login(dto);
		
	}


	@Override
	public void userEnable(UserDTO dto) throws Exception {
		mapper.userEnable(dto);
		
	}


	@Override
	public UserDTO UserList(UserDTO dto) throws Exception {
		return mapper.UserList(dto);
	}



}
