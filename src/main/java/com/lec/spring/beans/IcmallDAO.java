package com.lec.spring.beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import common.D;

//DAO : Data Access Object
//특정 데이터 리소스(ex: DB) 에 접속하여 트랜잭션등을 전담하는 객체
//데이터 리소스별로 작성하거나, 
//혹은 기능별로 작성가능 (ex: 게시판용 DAO, 회원관리용 DAO, ...) 

public class IcmallDAO {
	
	Connection conn;
	PreparedStatement pstmt;
	Statement stmt;
	ResultSet rs;
	
	// DAO 객체가 생성될때 Connection 도 생성된다.
	public IcmallDAO() {
		try {
			Class.forName(D.DRIVER);
			conn = DriverManager.getConnection(D.URL, D.USERID, D.USERPW);
			System.out.println("Icmall 생성, 데이터 베이스 연결!");			
		} catch (Exception e) {
			e.printStackTrace();
		}
	} // end 생성자
	
	// DB 자원 반납 메소드
	public void close() throws SQLException {
		if(rs != null) rs.close();
		if(pstmt != null) pstmt.close();
		if(stmt != null) stmt.close();
		if(conn != null) conn.close();		
	} // end close()
	
	// 새글작성 <-- DTO
	public int insert(IcmallDTO dto) throws SQLException{
		int cnt = 0;
		
		String subject = dto.getSubject();
		String content = dto.getContent();
		String name = dto.getName();
		
		int uid; // auto-generated key 값
		String [] generatedCols = {"wr_uid"};
		
		try {
			pstmt = conn.prepareStatement(D.SQL_WRITE_INSERT, generatedCols);
			pstmt.setString(1, subject);
			pstmt.setString(2, content);
			pstmt.setString(3, name);
			cnt = pstmt.executeUpdate();
			
			if(cnt > 0) {
				// auto-generated keys 값 
				rs = pstmt.getGeneratedKeys();
				if(rs.next()) {
					uid = rs.getInt(1);
					dto.setUid(uid);   // DTO 에 set!!!!
				}
			}
			
		} finally {
			close();			
		}
		
		return cnt;
	} // end insert(DTO)
	
	
	// 글 목록 읽기
	// 	ResultSet --> List<DTO> 로 리턴
	private List<IcmallDTO> buildList(ResultSet rs) throws SQLException{
		List<IcmallDTO> list = new ArrayList<>();  // 만약 ResultSet 에 아무런 데이터가 없다면 빈 List<> 가 리턴된다. (null 이 아니다)~
		
		while(rs.next()) {
			int uid = rs.getInt("uid");
			String subject = rs.getString("subject");
			String content = rs.getString("content");
			if(content == null) content = "";
			String name = rs.getString("name");
			int viewCnt = rs.getInt("viewcnt");
			LocalDateTime regDate = rs.getObject("regdate", LocalDateTime.class);
			
			IcmallDTO dto = new IcmallDTO(uid, subject, content, name, viewCnt, regDate);
			list.add(dto);			
		}
		
		return list;
	}
	
	// 	전체글 SELECT --> List<DTO> 로 리턴
	public List<IcmallDTO> select() throws SQLException{
		List<IcmallDTO> list = null;
		
		try {
			pstmt = conn.prepareStatement(D.SQL_WRITE_SELECT);
			rs = pstmt.executeQuery();
			list = buildList(rs);
		} finally {
			close();
		}
		return list;
	}

	
	// 특정 uid 의 글 하나 SELECT --> List<DTO> 로 리턴
	// update 에서 사용
	public List<IcmallDTO> selectByUid(int uid) throws SQLException {
		List<IcmallDTO> list = null;
		
		try {
			pstmt = conn.prepareStatement(D.SQL_WRITE_SELECT_BY_UID);
			pstmt.setInt(1, uid);
			rs = pstmt.executeQuery();
			list = buildList(rs);
		} finally {
			close();
		} // end try		
		
		return list;
	}
	
	
	// 특정 uid 의 글 하나 SELECT + 조회수 증가 --> List<DTO> 리턴
	// viewcnt 가 +1 증가해야 하고,  글 하나 읽어와야 한다 <- 트랜잭션 처리
	public List<IcmallDTO> readByUid(int uid) throws SQLException{
		List<IcmallDTO> list = null;
		
		try {
			// 트랜잭션 처리
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(D.SQL_WRITE_INC_VIEWCNT);  // 조회수 증가
			pstmt.setInt(1, uid);
			pstmt.executeUpdate();
			
			pstmt.close();
			
			pstmt = conn.prepareStatement(D.SQL_WRITE_SELECT_BY_UID); // 글 하나 읽어오기
			pstmt.setInt(1, uid);
			rs = pstmt.executeQuery();
			
			list = buildList(rs);   // 글 하나 --> List<>

			conn.commit();  // 커밋!
		} catch(SQLException e) {
			conn.rollback();  // 예외 발생하면 rollback 하고
			throw e;         // 다시 그 예외를 위로 throw
   		} finally {
			close();
		}
		
		return list;
	}
	
	
	// 특정 uid 글 수정 <- (uid, 제목, 내용) 
	public int update(int uid, String subject, String content) throws SQLException {
		int cnt = 0;
		
		try {
			pstmt = conn.prepareStatement(D.SQL_WRITE_UPDATE);
			pstmt.setString(1, subject);
			pstmt.setString(2, content);
			pstmt.setInt(3, uid);
			cnt = pstmt.executeUpdate();
		} finally {
			close();
		}		
		
		return cnt;
	}
	
	
	// 특정 uid 글 삭제 <- (uid)
	public int deleteByUid(int uid) throws SQLException {
		int cnt = 0;
		
		try {
			pstmt = conn.prepareStatement(D.SQL_WRITE_DELETE_BY_UID);
			pstmt.setInt(1, uid);
			cnt = pstmt.executeUpdate();
		} finally {
			close();
		}		
		
		return cnt;
	}