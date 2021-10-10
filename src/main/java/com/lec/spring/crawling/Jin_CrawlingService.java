package com.lec.spring.crawling;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lec.spring.domain.Jin_CrawlingDAO;
import com.lec.spring.domain.Jin_CrawlingDTO;

@Service
public class Jin_CrawlingService {
	
	@Autowired
	Jin_CrawlingDAO dao;

	

	private static String MeatURL = "http://www.11st.co.kr/html/category/1001336.html";
	
	
	
	/*
	 * "id", "hotImgIsAuth_0" 이미지
	 * 
	 */
	@PostConstruct // 크롤링 후 DB 저장 
	public void getMeat() throws IOException {
		
		
		List<Jin_CrawlingDTO> meatProductList = new ArrayList<>();
		
		Document doc = Jsoup.connect(MeatURL).get();
		Elements e1 = doc.select(".box_pd");
		Elements e2 = doc.select(".box_pd a"); // 상품이름
		

		

		int i = 0;

	
		

		try {
			for(Element content : e1) {
				


				String plus = "/view-desc";
				MeatURL = e2.get(i).getElementsByAttribute("href").attr("href") + plus;  // + plus; // href 
			

				
				String proURL = MeatURL.replace("/SellerProductDetail.tmall?method=getSellerProductDetail&prdNo=", "s/");
				

		

				Jin_CrawlingDTO jinCrawlingDTO = Jin_CrawlingDTO.builder()
	                    .pro_name(content.select(".pname p").text())
	                    .pro_img(content.select(".box_pd img").outerHtml())
	                    .pro_price(content.select(".price_detail strong").text().trim().replace(",", ""))
	                    .pro_content(proURL)
	                    .build();
				
			
				
				dao.insertMeat(jinCrawlingDTO);
				

		

				i++;
				
			}
		} catch(IndexOutOfBoundsException e) {
		
			
			
		}

	  }
	

	
}
