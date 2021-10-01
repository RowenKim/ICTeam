package com.lec.spring.crawling;


import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.RequiredArgsConstructor;

@Controller
public class seoha_Controller {
	
	private final seoha_CrawlinService seoha_CrawlinService = new seoha_CrawlinService();

    @GetMapping("/icmall/vegetable")
    public String vegetable(Model model) throws IOException {
    	System.out.println("컨트롤러창 뜸");

       String e4 = seoha_CrawlinService.getVagetable();

        model.addAttribute("e4", e4);
        System.out.println(e4);

        return "icmall/vegetable";

    }
}


