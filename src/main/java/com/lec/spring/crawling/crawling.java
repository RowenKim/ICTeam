package com.lec.spring.crawling;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

public class crawling {

	   public static void main(String[] args) throws IOException {
	        String URL = "url";
	        Document doc = Jsoup.connect(URL).get();

	        System.out.println(doc.text());  //text 출력
	        System.out.println(doc.html());  //html 출력

	    }
}
