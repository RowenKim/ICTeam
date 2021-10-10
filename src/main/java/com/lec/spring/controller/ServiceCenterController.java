package com.lec.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lec.spring.domain.ServiceCenterDTO;
import com.lec.spring.service.ServiceCenterService;

import lombok.AllArgsConstructor;


@Controller
@AllArgsConstructor
@RequestMapping("/icmall")
public class ServiceCenterController {
	
	private ServiceCenterService serviceCenterService;
	
	@Autowired
	public void setJinService(ServiceCenterService serviceCenterService) {
		this.serviceCenterService = serviceCenterService;
	}

	
	@PostMapping("/webWriteOk")
	public String webWriteOk(ServiceCenterDTO dto, Model model) {
		//System.out.println("dto " + dto.toString());
		model.addAttribute("result", serviceCenterService.insertServiceCenter(dto));
		//System.out.println("test ");
		return "icmall/webWriteOk";
		
	}
	
	@RequestMapping("/serviceCenterInfo")
	public String serviceCenterInfo(Model model) {
		
		return "icmall/serviceCenterInfo";
		
	}
	
	@PostMapping("/webUpdateOk")
	public String webUpdateOk(ServiceCenterDTO dto, Model model) {
		
		model.addAttribute("result", serviceCenterService.updateServiceCenter(dto));

		return "icmall/webUpdateOk";
	}
	@RequestMapping("/serviceCenter")
	public String list(Model model) {
		
		return "icmall/serviceCenter";
	}
	
}


