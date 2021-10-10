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
	
//	@RequestMapping("/index")
//	public String list(Model model) {
//		
//		return "icmall/index";
//		
//	}
	
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
	
	@RequestMapping("/join")
	public String join(Model model) {
		
		return "icmall/join";
	}
//	@RequestMapping("/userUpdate")
//	public String userUpdate(Model model) {
//		
//		return "icmall/userUpdate";
//	}
	
//	@RequestMapping("/snack")
//	public String snack(Model model) {
//		
//		return "icmall/snack";
//	}


//서하 페이지 컨트롤 ~200 줄 까지 
	
	@RequestMapping("/carousel")
	public String slide(Model model) {
		
		return "icmall/carousel";
	}
	
//	@RequestMapping("/myPage")
//	public String myPage(Model model) {
//		
//		return "icmall/myPage";
//	}
	
	@RequestMapping("/orderList")
	public String orderList(Model model) {
		
		return "icmall/orderList";
	}
	
	@RequestMapping("/orderDetail")
	public String orderDetail(Model model) {
		
		return "icmall/orderDetail";
	}
	
	@RequestMapping("/checkOut")
	public String checkOut(Model model) {
		
		return "icmall/checkOut";
	}
	
	
	
	
	

	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	// 서하 페이지 컨트롤 끝 	

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
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/* 종원 컨트롤 페이지 200줄 ~ 400줄 */
	
	@RequestMapping("/stockDetail")
	public String stockDetail() {
		
		return "icmall/stockDetail";
	}
	
	
//	@RequestMapping("/basket")
//	public String basket() {
//		
//		return "icmall/basket";
//	}
//	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/* 재욱님 400줄 부터~  */
	
//	@RequestMapping("/fruit")
//	public String fruit(Model model) {
//		return "icmall/fruit";
//	}
	
	@RequestMapping("/meat")
	public String meat(Model model) {
		return "icmall/meat";
	}
//	@RequestMapping("/vegetable")
//	public String vegetable(Model model) {
//		return "icmall/vegetable";
//	}
	@RequestMapping("/health")
	public String health(Model model) {
		return "icmall/health";
	}
	
	
	
	
	
	
	
	
	
}


