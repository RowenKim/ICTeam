package com.lec.spring.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.lec.spring.domain.AdminOrderStatusDTO;
import com.lec.spring.domain.UserDTO;
import com.lec.spring.service.UserService;
import com.lec.spring.service.adminCheckService;

@Controller
@RequestMapping("/icmall_admin")
public class Icmall_adminController {
	
	private adminCheckService adminService;
	
	@Autowired
	public void setAdminCheckService(adminCheckService adminService) {
		this.adminService = adminService;
	}
	
	@Autowired
	   UserService userService;

	

	 @GetMapping("/admin/userList")
	   public String userList(Model model, UserDTO dto) throws Exception {
//	          System.out.println("회원비활성화 : " + dto);
//	          model.addAttribute("dto", userService.UserList(dto));
//	          userService.UserList(dto);
//	          System.out.println(dto);
	      
//	      System.out.println("dto: " + dto);
//	      
//	      List<UserDTO> list = userService.userList(dto);
//	      model.addAttribute("dto", list);
//	      
//	      System.out.println("list = " + list);
	      
	      System.out.println("list = " + userService.userList());
	      System.out.println("-------------------------------------");
	      model.addAttribute("dto", userService.userList());

//	      model.addAttribute("dto", userService.selectAuthoritiesById(user.getM_id()));
	      
	      
	      return "/icmall_admin/userList";
	      
	   }
	   
	   
	   //관리자 페이지 유저 삭제
	   @RequestMapping(value = "/admin/UserListDelete", method=RequestMethod.POST)
	   public String UserListDelete(@RequestParam("RowCheck")List<Integer> user, Model model, Principal principal, UserDTO dto) throws Exception{
	            
//	             model.addAttribute("dto", userService.login(dto));
	             
	   System.out.println("관리자 페이지 유저 삭제!!!");
	   System.out.println("삭제!!!" +  userService.deleteMember(dto));
	             
	   int[] f = new int[user.size()];
	   int[] a = user.stream().mapToInt(Integer::intValue).toArray();
	   for(int i=0; i < user.size(); i++) {
	                //System.out.println("user : " + user.get(i));
	                //int z = Integer.parseInt(user.get(i));
	   a[i] = user.get(i);
	   userService.UserListDelete(a[i]);
	                
	   }
	   System.out.println("toString :" + a.toString());
	             
	   System.out.println("dto : " + dto);
	             //userService.deleteMember(dto);
	             
	            // userService.UserDelete(dto);
	            
	   return "redirect:/icmall_admin/admin/userList";
	            
	   }
	   
	   //관리자 리뷰리스트 
	   @GetMapping("/admin/adminReview")
	   public String Review(Model model) throws Exception{
	      
	      model.addAttribute("review", userService.Review());
	      
	      System.out.println("review : " + userService.Review());
	      
	      return "icmall_admin/adminReview";
	      
	   }
	   
	   //관리자 리뷰 삭제      <form class="ml-auto text-light navtopfont"> 
	//   @RequestMapping(value = "/ReviewListDelete", method=RequestMethod.POST)
	   //@GetMapping("/ReviewListDelete")
	   @RequestMapping(value = "/admin/ReviewListDelete", method=RequestMethod.POST)
	   public String ReviewListDelete(@RequestParam("RowCheck")List<Integer> user, Model model, Principal principal) throws Exception {
	      int[] a = user.stream().mapToInt(Integer::intValue).toArray();
	       for(int i=0; i < user.size(); i++) {
	          System.out.println("user : " + user.get(i));
	          //int z = Integer.parseInt(user.get(i));
	          a[i] = user.get(i);
	          System.out.println("user!!! : " + a[i]);
	          userService.ReviewListDelete(a[i]);
	         System.out.println("삭제!!! : " + userService.ReviewListDelete(a[i])); 
	       }
	      
	       return "redirect:/icmall_admin/admin/adminReview";
	         
	   }
	   
	   
	   //관리자 리뷰리스트 
	   @GetMapping("/admin/adminQuestion")
	   public String questionList(Model model) throws Exception{
	            
	   model.addAttribute("question", userService.questionList());
	            
	   System.out.println("question : " + userService.questionList());
	            
	   return "icmall_admin/adminQuestion";
	            
	   }
	   
