package com.lec.spring.crawling;

import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.lec.spring.service.JinService;


@Controller
public class Jin_CrawlingController {
	private JinService jinService;
	

	Jin_CrawlingDAO dao;
	
    @GetMapping("/icmall/meat")
    public String meat(Model model) throws IOException {
    	System.out.println("컨트롤러창 뜸");

    	model.addAttribute("list", jinService.meatList());
    	
    	System.out.println("컨트롤러창 뜸2");
    	


        return "icmall/meat";

    }
}

