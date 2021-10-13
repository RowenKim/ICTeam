package com.lec.spring.domain;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Builder
@Getter
@Setter
public class PayDTO {

	private int p_uid;
	private int p_qty;
	private String p_status;
	private String p_way;
	private String p_name;
	private int p_price;
	private String p_img;
	private String p_addr1;
	private String p_addr2;
	private String p_phone;
	private String p_date;
	private String p_message;
	private int m_uid;
	private String s_status;
	
	
	
	public PayDTO(int p_uid, int p_qty, String p_status, String p_way, String p_name, int p_price, String p_img, String p_addr1, String p_addr2, String p_phone, String p_date, String p_message, int m_uid, String s_status) {
		super();
		
		this.p_uid = p_uid;
		this.p_qty = p_qty;
		this.p_status = p_status;
		this.p_way = p_way;
		this.p_name = p_name;
		this.p_price = p_price;
		this.p_name = p_name;
		this.p_img = p_img;
		this.p_addr1 = p_addr1;
		this.p_addr2 = p_addr2;
		this.p_phone = p_phone;
		this.p_date = p_date;
		this.p_message = p_message;
		this.m_uid = m_uid;
		this.s_status = s_status;
		
	}


	public PayDTO() {
		
		super();
	}
}
