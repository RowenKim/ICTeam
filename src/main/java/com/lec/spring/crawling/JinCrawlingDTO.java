package com.lec.spring.crawling;

import lombok.Builder;
import lombok.Getter;
import lombok.ToString;

@ToString
@Builder
@Getter
public class JinCrawlingDTO {
	private String pro_name;
	private String pro_img;
	private String pro_price;
}
