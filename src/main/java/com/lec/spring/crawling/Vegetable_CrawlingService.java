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
public class Vegetable_CrawlingService {
	@Autowired
	Seoha_DAO dao;
	
	private static String Vagetables_URL = "http://www.11st.co.kr/html/category/1129478.html";
	
	//Elements detail_img = doc.getElementsByAttributeValue("class", "ifrm_prdc_detail");
	//private static String Vagetables_URL = "https://www.11st.co.kr/products/1418504992/view-desc";

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
		
		Elements pro_detail = doc.select(".box_pd a");
		String testURL = pro_detail.get(i).attr("href");
		String c = "/view-desc";
		String b = testURL + c;
		
		System.out.println(testURL);
		System.out.println(b);
		
	
	
		try {
		
			for(Element content : e1) {
				
		
				VegetablesDTO vegetablesDTO = VegetablesDTO.builder()
						.pro_name(content.select(".pname p").text())
						.pro_img(content.select(".box_pd img").outerHtml())
						.build();

				//dao.insert(vegetablesDTO);
				//System.out.println(e1);
				//System.out.println(vegetablesDTO.toString());

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
