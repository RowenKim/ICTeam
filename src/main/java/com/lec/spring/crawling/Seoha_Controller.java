package com.lec.spring.crawling;


import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.jaxb.SpringDataJaxb.OrderDto;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestMapping;

import com.lec.spring.domain.OrderDTO;
import com.lec.spring.service.Seoha_BoardService;


@Controller
public class Seoha_Controller {
	
	private final Vegetable_CrawlingService vegetable_CrawlingService = new Vegetable_CrawlingService();
	
	private VegetableService vegetableService;
	private Seoha_BoardService seoha_BoardService;
	
	@Autowired
	public void setBoardService(VegetableService vegetableService) {
		this.vegetableService = vegetableService;
	}
	
	@Autowired
	public void setSeoha_BoardService(Seoha_BoardService seoha_BoardService) {
		this.seoha_BoardService = seoha_BoardService;
	}
	
	public Seoha_Controller() {
		System.out.println("Seoha_Controller() 생성");
	}
	
	@RequestMapping("/icmall/vegetable")
	public String list(Model model) {
		
		model.addAttribute("list", vegetableService.list());
		
		System.out.println("list");
		return "icmall/vegetable";
	}
	
	
	//크롤링 매핑 
//	@GetMapping("/icmall/vegetable")
//    public String vegetable(Model model) throws IOException {
//    	System.out.println("컨트롤러창 뜸");
    	
    	//List<VegetablesDTO> vegetableList = vegetable_CrawlingService.getVegetable();

       //String e4 = seoha_CrawlinService.getVagetable();

      //  model.addAttribute("vegetable", vegetableList);

//        return "icmall/vegetable";
//
//    }
	
	// 장바구니 리스트
	@RequestMapping("/icmall/basket")
	public String basket(Model model) {
	//	System.out.println("찍혀라");
		
	//	System.out.println(seoha_BoardService.list().get(0));
		model.addAttribute("list", seoha_BoardService.list());
		//System.out.println("찍혀라2");
		return "icmall/basket";
	}
	
	// 장바구니 삭제 
	@GetMapping("/icmall/deleteOk")
	public String deleteOk(int uid, Model model) {
		System.out.println("삭제실행");
		model.addAttribute("result", seoha_BoardService.deleteByUid(uid));
		
		return "/icmall/deleteOk";		
	}
	
	// 주문내역 추가
	@GetMapping("/icmall/insertOrderOk")
		public String order(OrderDTO dto, Model model) {
		
		System.out.println("값받아오기");
		System.out.println(dto.toString());
		
		model.addAttribute("result", seoha_BoardService.insertOrder(dto));
		model.addAttribute("dto", dto);   // auto-generated key
		
		
		return "icmall/insertOrderOk";
			
			
		}
		
//	@GetMapping("/icmall/insertOrderOk")
//    public String order(OrderDto[] dto, Model model) {
//
//    for(int i = 0; i < dto.length; i++) {
//       System.out.println(i + "번째 dto:" + dto[i].toString()); 
//    }
//    System.out.println("값받아오기");
//    System.out.println(dto.toString());

//    model.addAttribute("result", seoha_BoardService.insertOrder(dto));
//    model.addAttribute("dto", dto);   // auto-generated key


//    return "icmall/insertOrderOk";
//
//
//    }
	
	// 주문하기 회원정보 리스트
		@RequestMapping("/icmall/checkOut")
		public String checkOut(int uid, Model model) {
		//	System.out.println("찍혀라");
			
		//	System.out.println(seoha_BoardService.list().get(0));
			model.addAttribute("list", seoha_BoardService.listM(uid));
			//System.out.println("찍혀라2");
			return "icmall/checkOut";
		}
	
	
	
	
	
}


