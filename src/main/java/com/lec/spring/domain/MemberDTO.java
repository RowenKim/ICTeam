package com.lec.spring.domain;
import java.util.Date;



import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.ToString;

@ToString
@Builder
@Getter
public class MemberDTO {
	private int m_uid; 
	private String m_id;
	private String m_password;
	private String m_name;
	private String m_mail;
	private int m_class; 
	private String m_phone; 
	private String m_addr; 
	private String m_gender; 
	private Date m_birth; 
	private Date m_joindate;
	
	
			
		

		public MemberDTO(int m_uid, String m_id, String m_password, String m_name, String m_mail, int m_class, String m_phone, String m_addr, String m_gender, Date m_birth, Date m_joindate) {
			super();
			this.m_uid = m_uid;
			this.m_password = m_password;
			this.m_name = m_name;
			this.m_mail = m_mail;
			this.m_class = m_class;
			this.m_phone = m_phone;
			this.m_addr = m_addr;
			this.m_gender = m_gender;
			this.m_birth = m_birth;
			this.m_joindate = m_joindate;
		}
		 
		public MemberDTO() {
			super();
		}


}
