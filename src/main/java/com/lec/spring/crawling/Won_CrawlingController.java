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


@RequestMapping("/icmall")
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
	
    @GetMapping("/all/snack")
    public String snack(Model model,Principal principal, UserDTO dto) throws Exception {
    	
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
    	
    	
    	model.addAttribute("list", wonService.list());
    	
//    	  List<Won_CrawlingDTO> snackProductList = won_crawlingService.getSnack();

//          model.addAttribute("snackProduct", snackProductList);

        return "icmall/snack";

    }
    
    @GetMapping("/all/health")
    public String health(Model model, Principal principal, UserDTO dto) throws Exception {
    	
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
    	model.addAttribute("list", wonService.Healthlist());
    	
    	return "icmall/health";
    }
    
    @GetMapping("/all/stockDetail")
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
    
    @GetMapping("/user/questionInfo")
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

    @PostMapping(value="/user/stockReviewOk")
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
    
	@RequestMapping("/user/stockReview")
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
	
	@RequestMapping("/user/question")
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
	
    @RequestMapping("/user/questionOk")
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
    
	@RequestMapping("/user/reviewUpdate")
	public String reviewUpdateOk(int pro_uid, int r_uid, Model model, Principal principal, UserDTO dto) throws Exception {
		
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
		 }
		
//		System.out.println("값은?" + r_uid);
//		System.out.println("wonService.selectProReviewInfo(r_uid) : " + wonService.selectProReviewInfo(r_uid).toString());
//		System.out.println("wonService.selectProInfo(pro_uid) : " + wonService.selectProInfo(pro_uid).toString());
		
		model.addAttribute("reviewInfo", wonService.selectProReviewInfo(r_uid));
		model.addAttribute("proList", wonService.selectProInfo(pro_uid));
		
		return "icmall/reviewUpdate";
	}
	
	@RequestMapping("/user/reviewUpdateOk")
	public String reviewUpdateOk(WonProReviewDTO dto, Model model) {
		
		System.out.println(dto.toString());
		
		model.addAttribute("result", wonService.updateProReview(dto));
		model.addAttribute("dto", dto);
		
		return "icmall/reviewUpdateOk";
	}
	
	@RequestMapping("/user/reviewDeleteOk")
	public String reviewDeleteOk(int uid, Model model) {
		
		List<WonProReviewDTO> dto = wonService.selectProReviewInfo(uid);
		int pro_uid = dto.get(0).getPro_uid();
//		System.out.println(dto.get(0).getPro_uid());
		model.addAttribute("result", wonService.deleteProReview(uid));
		model.addAttribute("pro_uid", pro_uid);
		
		return "icmall/reviewDeleteOk";
	}
    
	@RequestMapping("/user/questionUpdate")
	public String questionUpdate(int uid, Model model, Principal principal, UserDTO dto) throws Exception {
		
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
		 }
		
		System.out.println(wonService.selectProQuesFiles(uid).toString());
		model.addAttribute("proqList", wonService.selectProQuesInfo(uid));
		model.addAttribute("fileList", wonService.selectProQuesFiles(uid));
		
		return "icmall/questionUpdate";
	}
	
	@RequestMapping("/user/questionUpdateOk")
	public String questionUpdate(WonProQuestionDTO dto, MultipartFile[] files, 
			Model model) {
		
 		System.out.println(dto.toString());
		model.addAttribute("result", wonService.updateProQues(dto));
		model.addAttribute("dto", dto);

//    	model.addAttribute("resultFile", wonService.insertProQuesFile(dto, files));
    	
		return "icmall/questionUpdateOk";
	}
	
	@RequestMapping("/user/questionDeleteOk")
	public String questionDeleteOk(int uid, Model model, Principal principal, UserDTO dto) throws Exception {
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
		 }
		
		
		List<WonProQuestionDTO> dtou = wonService.selectProQuesInfo(uid);
		int pro_uid = dtou.get(0).getPro_uid();
		
		model.addAttribute("result", wonService.deleteProQues(uid));
		model.addAttribute("pro_uid", pro_uid);
		
		return "icmall/questionDeleteOk";
	}
	
	@RequestMapping("/user/putBasket")
	public String insertBasket(WonBasketDTO dtob, Model model, Principal principal, UserDTO dto) throws Exception {
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
		 }
		
		model.addAttribute("result", wonService.insertBasket(dtob));
		model.addAttribute("dtob", dtob);
		return "icmall/putBasket";
	}
	
	@RequestMapping("/user/myStock")
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
	
	@RequestMapping("/user/myReviewUpdate")
	public String myReviewUpdate(int uid, Model model, Principal principal, UserDTO dto) throws Exception {
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
		int pro_uid = wonService.selectProReviewInfo(uid).get(0).getPro_uid();
//		System.out.println("uid : " + uid);
		model.addAttribute("reviewList", wonService.selectProReviewInfo(uid));
		model.addAttribute("proList", wonService.selectProInfo(pro_uid));
		
		return "icmall/myReviewUpdate";
	}
	
	@RequestMapping("/user/myReviewUpdateOk")
	public String myReviewUpdateOk(WonProReviewDTO dtoReivew, Model model, Principal principal, UserDTO dto) throws Exception {
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
//		System.out.println("값은?" + r_uid);
//		System.out.println("wonService.selectProReviewInfo(r_uid) : " + wonService.selectProReviewInfo(r_uid).toString());
//		System.out.println("wonService.selectProInfo(pro_uid) : " + wonService.selectProInfo(pro_uid).toString());
		
		model.addAttribute("result", wonService.updateMyReview(dtoReivew));
		// 멤버 uid 전달
		
		
		return "icmall/myReviewUpdateOk";
	}
	
	@RequestMapping("/user/myReviewDeleteOk")
	public String myReviewDeleteOk(int uid, Model model,Principal principal, UserDTO dto) throws Exception {
		
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
		
//		System.out.println(dto.get(0).getPro_uid());
		model.addAttribute("result", wonService.deleteProReview(uid));
		// 멤버 uid 전달
		
		return "icmall/myReviewDeleteOk";
	}
}
