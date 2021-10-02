package com.lec.spring.crawling;

import lombok.Builder;
import lombok.Getter;
import lombok.ToString;

@ToString
@Builder
@Getter
public class VegetablesDTO {

	private int pro_uid;
	private String pro_name;
	private String pro_img;
	private String pro_price;
	private String pro_content;
	
	
	public VegetablesDTO(int pro_uid, String pro_name, String pro_img, String pro_price, String pro_content) {
		super();
		this.pro_uid = pro_uid;
		this.pro_name = pro_name;
		this.pro_img = pro_img;
		this.pro_price = pro_price;
		this.pro_content = pro_content;
	}


	public VegetablesDTO() {
		super();
	}

}
