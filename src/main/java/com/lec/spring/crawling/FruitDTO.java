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

	
}
