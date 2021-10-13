package com.lec.spring.controller;

import java.io.IOException;
import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.lec.spring.domain.ServiceCenterDTO;
import com.lec.spring.domain.UserDTO;
import com.lec.spring.domain.ServiceCenterDAO;
import com.lec.spring.service.ServiceCenterService;
import com.lec.spring.service.UserService;


@Controller
@RequestMapping("/icmall/**")
public class ServiceCenterController {
	
	@Autowired
	UserService userService;
	
	private ServiceCenterService serviceCenterService;
	
	@Autowired
	public void setJinService(ServiceCenterService serviceCenterService) {
		this.serviceCenterService = serviceCenterService;
	}


	 //고객센터
	@RequestMapping("all/serviceCenter")
	public String serviceCenter(Model model, Principal principal, UserDTO dto) throws Exception {
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
			
			 model.addAttribute("dto", userService.login(dto));
			 model.addAttribute("list", serviceCenterService.selectServiceCenter());
//			 RedirectAttributes redirectAttributes
//			 redirectAttributes.addAttribute("red", userService.login(dto));
		 }
		
		return "icmall/serviceCenter";
	}
	 @GetMapping("/user/serviceCenterInfo")
	   @Transactional
	    public String serviceCenterInfo(int uid, Model model) throws IOException {
	    	
	    	serviceCenterService.ServiceCenterViewCnt(uid);
	    	model.addAttribute("list", serviceCenterService.selectServiceCenterInfo(uid));
	    	
	    	
	    	return "/icmall/serviceCenterInfo";
	    }
	 
	 @RequestMapping("/user/webWrite")
		public String webWrite(int uid, Model model) {
			
			model.addAttribute("m_uid", uid);
			model.addAttribute("memList", serviceCenterService.selectMemInfoAll());
			
			return "icmall/webWrite";
		}
	
	 @RequestMapping("/user/webWriteOk")
	    public String webWriteOk(ServiceCenterDTO dto, Model model) {
	    	model.addAttribute("resultServiceCenter", serviceCenterService.insertServiceCenter(dto));
	    	model.addAttribute("dto", dto);
	    	
	    	return "icmall/webWriteOk";
	    }
	
	 @RequestMapping("/user/webUpdate")
		public String webUpdate(int uid, Model model) {
			model.addAttribute("list", serviceCenterService.selectServiceCenterInfo(uid));

		
			return "icmall/webUpdate";
		}
	 
	 @RequestMapping("/user/webUpdateOk")
		public String webUpdate(ServiceCenterDTO dto, Model model) {
			System.out.println(dto.toString());
			model.addAttribute("result", serviceCenterService.updateServiceCenter(dto));
			model.addAttribute("dto", dto);

			return "icmall/webUpdateOk";
		}
	 
	 @RequestMapping("/user/webDeleteOk")
		public String webDeleteOk(int uid, Model model) {
			
			
			model.addAttribute("result", serviceCenterService.deleteServiceCenter(uid));
			return "icmall/webDeleteOk";
		}
	
	
}


