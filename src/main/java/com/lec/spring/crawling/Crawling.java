package com.lec.spring.crawling;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

import lombok.Builder;
import lombok.Getter;
import lombok.ToString;


@ToString
@Builder
@Getter
public class Crawling {
	
	private String pro_name;
	private String pro_img;
	private int pro_price;

	
}
