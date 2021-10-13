package com.lec.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lec.spring.domain.QuestionDTO;
import com.lec.spring.service.UserService;

@Controller
@RequestMapping("/icmall_admin/**")
public class QuestionController {
	
	
	
	@Autowired
	UserService userService;
	
	// 관리자 답변 페이지
	@GetMapping("/admin/questionDetailList")
	public String questionDetailList(Model model, QuestionDTO dto) throws Exception {
				
	model.addAttribute("list", userService.questionDetailList(dto.getQ_uid()));
				
	return "icmall_admin/post";	
	}
			
	// 관리자 문의 답변
	@PostMapping("/admin/questionUpdate")
	public String questionUpdate(Model model, QuestionDTO dto) throws Exception{
		
	userService.questionUpdate(dto);
	
		
	return "redirect:icmall_admin/admin/adminQuestion";
	}
	
}
