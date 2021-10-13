package com.lec.spring.crawling;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.lec.spring.domain.WonBasketDTO;
import com.lec.spring.domain.WonProQuestionDTO;
import com.lec.spring.domain.WonProReviewDTO;
import com.lec.spring.domain.WonQuesFileDTO;
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
    	List<WonProQuestionDTO> dto = wonService.selectProQues(uid);
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
    public String questionInfo(int uid, Model model) throws IOException {
    	
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
	public String stockReview(int uid, Model model) {
		
		model.addAttribute("list", wonService.selectProInfo(uid));
		model.addAttribute("memList", wonService.selectMemInfoAll());
		model.addAttribute("proqReviweList", wonService.selectProReview(uid));
		
		return "icmall/stockReview";
	}
	
	@RequestMapping("/icmall/question")
	public String question(int uid, Model model) {
		
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
	
	
	
}
