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

@Service
public class Won_crawlingService {
	
	@Autowired
	Won_CrawlingDAO dao;

	
//	http://www.11st.co.kr/html/category/1119850.html
//	https://www.11st.co.kr/mart/category?categories=1120848
	private static String Snack_URL = "http://www.11st.co.kr/html/category/1001340.html";
	
	/*
	 * "id", "hotImgIsAuth_0" 이미지
	 * 
	 * 
	 */
	@PostConstruct // 크롤링 후 DB 저장 
	public void getSnack() throws IOException {
		
		List<Won_CrawlingDTO> snackProductList = new ArrayList<>();
		
		Document doc = Jsoup.connect(Snack_URL).get();
		Elements e1 = doc.select(".box_pd");
		Elements e2 = doc.select(".box_pd a"); // 상품이름
		e2.empty();
//		Elements pro_title = doc.select(".pname p"); // 상품이름
//		Elements pro_img = doc.select(".box_pd img"); // 상품이미지
//		Elements pro_price = doc.select(".price_detail strong"); // 상품가격
		
		
		System.out.println("=========================");
		System.out.println(doc);
		System.out.println(e2.eachAttr("href"));
		System.out.println("=========================");
		int i = 0;
//		str.replaceAll("(.*)(<title>)(.+?)(</title>)(.*)", "$3");

		try {
			for(Element content : e1) {
//			Elements divContents = content.select("div");
				
//				System.out.println("---------------------");
//				System.out.println("상품이름: " + pro_title.get(i));	
//				System.out.println("상품이미지: " + pro_img.get(i));	
//				System.out.println("상품가격: " + pro_price.get(i));
//				Element test = e1.get(i).tagName("div");
//				System.out.println(test);
//				System.out.println(e1.get(i).attr("href"));
				
				String testURL = e2.get(i).attr("href");
				
//				System.out.println("---------------------");
				Document docTest = Jsoup.connect(testURL).get();
				System.out.println("URL1 : " + docTest);
				System.out.println("-");
				System.out.println("-");
				
//				System.out.println(docTest.select(".ifrme_bbs"));
		
				
//				Won_CrawlingDTO wonCrawlingDTO = Won_CrawlingDTO.builder()
//	                    .pro_name(content.select(".pname p").text())
//	                    .pro_img(content.select(".box_pd img").outerHtml())
//	                    .pro_content(docTest.select(".ifrme_bbs").outerHtml())
//	                    .pro_price(content.select(".price_detail strong").text().trim().replace(",", ""))
//	                    .build();
//				
//				dao.insertSnack(wonCrawlingDTO);
				
		
//				System.out.println(wonCrawlingDTO.toString());
//				snackProductList.add(wonCrawlingDTO);
//				
				i++;
			}
		} catch(IndexOutOfBoundsException e) {
			
		}
//		
//		System.out.println("=======CHECK=========");
		
//		for(int j = 20; j < 58; j++) {
//			snackProductList.remove(j);
//		}
		
			
//			 System.out.println(snackPro.toString());
//			 System.out.println(divContents.toString());

		
		
//		System.out.println("=======================");
//		
//		System.out.println("i : " + i);
//		System.out.println("-");
//		System.out.println("-");
//		System.out.println(snackProductList.toString());
		
//		int cnt = 0;
//		for(int z = 1; z < snackProductList.size() ; z++) { // List 체크
//			System.out.println(snackProductList.get(z) + "\n");
//			cnt++;
//		}
		
//		System.out.println("상품 갯수 : " + cnt);
		
		
		
		
//		return snackProductList;
	  }
	
	
	
}
