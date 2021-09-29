package com.lec.spring.crawling;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
public class crawling {

	  public static void main(String[] args) throws IOException {
          String URL = "https://search.shopping.naver.com/search/category?catId=50000960&origQuery&pagingIndex=1&pagingSize=40&productSet=total&query&sort=rel&timestamp=&viewType=thumb";
          Document doc = Jsoup.connect(URL).get();
          
          Elements el = doc.getElementsByAttributeValue("class", "imgList_link__XUg6J");

          System.out.println(el.get(0).text());
         
         
      }

}
