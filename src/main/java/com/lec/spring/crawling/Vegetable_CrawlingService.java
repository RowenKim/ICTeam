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

	public List<VegetablesDTO> list() {

		return dao.select();
	}

	private static String Vagetables_URL = "http://www.11st.co.kr/html/category/1129478.html";
	private static String testURL;
	// Elements detail_img = doc.getElementsByAttributeValue("class",
	// "ifrm_prdc_detail");
	// private static String Vagetables_URL =
	// "https://www.11st.co.kr/products/1418504992/view-desc";

	@PostConstruct // 크롤링 후 DB 저장
	public void getVegetable() throws IOException {

		List<VegetablesDTO> vegetableList = new ArrayList<>();

		Document doc = Jsoup.connect(Vagetables_URL).get();
		Elements e1 = doc.getElementsByAttributeValue("class", "box_pd");
		Elements e2 = doc.select(".box_pd a"); // 상품이름
		// 제목
		// Elements pro_name = doc.select(".pname p");

		// 이미지
		// Elements pro_img = doc.select(".box_pd img");

		// 가격
		// Elements pro_price = doc.select(".price_detail strong");
		int i = 0;

		try {

			for (Element content : e1) {

				// 상세보기 이미지 url content에 담기
				String plus = "view-desc";
				testURL = e2.get(i).getElementsByAttribute("href").attr("href") + plus;
				String proURL = testURL.replace("/SellerProductDetail.tmall?method=getSellerProductDetail&prdNo=",
						"s/");

				Document docTest = Jsoup.connect(testURL).get();

				VegetablesDTO vegetablesDTO = VegetablesDTO
						.builder().pro_name(content.select(".pname p").text())
						.pro_img(content.select(".box_pd img").outerHtml())
						.pro_price(content.select(".price_detail strong").text().trim().replace(",", ""))
						.pro_content(proURL)
						.build();

				// dao.insert(vegetablesDTO);
				// System.out.println(e1);
				// System.out.println(vegetablesDTO.toString());

//				System.out.println(vegetablesDTO.toString());

//				 System.out.println("---------------------");
//		         System.out.println("상품이름: " + pro_name.get(i));
//		         System.out.println("상품이미지: " + pro_img.get(i));
//		         System.out.println("상품가격: " + pro_price.get(i));
//		         System.out.println("---------------------");	
				// vegetableList.add(vegetablesDTO);

				i++;
			}
		} catch (IndexOutOfBoundsException e) {

		}
		// return vegetableList;

	}

}
