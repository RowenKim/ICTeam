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
	private String o_img;
	private int m_uid;
	
	
	
	public OrderDTO(int o_uid, int o_qty, String o_name, int o_price, String o_img, int m_uid) {
		super();
		
		this.o_uid = o_uid;
		this.o_qty = o_qty;
		this.o_name = o_name;
		this.o_price = o_price;
		this.o_img = o_img;
		this.m_uid = m_uid;
		
	}


	public OrderDTO() {
		
		super();
	}
	
}
