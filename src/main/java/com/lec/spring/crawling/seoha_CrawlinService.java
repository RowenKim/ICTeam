package com.lec.spring.crawling;

import java.io.IOException;

import javax.annotation.PostConstruct;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Service;

@Service
public class seoha_CrawlinService {
	
	private static String Vagetables_URL = "http://www.11st.co.kr/html/category/1129477.html";
	
//	@PostConstruct
//	public void getVagetables() throws IOException {
//		
//		Document doc = Jsoup.connect(Vagetables_URL).get();
//		System.out.println(doc); 
//		
//	}
	@PostConstruct
	public String getVagetable() throws IOException {
		Document doc = Jsoup.connect(Vagetables_URL).get();
		Elements e1 = doc.getElementsByAttributeValue("class", "prd_info");
		Element e2 = e1.get(0);
		Elements e3 = e2.select("span");
		
		String e4 = e3.get(0).text();
		
		System.out.println(e4);
		
		return e4;
	  }

}
