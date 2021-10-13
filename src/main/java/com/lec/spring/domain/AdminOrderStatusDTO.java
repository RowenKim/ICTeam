package com.lec.spring.domain;

import java.time.LocalDateTime;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
public class AdminOrderStatusDTO {
	
	private int o_uid;
	private String m_name;
	private String p_name;
	private String p_status;
	private String s_status;
	private String p_shippingInto;
	private int p_qty;
	private int p_uid;
	private String p_price;
	private String p_way;
	private String s_shippingNum;
	private LocalDateTime p_date;
	
	
	
	public AdminOrderStatusDTO() {
		super();
	}



	public AdminOrderStatusDTO(int o_uid, String m_name, String p_name, String p_status, String s_status,
			String p_shippingInto, int p_qty, int p_uid, String p_price, String p_way, String s_shippingNum,
			LocalDateTime p_date) {
		super();
		this.o_uid = o_uid;
		this.m_name = m_name;
		this.p_name = p_name;
		this.p_status = p_status;
		this.s_status = s_status;
		this.p_shippingInto = p_shippingInto;
		this.p_qty = p_qty;
		this.p_uid = p_uid;
		this.p_price = p_price;
		this.p_way = p_way;
		this.s_shippingNum = s_shippingNum;
		this.p_date = p_date;
	}






	
	
}