	// ---------------------------------------------
	@RequestMapping("/admin/adminIndex")
	public String adminIndex(Model model) {
		
//		System.out.println("매핑성공");
//		System.out.println("값 체크 : " + adminService.countReadyPro());
//		System.out.println("값 체크 : " + adminService.countNotpay());
//		System.out.println("값 체크 : " + adminService.countRefundPro());
		
		// 상품 주문 및 배송상태
		model.addAttribute("countReadyPro", adminService.countReadyPro());
		model.addAttribute("countShippingPro", adminService.countShippingPro());
		model.addAttribute("countShippingOkPro", adminService.countShippingOkPro());
		model.addAttribute("countBuyOkPro", adminService.countBuyOkPro());
		model.addAttribute("countExchangePro", adminService.countExchangePro());
		model.addAttribute("countRefundPro", adminService.countRefundPro());
		model.addAttribute("countReview", adminService.countReview());
		model.addAttribute("countProQA", adminService.countProQA());
		
		// 신규회원 7일간 정보
		model.addAttribute("countNewMemOnedayAgo", adminService.countNewMemOnedayAgo());
		model.addAttribute("countNewMemTwodayAgo", adminService.countNewMemTwodayAgo());
		model.addAttribute("countNewMemThreedayAgo", adminService.countNewMemThreedayAgo());
		model.addAttribute("countNewMemFourdayAgo", adminService.countNewMemFourdayAgo());
		model.addAttribute("countNewMemfivedayAgo", adminService.countNewMemfivedayAgo());
		model.addAttribute("countNewMemSixdayAgo", adminService.countNewMemSixdayAgo());
		model.addAttribute("countNewMemSevendayAgo", adminService.countNewMemSevendayAgo());
		
		// 전체회원 7일간 정보
		model.addAttribute("countAllMemOnedayAgo", adminService.countAllMemOnedayAgo());
		model.addAttribute("countAllMemTwodayAgo", adminService.countAllMemTwodayAgo());
		model.addAttribute("countAllMemThreedayAgo", adminService.countAllMemThreedayAgo());
		model.addAttribute("countAllMemFourdayAgo", adminService.countAllMemFourdayAgo());
		model.addAttribute("countAllMemFivedayAgo", adminService.countAllMemFivedayAgo());
		model.addAttribute("countAllMemSixdayAgo", adminService.countAllMemSixdayAgo());
		model.addAttribute("countAllMemSevendayAgo", adminService.countAllMemSevendayAgo());
		
		
		// 탈퇴회원 7일간 정보
		model.addAttribute("countDelMemOnedayAgo", adminService.countDelMemOnedayAgo());
		model.addAttribute("countDelMemTwodayAgo", adminService.countDelMemTwodayAgo());
		model.addAttribute("countDelMemThreedayAgo", adminService.countDelMemThreedayAgo());
		model.addAttribute("countDelMemFourdayAgo", adminService.countDelMemFourdayAgo());
		model.addAttribute("countDelMemFivedayAgo", adminService.countDelMemFivedayAgo());
		model.addAttribute("countDelMemSixdayAgo", adminService.countDelMemSixdayAgo());
		model.addAttribute("countDelMemSevendayAgo", adminService.countDelMemSevendayAgo());
		
		// 1~7일간 회원(신규/탈퇴) 합계
		model.addAttribute("countAllMemSevenBetOneDay", adminService.countAllMemSevenBetOneDay());
		model.addAttribute("countDelMemSevenBetOneDay", adminService.countDelMemSevenBetOneDay());

		
		return "icmall_admin/adminIndex";
	}
	
	// 결제완료 mapping
	@RequestMapping("/admin/payOk")
	public String statusOfshipPayOk(Model model) {
		
		
		model.addAttribute("payOk", adminService.statusOfshipPayOk());
		
		return "icmall_admin/payOk";
	}
	
	
	// 상품준비중 mapping
	@RequestMapping("/admin/readyStuck")
	public String statusOfshipPreparedPro(Model model) {
		
		
		model.addAttribute("PreparedPro", adminService.statusOfshipPreparedPro());
		
		return "icmall_admin/readyStuck";
	}
	
	// 배송중 mapping
	@RequestMapping("/admin/shopping")
	public String statusOfshipping(Model model) {
		
		
		model.addAttribute("shipping", adminService.statusOfshipping());
		
		return "icmall_admin/shopping";
	}
	
	
	// 배송완료 mapping
	@RequestMapping("/admin/shoppingFinish")
	public String statusOfshipOk(Model model) {
		
		
		model.addAttribute("shipOk", adminService.statusOfshipOk());
		
		return "icmall_admin/shoppingFinish";
	}
	
	// 구매확정 mapping
	@RequestMapping("/admin/buyFinish")
	public String statusOfshipBuyOk(Model model) {
		
		
		model.addAttribute("BuyOk", adminService.statusOfshipBuyOk());
		
		return "icmall_admin/buyFinish";
	}
	
	// 교환접수 mapping
	@RequestMapping("/admin/exchange")
	public String statusOfshipExchange(Model model) {
		
		
		model.addAttribute("Exchange", adminService.statusOfshipExchange());
		
		return "icmall_admin/exchange";
	}
	
	// 환불접수 mapping
	@RequestMapping("/admin/refund")
	public String statusOfshipRefund(Model model) {
		
		
		model.addAttribute("Refund", adminService.statusOfshipRefund());
		
		return "icmall_admin/refund";
	}
	
	@RequestMapping("/admin/insertShipping")
	public String insertShip(int uid, Model model) {
		
//		System.out.println("TEST1");
		model.addAttribute("insertCnt", adminService.insertShip(uid));
//		System.out.println("TEST2");
		model.addAttribute("updateCnt", adminService.updateShipInto(uid));
//		System.out.println("TEST3");
		
		return "icmall_admin/insertShipping";
	}
	
	@PostMapping("/admin/shipStatusChange")
	public String updateShipStatus(AdminOrderStatusDTO dto, Model model) {
		
//		System.out.println("메핑성공");
//		System.out.println("dto ------" + dto);
		model.addAttribute("result", adminService.updateShipStatus(dto));
		
		return "icmall_admin/shipStatusChange";
	}
	
	
}
