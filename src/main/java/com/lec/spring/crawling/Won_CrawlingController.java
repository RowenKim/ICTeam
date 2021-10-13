package com.lec.spring.crawling;

import java.io.IOException;
import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.lec.spring.domain.AdminOrderStatusDTO;
import com.lec.spring.domain.UserDTO;
import com.lec.spring.domain.WonBasketDTO;
import com.lec.spring.domain.WonProQuestionDTO;
import com.lec.spring.domain.WonProReviewDTO;
import com.lec.spring.domain.Won_CrawlingDAO;
import com.lec.spring.service.UserService;
import com.lec.spring.service.WonService;
import com.lec.spring.service.adminCheckService;



@Controller
public class Won_CrawlingController {
	@Autowired
	UserService userService;
	
	private WonService wonService;
	private adminCheckService adminService;
	
	@Autowired
	public void setWonService(WonService wonService) {
		this.wonService = wonService;
	}
	
	@Autowired
	public void setAdminCheckService(adminCheckService adminService) {
		this.adminService = adminService;
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
    public String stockDetail(int uid, Model model,Principal principal, UserDTO dto) throws Exception {
    	
    	if(principal == null) {
			 model.addAttribute("message", "Hello Spring Security");
			 System.out.println("실패");
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
    	
    	
//    	System.out.println(wonService.selectProReview(uid)); //값이 안 담김
//    	System.out.println(wonService.selectProQues(uid)); // ok
    	
    	model.addAttribute("list", wonService.selectProInfo(uid));
//    	System.out.println("TEST 0");
    	model.addAttribute("proqReviweList", wonService.selectProReview(uid));
//    	System.out.println("TEST 2");
    	model.addAttribute("proqList", wonService.selectProQues(uid));
//    	System.out.println("TEST 1");
    	model.addAttribute("memList", wonService.selectMemInfoAll());
    	
    	
    	return "icmall/stockDetail";
    }
    
    @GetMapping("/icmall/questionInfo")
    @Transactional
    public String questionInfo(int uid, Model model,Principal principal, UserDTO dto) throws Exception {
    	
    	if(principal == null) {
			 model.addAttribute("message", "Hello Spring Security");
			 System.out.println("실패");
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
    	
    	
    	wonService.ProQuesincViewCnt(uid);
    	model.addAttribute("proqList", wonService.selectProQuesInfo(uid));
    	if(wonService.selectProQuesFiles(uid) != null) {
    		model.addAttribute("fileList", wonService.selectProQuesFiles(uid));
    	}
    	
    	return "/icmall/questionInfo";
    }

    @PostMapping(value="/icmall/stockReviewOk")
	public String stockReviewOk(WonProReviewDTO dto, Model model) {
//    	System.out.println("TEST0");
    	
    	System.out.println("dto에 담긴 값 : " + dto.toString());
//    	System.out.println("TEST1");
    	model.addAttribute("result", wonService.insertProReview(dto));
//    	System.out.println("TEST2");
		model.addAttribute("dto", dto);   // auto-generated key
//		System.out.println("TEST3");
    	
		return "icmall/stockReviewOk";
	}
    
	@RequestMapping("/icmall/stockReview")
	public String stockReview(int uid, Model model,Principal principal, UserDTO dto) throws Exception {
		
		if(principal == null) {
			 model.addAttribute("message", "Hello Spring Security");
			 System.out.println("실패");
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
		
		
		model.addAttribute("list", wonService.selectProInfo(uid));
		model.addAttribute("proqReviweList", wonService.selectProReview(uid));
		
		return "icmall/stockReview";
	}
	
	@RequestMapping("/icmall/question")
	public String question(int uid, Model model, Principal principal, UserDTO dto) throws Exception {
		
		if(principal == null) {
			 model.addAttribute("message", "Hello Spring Security");
			 System.out.println("실패");
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
		
		model.addAttribute("pro_uid", uid);
		model.addAttribute("memList", wonService.selectMemInfoAll());
		
		return "icmall/question";
	}
	
    @RequestMapping("/icmall/questionOk")
    public String questionOk(WonProQuestionDTO dto, MultipartFile[] files ,Model model) {
//    	System.out.println("TEST1");
//    	System.out.println("DTO : " + dto.toString());
    	model.addAttribute("resultQues", wonService.insertProQues(dto));
//    	System.out.println("files : " + files.);
    	for(int i = 0; i < files.length; i++) {
			if(files[i].getSize() != 0) {
				model.addAttribute("resultFile", wonService.insertProQuesFile(dto, files));
			}
    	}
//    	System.out.println("TEST3");
    	model.addAttribute("dto", dto);
//    	System.out.println("TEST4");
    	
    	
    	return "icmall/questionOk";
    }
    
	@RequestMapping("/icmall/reviewUpdate")
	public String reviewUpdateOk(int pro_uid, int r_uid, Model model) {
//		System.out.println("값은?" + r_uid);
//		System.out.println("wonService.selectProReviewInfo(r_uid) : " + wonService.selectProReviewInfo(r_uid).toString());
//		System.out.println("wonService.selectProInfo(pro_uid) : " + wonService.selectProInfo(pro_uid).toString());
		
		model.addAttribute("reviewInfo", wonService.selectProReviewInfo(r_uid));
		model.addAttribute("proList", wonService.selectProInfo(pro_uid));
		
		return "icmall/reviewUpdate";
	}
	
	@RequestMapping("/icmall/reviewUpdateOk")
	public String reviewUpdateOk(WonProReviewDTO dto, Model model) {
		
		System.out.println(dto.toString());
		
		model.addAttribute("result", wonService.updateProReview(dto));
		model.addAttribute("dto", dto);
		
		return "icmall/reviewUpdateOk";
	}
	
	@RequestMapping("/icmall/reviewDeleteOk")
	public String reviewDeleteOk(int uid, Model model) {
		
		List<WonProReviewDTO> dto = wonService.selectProReviewInfo(uid);
		int pro_uid = dto.get(0).getPro_uid();
//		System.out.println(dto.get(0).getPro_uid());
		model.addAttribute("result", wonService.deleteProReview(uid));
		model.addAttribute("pro_uid", pro_uid);
		
		return "icmall/reviewDeleteOk";
	}
    
	@RequestMapping("icmall/questionUpdate")
	public String questionUpdate(int uid, Model model) {
		System.out.println(wonService.selectProQuesFiles(uid).toString());
		model.addAttribute("proqList", wonService.selectProQuesInfo(uid));
		model.addAttribute("fileList", wonService.selectProQuesFiles(uid));
		
		return "icmall/questionUpdate";
	}
	
	@RequestMapping("icmall/questionUpdateOk")
	public String questionUpdate(WonProQuestionDTO dto, MultipartFile[] files, 
			Model model) {
		
 		System.out.println(dto.toString());
		model.addAttribute("result", wonService.updateProQues(dto));
		model.addAttribute("dto", dto);

//    	model.addAttribute("resultFile", wonService.insertProQuesFile(dto, files));
    	
		return "icmall/questionUpdateOk";
	}
	
	@RequestMapping("icmall/questionDeleteOk")
	public String questionDeleteOk(int uid, Model model) {
		
		List<WonProQuestionDTO> dto = wonService.selectProQuesInfo(uid);
		int pro_uid = dto.get(0).getPro_uid();
		
		model.addAttribute("result", wonService.deleteProQues(uid));
		model.addAttribute("pro_uid", pro_uid);
		
		return "icmall/questionDeleteOk";
	}
	
	@RequestMapping("icmall/putBasket")
	public String insertBasket(WonBasketDTO dto, Model model) {
		
		model.addAttribute("result", wonService.insertBasket(dto));
		model.addAttribute("dto", dto);
		return "icmall/putBasket";
	}
	
	// 관리자 컨트롤러 ----------------------------
	
	@RequestMapping("icmall_admin/adminIndex")
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
	@RequestMapping("icmall_admin/payOk")
	public String statusOfshipPayOk(Model model) {
		
		
		model.addAttribute("payOk", adminService.statusOfshipPayOk());
		
		return "icmall_admin/payOk";
	}
	
	
	// 상품준비중 mapping
	@RequestMapping("icmall_admin/readyStuck")
	public String statusOfshipPreparedPro(Model model) {
		
		
		model.addAttribute("PreparedPro", adminService.statusOfshipPreparedPro());
		
		return "icmall_admin/readyStuck";
	}
	
	// 배송중 mapping
	@RequestMapping("icmall_admin/shopping")
	public String statusOfshipping(Model model) {
		
		
		model.addAttribute("shipping", adminService.statusOfshipping());
		
		return "icmall_admin/shopping";
	}
	
	
	// 배송완료 mapping
	@RequestMapping("icmall_admin/shoppingFinish")
	public String statusOfshipOk(Model model) {
		
		
		model.addAttribute("shipOk", adminService.statusOfshipOk());
		
		return "icmall_admin/shoppingFinish";
	}
	
	// 구매확정 mapping
	@RequestMapping("icmall_admin/buyFinish")
	public String statusOfshipBuyOk(Model model) {
		
		
		model.addAttribute("BuyOk", adminService.statusOfshipBuyOk());
		
		return "icmall_admin/buyFinish";
	}
	
	// 교환접수 mapping
	@RequestMapping("icmall_admin/exchange")
	public String statusOfshipExchange(Model model) {
		
		
		model.addAttribute("Exchange", adminService.statusOfshipExchange());
		
		return "icmall_admin/exchange";
	}
	
	// 환불접수 mapping
	@RequestMapping("icmall_admin/refund")
	public String statusOfshipRefund(Model model) {
		
		
		model.addAttribute("Refund", adminService.statusOfshipRefund());
		
		return "icmall_admin/refund";
	}
	
	@RequestMapping("icmall_admin/insertShipping")
	public String insertShip(int uid, Model model) {
		
//		System.out.println("TEST1");
		model.addAttribute("insertCnt", adminService.insertShip(uid));
//		System.out.println("TEST2");
		model.addAttribute("updateCnt", adminService.updateShipInto(uid));
//		System.out.println("TEST3");
		
		return "icmall_admin/insertShipping";
	}
	
	@PostMapping("icmall_admin/shipStatusChange")
	public String updateShipStatus(AdminOrderStatusDTO dto, Model model) {
		
//		System.out.println("메핑성공");
//		System.out.println("dto ------" + dto);
		model.addAttribute("result", adminService.updateShipStatus(dto));
		
		return "icmall_admin/shipStatusChange";
	}
	
	
	@RequestMapping("icmall/myStock")
	public String myStock(int uid, Model model,Principal principal, UserDTO dto) throws Exception {
		if(principal == null) {
			 model.addAttribute("message", "Hello Spring Security");
			 System.out.println("실패");
		 }
		 else {
			 model.addAttribute("user", principal.getName());
			 System.out.println("user : " + principal.getName());
			 
			 String id = principal.getName();
			 dto.setM_id(id);
			 userService.login(dto);
			 System.out.println("userService: " + userService.login(dto));
			 
			 model.addAttribute("dto", userService.login(dto));
	//		System.out.println("uid : " + uid);
			 model.addAttribute("reviewList", wonService.selectMyReview(uid));
				 // model 값으로 m_uid 전달
		 }
		return "icmall/myStock";
	}
	
	@RequestMapping("icmall/myReviewUpdate")
	public String myReviewUpdate(int uid, Model model) {
		int pro_uid = wonService.selectProReviewInfo(uid).get(0).getPro_uid();
//		System.out.println("uid : " + uid);
		model.addAttribute("reviewList", wonService.selectProReviewInfo(uid));
		model.addAttribute("proList", wonService.selectProInfo(pro_uid));
		
		return "icmall/myReviewUpdate";
	}
	
	@RequestMapping("/icmall/myReviewUpdateOk")
	public String myReviewUpdateOk(WonProReviewDTO dto, Model model) {
//		System.out.println("값은?" + r_uid);
//		System.out.println("wonService.selectProReviewInfo(r_uid) : " + wonService.selectProReviewInfo(r_uid).toString());
//		System.out.println("wonService.selectProInfo(pro_uid) : " + wonService.selectProInfo(pro_uid).toString());
		
		model.addAttribute("result", wonService.updateMyReview(dto));
		// 멤버 uid 전달
		
		
		return "icmall/myReviewUpdateOk";
	}
	
	@RequestMapping("/icmall/myReviewDeleteOk")
	public String myReviewDeleteOk(int uid, Model model) {
		
//		System.out.println(dto.get(0).getPro_uid());
		model.addAttribute("result", wonService.deleteProReview(uid));
		// 멤버 uid 전달
		
		return "icmall/myReviewDeleteOk";
	}
}
