package com.lec.spring.crawling;


import java.io.IOException;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.RequiredArgsConstructor;

@Controller
public class Seoha_Controller {
	
	private final Vegetable_CrawlingService vegetable_CrawlingService = new Vegetable_CrawlingService();

    @GetMapping("/icmall/vegetable")
    public String vegetable(Model model) throws IOException {
    	System.out.println("컨트롤러창 뜸");
    	
    	List<VegetablesDTO> vegetableList = vegetable_CrawlingService.getVegetable();

       //String e4 = seoha_CrawlinService.getVagetable();

        model.addAttribute("vegetable", vegetableList);

        return "icmall/vegetable";

    }
}


