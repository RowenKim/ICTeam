package com.lec.spring.domain;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Builder
@Getter
@Setter
public class OrderDTO {

	private int o_uid;
	private int o_qty;
	private String o_name;
	private int o_price;
	private String o_addr;
	private String o_phone;
	private String o_date;
	private String o_message;
	private int m_uid;
	private int b_uid;
	
	
	public OrderDTO(int o_uid, int o_qty, String o_name, int o_price, String o_addr, String o_phone, String o_date, String o_message, int m_uid, int b_uid) {
		super();
		
		this.o_uid = o_uid;
		this.o_qty = o_qty;
		this.o_name = o_name;
		this.o_price = o_price;
		this.o_addr = o_addr;
		this.o_phone = o_phone;
		this.o_date = o_date;
		this.o_message = o_message;
		this.m_uid = m_uid;
		this.b_uid = b_uid;
	}


	public OrderDTO() {
		
		super();
	}
	
}
