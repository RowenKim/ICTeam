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
public class Vegetable_CrawlingService {

	private static String Vagetables_URL = "http://www.11st.co.kr/html/category/1129477.html";

//	@PostConstruct
//	public void getVagetables() throws IOException {
//		
//		Document doc = Jsoup.connect(Vagetables_URL).get();
//		System.out.println(doc); 
//		
//	}
	@PostConstruct
	public List<VegetablesDTO> getVegetable() throws IOException{
		
		List<VegetablesDTO> vegetableList = new ArrayList<>();
		
		Document doc = Jsoup.connect(Vagetables_URL).get();
		Elements e1 = doc.getElementsByAttributeValue("class", "box_pd");
		// 제목
		//Elements pro_name = doc.select(".pname p");
		
		// 이미지
	//	Elements pro_img = doc.select(".box_pd img");
		
		// 가격
	//	Elements pro_price = doc.select(".price_detail strong");
		
		int i = 0;
	
		try {
		
			for(Element content : e1) {
		
				VegetablesDTO vegetablesDTO = VegetablesDTO.builder()
						.pro_name(content.select(".pname p").text())
						.pro_img(content.select(".box_pd img").outerHtml())
						.pro_price(content.select(".price_detail strong").text())
						.build();
				
//				System.out.println(vegetablesDTO.toString());
//				 System.out.println("---------------------");
//		         System.out.println("상품이름: " + pro_name.get(i));
//		         System.out.println("상품이미지: " + pro_img.get(i));
//		         System.out.println("상품가격: " + pro_price.get(i));
//		         System.out.println("---------------------");	
				vegetableList.add(vegetablesDTO);
				
		        i++;
			}
		}catch(IndexOutOfBoundsException e) {
				
		}
		return vegetableList;
	
	  }

}
