package com.lec.spring.domain;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Builder
@Getter
@Setter
public class Jin_CrawlingDTO {
	private int pro_uid;
	private String pro_name;
	private String pro_content;
	private String pro_img;
	private String pro_price;
}
