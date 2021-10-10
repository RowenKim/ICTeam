package com.lec.spring.domain;
import lombok.Builder;
import lombok.Getter;
import lombok.ToString;

@ToString
@Builder
@Getter
public class BasketListDTO {
	
	private int b_uid;
	private String b_proName;
	private String b_img;
	private int b_price;
	private int b_qty;
	private int m_uid;
	private int pro_uid;
	
	
	public BasketListDTO(int b_uid, String b_proName, String b_img, int b_price, int b_qty, int m_uid, int pro_uid) {
		super();
		this.b_uid = b_uid;
		this.b_proName = b_proName;
		this.b_img = b_img;
		this.b_price = b_price;
		this.b_qty = b_qty;
		this.m_uid = m_uid;
		this.pro_uid = pro_uid;
	}


	public BasketListDTO() {
		
		super();
	}

}
