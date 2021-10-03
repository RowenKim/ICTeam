package com.lec.spring.crawling;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.lec.spring.service.*;
import com.lec.spring.domain.Won_CrawlingDAO;



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
    	System.out.println("컨트롤러창 뜸");
    	
    	
    	model.addAttribute("list", wonService.list());
//    	model.addAttribute("list", wonService.snackList());
    	
    	System.out.println("컨트롤러창 뜸2");
    	
//    	  List<Won_CrawlingDTO> snackProductList = won_crawlingService.getSnack();

//          model.addAttribute("snackProduct", snackProductList);

        return "icmall/snack";

    }

//    public int addDB(Won_CrawlingDTO dto) {
//		
//		try {
//			for(int i = 0; i < won_crawlingService.getSnack().size(); i++ ) {
//				dto = won_crawlingService.getSnack().get(i);
//			}
//		} catch (IOException e) {
//			System.out.println("실패");
//		}
//		
//		return dao.insert(dto);
//	}
    
    
}
