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
public class Jin_CrawlingService {
	
	@Autowired
	Jin_CrawlingDAO dao;

	
//	http://www.11st.co.kr/html/category/1119850.html
//	https://www.11st.co.kr/mart/category?categories=1120848
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
		
//		e2.empty();
//		Elements pro_title = doc.select(".pname p"); // 상품이름
//		Elements pro_img = doc.select(".box_pd img"); // 상품이미지
//		Elements pro_price = doc.select(".price_detail strong"); // 상품가격
		
		
//		System.out.println("=========================");
//		System.out.println(pro_title);
//		System.out.println(doc);
//		System.out.println(e2.eachAttr("href"));
//		System.out.println(e3);
//		System.out.println(e4);
//		System.out.println("=========================");
		int i = 0;
//		str.replaceAll("(.*)(<title>)(.+?)(</title>)(.*)", "$3");

		try {
			for(Element content : e1) {
				
//				System.out.println("---------------------");
//				System.out.println("상품이름: " + pro_title.get(i));	
//				System.out.println("상품이미지: " + pro_img.get(i));	
//				System.out.println("상품가격: " + pro_price.get(i));
//				Element test = e1.get(i).tagName("div");
//				System.out.println(e1.get(i).attr("href"));

				String plus = "/view-desc";
				MeatURL = e2.get(i).getElementsByAttribute("href").attr("href") + plus;  // + plus; // href 
			
//				String testURL2 =testURL.replace("http", "");
//				testURL.replace("", 0)
//				System.out.println("----" + testURL);
				
				String proURL = MeatURL.replace("/SellerProductDetail.tmall?method=getSellerProductDetail&prdNo=", "s/");
				
//				System.out.println("----" + proURL);
				
				
//				https://www.11st.co.kr/products/2205395439
//				Document docTest = Jsoup.connect(testURL).get();
				
//				System.out.println(docTest.attr("Request URL"));
				
				
//				String test = docTest.html();
				
			
//				System.out.println("URL1 : " + test);
//				System.out.println("-");
//				System.out.println(docTest.select("#ifrmDesc").html());
		

				Jin_CrawlingDTO jinCrawlingDTO = Jin_CrawlingDTO.builder()
	                    .pro_name(content.select(".pname p").text())
	                    .pro_img(content.select(".box_pd img").outerHtml())
	                    .pro_price(content.select(".price_detail strong").text().trim().replace(",", ""))
	                    .pro_content(proURL)
	                    .build();
				
				dao.insertMeat(jinCrawlingDTO);
				
//				System.out.println(e3.get(i).select(".pname p").text());
				

				
				
		
//				System.out.println(wonCrawlingDTO.toString());

			//	snackProductList.add(wonCrawlingDTO);
				

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
