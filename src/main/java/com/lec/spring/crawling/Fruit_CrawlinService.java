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
public class Fruit_CrawlinService {
	
	public Fruit_CrawlinService() {
		System.out.println("기본생성");
	}

//	@Autowired
	
	FruitCrawlingDAO dao;
	private static String Fruit_URL = "http://www.11st.co.kr/html/category/1129478.html";
	private static String Fruit_URL1 = "http://www.11st.co.kr/html/category/1129478.html";
	
	
	
//	@PostConstruct
//	public void getVagetables() throws IOException {
//		
//		Document doc = Jsoup.connect(Vagetables_URL).get();
//		System.out.println(doc); 
//		
//	}
	@PostConstruct
	public List<FruitDTO> getFruit() throws IOException {
		List<FruitDTO> product_fruitList = new ArrayList<>();
		
		Document doc = Jsoup.connect(Fruit_URL).get();

		Elements e1 = doc.getElementsByAttributeValue("class", "box_pd");
		Elements e2 = doc.select(".box_pd a");
		
		Elements pro_name = doc.select(".pname p");
		Elements pro_img = doc.select(".box_pd img");
		Elements pro_price = doc.select(".price_detail strong");
		
					
		Document doc1 = Jsoup.connect(Fruit_URL).get();
		
		
		int i = 0;
		
		try {
			for(Element content : e1) {
				System.out.println(pro_name.get(i));
				System.out.println(pro_img.get(i));
				System.out.println(pro_price.get(i));
				
				FruitDTO product_Fruit = FruitDTO.builder()
						.pro_name(content.select(".pname p").text())
						.pro_img(content.select(".box_pd img").outerHtml())
						.pro_price(content.select(".price_detail strong").text().trim().replace(",", ""))
						.pro_content(content.getElementsByAttribute("href").attr("href"))
						.build();
				
			//	dao.insert(product_Fruit);
				
//				System.out.println(jaeuk_Fruit.toString());
				
				product_fruitList.add(product_Fruit);
			
				i++;
				
			}
		} catch(IndexOutOfBoundsException e) {
		
			
		}
			System.out.println(product_fruitList.toString());
			
			return product_fruitList;
			
			
			
		}
		
		
	
		
		
	  
	
	
	
	public static void main(String[] args) throws IOException {

		Document doc = Jsoup.connect(Fruit_URL).get();
		Elements e1 = doc.select(".box_pd a");
		
		for(Element e : e1){ 
            System.out.println(e.getElementsByAttribute("href").attr("href"));  //a 태그의 href 속성값 전부
		}
		
		
		
		
        
       
		
		
		
		}
		

		
		
		
	

}
