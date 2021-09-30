package com.lec.spring.service;

import java.io.IOException;

import javax.annotation.PostConstruct;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Service;

import com.lec.spring.crawling.Crawling;

@Service
public class CrawlingService {

	private static String url = "http://www.11st.co.kr/html/category/1129477.html";
	
	
	@PostConstruct
	public void getCrawlingDates() throws IOException {
		
		Document doc = Jsoup.connect(url).get();
		
		Elements contents = doc.select("div");
		
		for(Element content : contents){
          Elements tdContents = content.select("li");
            
         Crawling crawling = Crawling.builder()
          		.pro_img(content.select(".lazy"))
          		.pro_name()
           		.pro_price()
           		.build();

          
           
		
		System.out.println(doc);
	}
	
	
	
	
}
