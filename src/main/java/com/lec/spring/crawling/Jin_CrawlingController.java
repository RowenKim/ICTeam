package com.lec.spring.crawling;

import java.io.IOException;
import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.lec.spring.domain.Jin_CrawlingDAO;
import com.lec.spring.service.JinService;
import com.lec.spring.service.UserService;
import com.lec.spring.domain.Jin_CrawlingDTO;
import com.lec.spring.domain.UserDTO;


@Controller
public class Jin_CrawlingController {
	
	private JinService jinService;
	
	@Autowired
	UserService userService;
	
	@Autowired
	public void setJinService(JinService jinService) {
		this.jinService = jinService;
	}
	
	
	Jin_CrawlingDAO dao;
	
    @GetMapping("/icmall/all/meat")
    public String meatModel (Model model,Principal principal, UserDTO dto) throws Exception {
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
	
	
	model.addAttribute("list", jinService.list());

        return "icmall/meat";

    }
    
//    @RequestMapping(value = "/icmall/searchOk", method = RequestMethod.GET)
//	public String getBoardList(Model model
//			, @RequestParam(required = false, defaultValue = "1") int page
//			, @RequestParam(required = false, defaultValue = "1") int range
//			, @RequestParam(required = false) String keyword
//			) throws Exception {
//		
//		Search search = new Search();
//		search.setKeyword(keyword);
//		//전체 게시글 수
//		int listCnt = JinService.getsearchOkListCnt(search);
//		search.pageInfo(page, range, listCnt);
//		model.addAttribute("boardList", JinService.getsearchOkList(search));
//		return "icmall/searchOk";
//
//	}



    
} 
