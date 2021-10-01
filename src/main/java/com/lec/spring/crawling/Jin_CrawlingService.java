package com.lec.spring.crawling;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Service;



 


@Service
public class Jin_CrawlingService {
	private static String Meat_URL = "http://www.11st.co.kr/html/category/1001336.html";
	

	@PostConstruct
	public List<JinCrawlingDTO> getMeat() throws IOException {
		
		List<JinCrawlingDTO> meatProductList = new ArrayList<>();
		
		Document doc = Jsoup.connect(Meat_URL).get();
		Elements e1 = doc.getElementsByAttributeValue("class", "box_pd");

		System.out.println("=========================");

		int i = 0;
		
		try {
			for(Element content : e1) {
				
				JinCrawlingDTO jinCrawlingDTO = JinCrawlingDTO.builder()
	                    .pro_name(content.select(".pname p").text())
	                    .pro_img(content.select(".box_pd img").outerHtml())
	                    .pro_price(content.select(".price_detail strong").text())
	                    .build();
				
				meatProductList.add(jinCrawlingDTO);
				
				i++;
			}
		} catch(IndexOutOfBoundsException e) {
			
		}
		
		System.out.println("=======CHECK=========");
		
		for(int j = 20; j < 58; j++) {
			meatProductList.remove(j);
		}
		
			
		
		int cnt = 0;
//		for(int z = 1; z < meatProductList.size() ; z++) { // List 체크
//			System.out.println(meatProductList.get(z) + "\n");
//			cnt++;
//		}
		
		System.out.println("상품 갯수 : " + cnt);
		
		
		
		
		return meatProductList;
	  }
}

