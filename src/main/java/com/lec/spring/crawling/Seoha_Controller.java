package com.lec.spring.crawling;


import java.security.Principal;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lec.spring.domain.OrderDTO;
import com.lec.spring.domain.PayDTO;
import com.lec.spring.domain.UserDTO;
import com.lec.spring.service.Seoha_BoardService;
import com.lec.spring.service.UserService;


@Controller
@RequestMapping("/icmall/**")
public class Seoha_Controller {
	
	private final Vegetable_CrawlingService vegetable_CrawlingService = new Vegetable_CrawlingService();
	
	@Autowired
	private VegetableService vegetableService;
	
	@Autowired
	private Seoha_BoardService seoha_BoardService;
	

	public void setBoardService(VegetableService vegetableService) {
		this.vegetableService = vegetableService;
	}
	

	public void setSeoha_BoardService(Seoha_BoardService seoha_BoardService) {
		this.seoha_BoardService = seoha_BoardService;
	}
	
	public Seoha_Controller() {
		System.out.println("Seoha_Controller() 생성");
	}
	
	@RequestMapping("/all/vegetable")
	public String list(Model model, Principal principal, UserDTO dto) throws Exception {
		
		 if(principal == null) {
	          model.addAttribute("message", "Hello Spring Security");
	      //    System.out.println("실패");
	       }
	       else {
	          model.addAttribute("user", principal.getName());
	          System.out.println("user : " + principal.getName());
	          
	          String id = principal.getName();
	          dto.setM_id(id);
	          userService.login(dto);
	          System.out.println("userService: " + userService.login(dto));
	          
	          model.addAttribute("dto", userService.login(dto));
	       }
		
		
		
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
	@RequestMapping("/user/basket")
	public String basket(Model model, Principal principal, UserDTO dto) throws Exception {
	//	System.out.println("찍혀라");
		 if(principal == null) {
	          model.addAttribute("message", "Hello Spring Security");
	      //    System.out.println("실패");
	       }
	       else {
	          model.addAttribute("user", principal.getName());
	          System.out.println("user : " + principal.getName());
	          
	          String id = principal.getName();
	          dto.setM_id(id);
	          userService.login(dto);
	          System.out.println("userService: " + userService.login(dto));
	          
	          model.addAttribute("dto", userService.login(dto));
	       }
		
		
	//	System.out.println(seoha_BoardService.list().get(0));
		model.addAttribute("list", seoha_BoardService.list());
		//System.out.println("찍혀라2");
		return "icmall/basket";
	}
	
	// 장바구니 삭제 
	@GetMapping("/user/deleteOk")
	public String deleteOk(int uid, Model model) {
		System.out.println("삭제실행");
		model.addAttribute("result", seoha_BoardService.deleteByUid(uid));
		
		return "/icmall/deleteOk";		
	}
	
	
	
	// 주문내역 추가
	@GetMapping("/user/insertOrderOk")
		public String order(int o_qty[], String o_name[], int o_price[], String o_img[], int m_uid[], Model model) {
		
		int result = 0;
		
	
		System.out.println("인서트");
		
		for(int i = 0; i < o_qty.length; i++) {
			OrderDTO dto = new OrderDTO();
			
			if(o_name[i] != "") {
				
			dto.setO_qty(o_qty[i]);
			dto.setO_name(o_name[i]);
			dto.setO_price(o_price[i]);
			dto.setO_img(o_img[i]);
			dto.setM_uid(m_uid[i]);
					
		System.out.println("인서트 DTO" + o_img[i]);
			result += seoha_BoardService.insertOrder(dto);	
			}
			
		}
		model.addAttribute("result", result);
	
		
		return "icmall/insertOrderOk";
	}
		
//		System.out.println("값받아오기");
//		System.out.println(dto.toString());
//		
//		model.addAttribute("result", seoha_BoardService.insertOrder(dto));
//		model.addAttribute("dto", dto);   // auto-generated key
//		
//		
//		return "icmall/insertOrderOk";
			
			
	//	}
		
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
	@Autowired
	   UserService userService;
	
	@RequestMapping("/user/checkOut")
	   public String myPage(Model model, Principal principal, UserDTO dto) throws Exception {
	       if(principal == null) {
	          model.addAttribute("message", "Hello Spring Security");
	      //    System.out.println("실패");
	       }
	       else {
	          model.addAttribute("user", principal.getName());
	          System.out.println("user : " + principal.getName());
	          
	          String id = principal.getName();
	          dto.setM_id(id);
	          userService.login(dto);
	          System.out.println("userService: " + userService.login(dto));
	          
	          model.addAttribute("dto", userService.login(dto));
	       }
	   		//	System.out.println("찍혀라");
	   			
	   		//	System.out.println(seoha_BoardService.list().get(0));
	   			model.addAttribute("listOrder", seoha_BoardService.listOrder());
	   			//System.out.println("찍혀라2");

	   			return "icmall/checkOut";
	   }
	    
	// 주문내역 추가
		@GetMapping("/user/insertCheckOutOK")
	//	@ResponseBody
			public String pay(@Valid PayDTO user, int o_uid[], String p_name[], int p_qty[], String p_img[], int m_uid[], int p_price[],
					String p_addr1, String p_addr2, String p_phone, String p_message, String p_way, BindingResult result2, Model model,  Principal principal, UserDTO dtoU) throws Exception {
			
			 if(principal == null) {
		          model.addAttribute("message", "Hello Spring Security");
		      //    System.out.println("실패");
		       }
		       else {
		          model.addAttribute("user", principal.getName());
		          System.out.println("user : " + principal.getName());
		          
		          String id = principal.getName();
		          dtoU.setM_id(id);
		          userService.login(dtoU);
		          System.out.println("userService: " + userService.login(dtoU));
		          
		          model.addAttribute("dto", userService.login(dtoU));
		       }
			
			int result = 0;
			int deleteresult = 0;
			
			if(result2.hasErrors()) {
//				 
				System.out.println("떠라");
				  return "redirect:/icmall/user/checkOut";
				}
			else {
			
			for(int i = 0; i < p_name.length; i++) {
				PayDTO dto = new PayDTO();
				OrderDTO dtoOrder = new OrderDTO();
				
				dto.setP_name(p_name[i]);
				dto.setP_qty(p_qty[i]);
				dto.setP_img(p_img[i]);
				dto.setM_uid(m_uid[i]);
				dto.setP_price(p_price[i]);
				
				dto.setP_addr1(p_addr1);
				dto.setP_addr2(p_addr2);
				dto.setP_phone(p_phone);
				dto.setP_message(p_message);
				dto.setP_way(p_way);
				dtoOrder.setO_uid(o_uid[i]);
			
				
			System.out.println("인서트 DTO" + dtoOrder);
			System.out.println("인서트 DTO" + dto);
				result += seoha_BoardService.insertPay(dto);
				deleteresult += seoha_BoardService.deleteByUidOrder(dtoOrder);
				
			}
			model.addAttribute("result", result);
			model.addAttribute("deleteresult", deleteresult);
			
			return "icmall/insertCheckOutOK";
			
			}
		
		}
		
		@GetMapping("/user/deleteOrderOk")
		//	@ResponseBody
				public String pay(int o_uid[], Model model, Principal principal, UserDTO dto) throws Exception {
				
			   if(principal == null) {
			          model.addAttribute("message", "Hello Spring Security");
			      //    System.out.println("실패");
			       }
			       else {
			          model.addAttribute("user", principal.getName());
			          System.out.println("user : " + principal.getName());
			          
			          String id = principal.getName();
			          dto.setM_id(id);
			          userService.login(dto);
			          System.out.println("userService: " + userService.login(dto));
			          
			          model.addAttribute("dto", userService.login(dto));
			       }
				
				int deleteresult = 0;
				for(int i = 0; i < o_uid.length; i++) {
					
					OrderDTO dtoOrder = new OrderDTO();
					
					dtoOrder.setO_uid(o_uid[i]);
				
					
				System.out.println(dtoOrder);
					deleteresult += seoha_BoardService.deleteByUidOrder(dtoOrder);
					
				}
				model.addAttribute("deleteresult", deleteresult);
				
				return "icmall/deleteOrderOk";
			
			}
//			public String pay(PayDTO dto, Model model) {
			
//			System.out.println("값받아오기");
//			System.out.println(dto.toString());
			
//			
//			model.addAttribute("result", seoha_BoardService.insertPay(dto));
//			model.addAttribute("dto", dto);   // auto-generated key
//			
//			
//			return "icmall/insertcheckOutOk";
				
				
		//	}
		
		// 주문내역 리스트
		@RequestMapping("/user/orderList")
		public String listPay(Model model, Principal principal, UserDTO dto) throws Exception {
		//	System.out.println("찍혀라");
			
			 if(principal == null) {
		          model.addAttribute("message", "Hello Spring Security");
		      //    System.out.println("실패");
		       }
		       else {
		          model.addAttribute("user", principal.getName());
		          System.out.println("user : " + principal.getName());
		          
		          String id = principal.getName();
		          dto.setM_id(id);
		          userService.login(dto);
		          System.out.println("userService: " + userService.login(dto));
		          
		          model.addAttribute("dto", userService.login(dto));
		       }
			
		//	System.out.println(seoha_BoardService.list().get(0));
			model.addAttribute("listPay", seoha_BoardService.listPay());
		//	model.addAttribute("listShipping", seoha_BoardService.listShipping());
		System.out.println( "서하 주문내역 컨트롤러" + seoha_BoardService.listPay());
			return "icmall/orderList";
		}
		
		// 주문내역 상세 페이지
		@RequestMapping("/user/orderDetail")
		public String listDetail(int p_uid, Model model, Principal principal, UserDTO dto) throws Exception {
		//	System.out.println("찍혀라");
			 if(principal == null) {
		          model.addAttribute("message", "Hello Spring Security");
		      //    System.out.println("실패");
		       }
		       else {
		          model.addAttribute("user", principal.getName());
		          System.out.println("user : " + principal.getName());
		          
		          String id = principal.getName();
		          dto.setM_id(id);
		          userService.login(dto);
		          System.out.println("userService: " + userService.login(dto));
		          
		          model.addAttribute("dto", userService.login(dto));
		       }
			
			
			
		//	System.out.println(seoha_BoardService.list().get(0));
			model.addAttribute("listPay", seoha_BoardService.viewByUidPay(p_uid));
		//	System.out.println( "서하 주문내역 상세페이지" + seoha_BoardService.listPay());
			return "icmall/orderDetail";
		}
		
		// 상세내역 결제취소로 업데이트 
		@GetMapping("/user/updatePay")
		public String updatePay(int p_uid, Model model, Principal principal, UserDTO dto) throws Exception {
			
			 if(principal == null) {
		          model.addAttribute("message", "Hello Spring Security");
		      //    System.out.println("실패");
		       }
		       else {
		          model.addAttribute("user", principal.getName());
		          System.out.println("user : " + principal.getName());
		          
		          String id = principal.getName();
		          dto.setM_id(id);
		          userService.login(dto);
		          System.out.println("userService: " + userService.login(dto));
		          
		          model.addAttribute("dto", userService.login(dto));
		       }
			
			System.out.println("업데이트 실행");
			model.addAttribute("updatePay", seoha_BoardService.updatePay(p_uid));
			model.addAttribute("p_uid", p_uid);
			System.out.println( "서하 주문내역 상세페이지" + seoha_BoardService.updatePay(p_uid));
			return "/icmall/updatePay";		
		}
		
		//메인 불러오기
		@RequestMapping("/all/index")
	      public String listIndex(Model model, Principal principal) {
	         if(principal == null) {
	         model.addAttribute("listfruit", seoha_BoardService.selectfruit());
	         model.addAttribute("listvegetable", seoha_BoardService.selectvegetable());
	         
	         System.out.println( "과일 페이지" + seoha_BoardService.selectfruit());
	         model.addAttribute("listmeat", seoha_BoardService.selectmeat());
	         model.addAttribute("listsnack", seoha_BoardService.selectsnack());
	         model.addAttribute("listhealth", seoha_BoardService.selecthealth());
	          }
	         else {
	            model.addAttribute("user", principal.getName());
	            System.out.println("user : " + principal.getName());
	            model.addAttribute("listfruit", seoha_BoardService.selectfruit());
	            model.addAttribute("listvegetable", seoha_BoardService.selectvegetable());
	            
	            System.out.println( "과일 페이지" + seoha_BoardService.selectfruit());
	            model.addAttribute("listmeat", seoha_BoardService.selectmeat());
	            model.addAttribute("listsnack", seoha_BoardService.selectsnack());
	            model.addAttribute("listhealth", seoha_BoardService.selecthealth());
	         }
	          
	         System.out.println("list");
	         return "icmall/index";
	      }


	
}


