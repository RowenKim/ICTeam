	package com.lec.spring.crawling;

import org.jsoup.select.Elements;

import lombok.Builder;
import lombok.Getter;
import lombok.ToString;

@ToString
@Builder
@Getter
public class FruitDTO {
	
	private int pro_uid;
	private String pro_name;
	private String pro_img;
	private String pro_price;
	private String pro_content;
	public FruitDTO() {
		super();
	}
	public FruitDTO(int pro_uid, String pro_name, String pro_img, String pro_price, String pro_content) {
		super();
		this.pro_uid = pro_uid;
		this.pro_name = pro_name;
		this.pro_img = pro_img;
		this.pro_price = pro_price;
		this.pro_content = pro_content;
	}
	public void setPro_uid(int pro_uid) {
		this.pro_uid = pro_uid;
	}
	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}
	public void setPro_img(String pro_img) {
		this.pro_img = pro_img;
	}
	public void setPro_price(String pro_price) {
		this.pro_price = pro_price;
	}
	public void setPro_content(String pro_content) {
		this.pro_content = pro_content;
	}
	
	
	
	
	
	
	
}
