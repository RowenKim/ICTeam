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

import com.lec.spring.domain.QuestionDTO;
import com.lec.spring.service.UserService;

@Controller
@RequestMapping("/icmall_admin/**")
public class QuestionController {
	
	
	
	@Autowired
	UserService userService;
	
	// 관리자 답변 페이지
	@GetMapping("/admin/questionDetailList")
	public String questionDetailList(Model model, int uid) throws Exception {
				
		System.out.println("---------------" + uid);
	model.addAttribute("list", userService.questionDetailList(uid));
				
	return "icmall_admin/post";	
	}
			
	// 관리자 문의 답변
	@PostMapping("/admin/questionUpdate")
	public String questionUpdate(Model model, QuestionDTO dto) throws Exception{
		
	userService.questionUpdate(dto);
	
		
	return "redirect:icmall_admin/admin/adminQuestion";
	}
	
	
	   // 관리자 문의 삭제
	   @RequestMapping(value = "/admin/qustionDelete", method=RequestMethod.GET)
	   public String qustionDelete(@RequestParam("RowCheck")List<Integer> user, Model model, Principal principal) throws Exception {
		   System.out.println("들어옴");
		   System.out.println("들어옴");
		   System.out.println("들어옴");
		   System.out.println("들어옴");
	      int[] a = user.stream().mapToInt(Integer::intValue).toArray();
	       for(int i=0; i < user.size(); i++) {
	          System.out.println("user : " + user.get(i));
	          //int z = Integer.parseInt(user.get(i));
	          a[i] = user.get(i);
	          System.out.println("user!!! : " + a[i]);
	          userService.questionDetailList(a[i]);
	         System.out.println("삭제!!! : " + userService.qustionDelete(a[i])); 
	      
	   }
	    return "icmall_admin/questionDetailList";
	   }
	
	
	
}
