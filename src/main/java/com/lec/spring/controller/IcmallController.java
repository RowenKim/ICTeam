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
	
	@RequestMapping("/join")
	public String join(Model model) {
		
		return "icmall/join";
	}
	@RequestMapping("/userUpdate")
	public String userUpdate(Model model) {
		
		return "icmall/userUpdate";
	}
	
	@RequestMapping("/snack")
	public String snack(Model model) {
		
		return "icmall/snack";
	}




















//서하 페이지 컨트롤
	
	@RequestMapping("/carousel")
	public String slide(Model model) {
		
		return "icmall/carousel";
	}
	
	
	
	
	

	
// 서하 페이지 컨트롤 끝 	
}

