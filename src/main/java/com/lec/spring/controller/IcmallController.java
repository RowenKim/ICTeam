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
@RequestMapping("/icmall")
public class IcmallController {
	
	@RequestMapping("/index")
	public String list(Model model) {
		
		return "icmall/index";
	}
	
	@RequestMapping("/stockReview")
	public String stockReview() {
		
		return "icmall/stockReview";
	}
	
	
	@RequestMapping("/joinCheck")
	public String joinCheck(Model model) {
		
		return "icmall/joinCheck";
	}
	
	@RequestMapping("/reviewUpdate")
	public String reviewUpdateOk() {
		
		return "icmall/reviewUpdate";
	}
	
	@RequestMapping("/serviceCenter")
	public String serviceCenter() {
		
		return "icmall/serviceCenter";
	}
	
	@RequestMapping("/question")
	public String question() {
		return "icmall/question";
	}

	@RequestMapping("/questionUpdate")
	public String questionUpdate() {
		return "icmall/questionUpdate";
	}
	
	@RequestMapping("/webWrite")
	public String webWrite() {
		return "icmall/webWrite";
	}
	
	@RequestMapping("/webUpdate")
	public String webUpdate() {
		return "icmall/webUpdate";
	}
	
	
}

















