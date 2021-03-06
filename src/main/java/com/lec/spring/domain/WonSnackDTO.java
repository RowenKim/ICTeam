package com.lec.spring.domain;

import lombok.Builder;
import lombok.ToString;

@ToString
@Builder
public class WonSnackDTO {
	private int uid;
	private String name;
	private String img;
	private String price;
	
	
	public WonSnackDTO() {
		super();
//		System.out.println("WonSnackDTO() 생성");
	}


	public WonSnackDTO(int uid, String name, String img, String price) {
		super();
		this.uid = uid;
		this.name = name;
		this.img = img;
		this.price = price;
	}




	public int getUid() {
		return uid;
	}




	public void setUid(int uid) {
		this.uid = uid;
	}




	public String getName() {
		return name;
	}




	public void setName(String name) {
		this.name = name;
	}




	public String getImg() {
		return img;
	}




	public void setImg(String img) {
		this.img = img;
	}




	public String getPrice() {
		return price;
	}




	public void setPrice(String price) {
		this.price = price;
	}
	
	
	
	
}
