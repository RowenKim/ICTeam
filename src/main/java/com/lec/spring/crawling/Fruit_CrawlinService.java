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
public class Fruit_CrawlinService {
	
	private static String Fruit_URL = "http://www.11st.co.kr/html/category/1129478.html";
	
//	@PostConstruct
//	public void getVagetables() throws IOException {
//		
//		Document doc = Jsoup.connect(Vagetables_URL).get();
//		System.out.println(doc); 
//		
//	}
	@PostConstruct
	public List<Product_Fruit> getFruit() throws IOException {
		List<Product_Fruit> product_fruitList = new ArrayList<>();
		
		Document doc = Jsoup.connect(Fruit_URL).get();

		Elements e1 = doc.getElementsByAttributeValue("class", "box_pd");
		Elements pro_name = doc.select(".pname p");
		Elements pro_img = doc.select(".box_pd img");
		Elements pro_price = doc.select(".price_detail strong");
		
		
		int i = 0;
		
		try {
			for(Element content : e1) {
				System.out.println(pro_name.get(i));
				System.out.println(pro_img.get(i));
				System.out.println(pro_price.get(i));
				
				Product_Fruit product_Fruit = Product_Fruit.builder()
						.pro_name(content.select(".pname p").text())
						.pro_img(content.select(".box_pd img").outerHtml())
						.pro_price(content.select(".price_detail strong").text())
						.build();
				
//				System.out.println(jaeuk_Fruit.toString());
				
				product_fruitList.add(product_Fruit);
			
				i++;
				
			}
		} catch(IndexOutOfBoundsException e) {
		
			
		}
			System.out.println(product_fruitList.toString());
			
			return product_fruitList;
			
			
			
		}
		
		
	
		
		
	  
	
	
	
//	public static void main(String[] args) throws IOException {
//		Document doc = Jsoup.connect(Fruit_URL).get();
//		Elements pro_title = doc.select(".pname p");
//		Elements pro_img = doc.select(".box_pd img");
//		Elements pro_price = doc.select(".price_detail strong");
//		Elements e1 = doc.getElementsByAttributeValue("class", "box_pd");
//		
//		
//		
		
		
		
//		int i = 0;
//		
//		try {
//			for(Element content : e1) {
//				System.out.println(pro_title.get(i));
//				System.out.println(pro_img.get(i));
//				System.out.println(pro_price.get(i));
//				
//				Jaeuk_Fruit jaeuk_Fruit = Jaeuk_Fruit.builder()
//						.pro_title(content.select(".pname p").text())
//						.pro_img(content.select(".box_pd img").outerHtml())
//						.pro_price(content.select(".price_detail strong").text())
//						.build();
//				
//				System.out.println(jaeuk_Fruit.toString());
//		
//				i++;
//				
//			}
//			
//		}catch(IndexOutOfBoundsException e) {
//			
//		}
		
	
	
		
		
//		Document doc = Jsoup.connect(Fruit_URL).get();
//		Elements e1 = doc.getElementsByAttributeValue("class", "box_pd");
//	
//		Elements e2 = e1.select("span");
//		
//		
//		Elements e3 = doc.getElementsByAttributeValue("class", "pname");
//		Elements e4 = e3.select("p");
		
//		for(Element e3 : e2) { 
//			System.out.println(e3.text());
//
//		
//		}
//		System.out.println(e4);

		
		
		
	

}
