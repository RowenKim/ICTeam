package com.lec.spring.crawling;

import java.io.IOException;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class JinCrawlingController {
	private final Jin_CrawlingService jin_CrawlingService = new Jin_CrawlingService();

    @GetMapping("/icmall/meat")
    public String meat(Model model) throws IOException {
    	System.out.println("컨트롤러창 뜸");

    	  List<JinCrawlingDTO> meatProductList = jin_CrawlingService.getMeat();

          model.addAttribute("meatProduct", meatProductList);

        return "icmall/meat";

    }
}