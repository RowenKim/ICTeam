package com.lec.spring.crawling;

import java.io.IOException;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.RequiredArgsConstructor;


@Controller
public class Fruit_Controller {
	
	
	private final Fruit_CrawlinService fruit_crawlinService = new Fruit_CrawlinService();
	
	@GetMapping("/icmall/fruit")
	public String fruit(Model model) throws IOException{
		
		
		System.out.println("컨트롤러창 뜸");
		

		
		return "icmall/fruit";
	}

}
