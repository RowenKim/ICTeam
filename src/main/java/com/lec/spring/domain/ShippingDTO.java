package com.lec.spring.domain; 
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Builder
@Getter
@Setter
public class ShippingDTO {
	
	private int s_uid;
	private	String s_status;
	private String s_shippingNum;
	private int p_uid;
	
	
	
	
	public ShippingDTO(int s_uid, String s_status, String s_shippingNum, int p_uid) {
		super();
		
		this.s_uid = s_uid;
		this.s_status = s_status;
		this.s_shippingNum = s_shippingNum;
		this.p_uid = p_uid;
		
		
	}


	public ShippingDTO() {
		
		super();
	}
	
}
	
	

