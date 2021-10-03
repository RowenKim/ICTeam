package com.lec.spring.crawling;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.lec.spring.domain.Won_CrawlingDAO;
import com.lec.spring.service.WonService;



@Controller
public class Won_CrawlingController {
	
	private WonService wonService;
	
	@Autowired
	public void setWonService(WonService wonService) {
		this.wonService = wonService;
	}
	
	
	Won_CrawlingDAO dao;
	
    @GetMapping("/icmall/snack")
    public String snack(Model model) throws IOException {
//    	System.out.println("컨트롤러창 뜸");
    	
    	
    	model.addAttribute("list", wonService.list());
//    	model.addAttribute("list", wonService.snackList());
    	
//    	System.out.println("컨트롤러창 뜸2");
    	
//    	  List<Won_CrawlingDTO> snackProductList = won_crawlingService.getSnack();

//          model.addAttribute("snackProduct", snackProductList);

        return "icmall/snack";

    }
    
    @GetMapping("/icmall/health")
    public String health(Model model) throws IOException {
    	model.addAttribute("list", wonService.Healthlist());
    	
    	return "icmall/health";
    }
    
    @GetMapping("/icmall/stockDetail")
    public String stockDetail(int uid, Model model) throws IOException {
    	model.addAttribute("list", wonService.selectProInfo(uid));
    	
    	return "icmall/stockDetail";
    }
    

    
    
}
