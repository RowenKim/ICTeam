package com.lec.spring.crawling;

import java.io.IOException;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lec.spring.domain.UserDTO;
import com.lec.spring.service.JaeukBoardService;

import lombok.RequiredArgsConstructor;


@Controller
public class Fruit_Controller {
	
	
	private final Fruit_CrawlinService fruit_CrawlinService = new Fruit_CrawlinService();
	
	private JaeukBoardService jaeukBoardService;
	
	
	@Autowired
	public void setJaeukBoardService(JaeukBoardService jaeukBoardService) {
		this.jaeukBoardService = jaeukBoardService;
	}
	public Fruit_Controller() {
		System.out.println("Fruit_Controller() 생성");
	}

	@RequestMapping("/icmall/fruit")
	public String fruit(Model model){
		
		System.out.println("컨트롤러창 뜸");
		model.addAttribute("list", jaeukBoardService.list());
		
		
		return "icmall/fruit";
	}
	
	

}
