package com.lec.spring.controller;

import java.util.HashMap;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/icmall_admin")
public class Icmall_adminController {

	@RequestMapping("/main")
	public String main(Model model) {
		
		return "icmall_admin/main";
	}
	
	@RequestMapping("/adminIndex")
	public String adminIndex(Model model) {
		
		return "icmall_admin/adminIndex";
	}


	@RequestMapping("/beforePay")
	public String beforePay(Model model) {
		
		return "icmall_admin/beforePay";
	}

	@RequestMapping("/finishPay")
	public String finishPay(Model model) {
		
		return "icmall_admin/finishPay";
	}

	@RequestMapping("/readyStuck")
	public String readyStuck(Model model) {
		
		return "icmall_admin/readyStuck";
	}

	@RequestMapping("/shopping")
	public String shopping(Model model) {
		
		return "icmall_admin/shopping";
	}

	@RequestMapping("/shoppingFinish")
	public String shoppingFinish(Model model) {
		
		return "icmall_admin/shoppingFinish";
	}

	@RequestMapping("/buyFinish")
	public String buyFinish(Model model) {
		
		return "icmall_admin/buyFinish";
	}

	@RequestMapping("/refund")
	public String refund(Model model) {
		
		return "icmall_admin/refund";
	}

	@RequestMapping("/exchange")
	public String exchange(Model model) {
		
		return "icmall_admin/exchange";
	}

	@RequestMapping("/adminQuestion")
	public String adminQuestion(Model model) {
		
		return "icmall_admin/adminQuestion";
	}

	@RequestMapping("/adminReview")
	public String adminReview(Model model) {
		
		return "icmall_admin/adminReview";
	}
	
	@RequestMapping("/post")
	public String post(Model model) {
		
		return "icmall_admin/post";
	}
	@RequestMapping("/userListw")
	public String userList(Model model) {
		
		return "icmall_admin/userList";
	}
	@RequestMapping("/userLevel")
	public String userLevel(Model model) {
		
		return "icmall_admin/userLevel";
	}
	
}
