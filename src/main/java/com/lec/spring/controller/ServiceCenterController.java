package com.lec.spring.controller;

import java.io.IOException;
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


@Controller
public class ServiceCenterController {
	
	private ServiceCenterService serviceCenterService;
	
	@Autowired
	public void setJinService(ServiceCenterService serviceCenterService) {
		this.serviceCenterService = serviceCenterService;
	}



	@GetMapping("/icmall/serviceCenter")
	public String serviceCenter(int uid, Model model) throws IOException {
    	//List<ServiceCenterDTO> dto = serviceCenterService.selectServiceCenter(uid);
		
	//	int uid = user.getM_uid();
		//String pass = user.getM_password();
		//System.out.println("pass" + pass);
		System.out.println("들어옴");
		System.out.println("uid : " + uid);
    	model.addAttribute("list", serviceCenterService.selectServiceCenter(uid));
    	model.addAttribute("memList", serviceCenterService.selectMemInfoAll());
    	
    	return "/icmall/serviceCenter";
	}
	
	 @GetMapping("/icmall/serviceCenterInfo")
	   @Transactional
	    public String serviceCenterInfo(int uid, Model model) throws IOException {
	    	
	    	serviceCenterService.ServiceCenterViewCnt(uid);
	    	model.addAttribute("list", serviceCenterService.selectServiceCenterInfo(uid));
	    	
	    	
	    	return "/icmall/serviceCenterInfo";
	    }
	 
	 @RequestMapping("/icmall/webWrite")
		public String webWrite(int uid, Model model) {
			
			model.addAttribute("m_uid", uid);
			model.addAttribute("memList", serviceCenterService.selectMemInfoAll());
			
			return "icmall/webWrite";
		}
	
	 @RequestMapping("/icmall/webWriteOk")
	    public String webWriteOk(ServiceCenterDTO dto, Model model) {
	    	model.addAttribute("resultServiceCenter", serviceCenterService.insertServiceCenter(dto));
	    	model.addAttribute("dto", dto);
	    	
	    	return "icmall/webWriteOk";
	    }
	
	 @RequestMapping("icmall/webUpdate")
		public String webUpdate(int uid, Model model) {
			model.addAttribute("list", serviceCenterService.selectServiceCenterInfo(uid));

		
			return "icmall/webUpdate";
		}
	 
	 @RequestMapping("icmall/webUpdateOk")
		public String webUpdate(ServiceCenterDTO dto, Model model) {
			System.out.println(dto.toString());
			model.addAttribute("result", serviceCenterService.updateServiceCenter(dto));
			model.addAttribute("dto", dto);

			return "icmall/webUpdateOk";
		}
	 
	 @RequestMapping("icmall/webDeleteOk")
		public String webDeleteOk(int uid, Model model) {
			
			List<ServiceCenterDTO> dto = serviceCenterService.selectServiceCenterInfo(uid);
			int m_uid = dto.get(0).getM_uid();
			
			
			
			model.addAttribute("result", serviceCenterService.deleteServiceCenter(uid));
			model.addAttribute("m_uid", m_uid);
			
			return "icmall/webDeleteOk";
		}
	
	
}


