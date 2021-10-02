package com.lec.spring.crawling;

import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;



@Controller
public class Won_CrawlingController {
	
//	private Won_crawlingService won_crawlingService = new Won_crawlingService();
	Won_CrawlingDAO dao;
	
    @GetMapping("/icmall/snack")
    public String snack(Model model) throws IOException {
    	System.out.println("컨트롤러창 뜸");

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
