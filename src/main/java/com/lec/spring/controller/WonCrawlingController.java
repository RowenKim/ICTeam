package com.lec.spring.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.lec.spring.beans.WonCrawlingDTO;
import com.lec.spring.crawling.Won_crawlingService;


@Controller
public class WonCrawlingController {
	private final Won_crawlingService won_crawlingService = new Won_crawlingService();

    @GetMapping("/icmall/snack")
    public String vegetable(Model model) throws IOException {
    	System.out.println("컨트롤러창 뜸");

    	  List<WonCrawlingDTO> snackProductList = won_crawlingService.getSnack();

          model.addAttribute("snackProduct", snackProductList);

        return "icmall/snack";

    }
}
