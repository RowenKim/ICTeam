package com.lec.spring.controller;



import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.lec.spring.JoinValidator;
import com.lec.spring.config.PrincipalDetails;
import com.lec.spring.config.PrincipalDetailsService;
import com.lec.spring.domain.AuthDTO;
import com.lec.spring.domain.QuestionDTO;
import com.lec.spring.domain.ReviewDTO;
import com.lec.spring.domain.UserDTO;
import com.lec.spring.service.UserService;

@Controller
@RequestMapping("/icmall/**")
public class IndexController {
	
	@Autowired
	UserService userService;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
//	@RequestMapping({"", "/"})
//	@ResponseBody
//	public String sayHello() {
//		return "<h1>/ : Hello</h1>";
//	}
	
	@RequestMapping({"/all/loginForm"})
	public String login() {
//		return "<h2>/login : login ?????????</h2>";
		
		return "/icmall/loginForm";
	}
	
	@GetMapping("/all/join")
	public String join() {
		return "/icmall/join";
	}
	
	@PostMapping("/all/joinOk")
	public String joinOk(@Valid UserDTO user, BindingResult result) {
		System.out.println(user);
		
		String rawPassword = user.getM_password();
		String encPassword = passwordEncoder.encode(rawPassword);
		user.setM_password(encPassword);
		
		String page = "/joinOk";
		
		
		if(result.hasErrors()) {
//		  page = "icmall/join";
//		  System.out.println(page);
		  return "redirect:/icmall/all/join";
		}
		
		else {
//			page = "icmall/loginForm";
			int cnt = userService.addMember(user);
			return "redirect:/icmall/all/loginForm";
		}
		
		

		}
	
	// ????????? ?????? ??????
	@ResponseBody
	@RequestMapping(value="all/idChk", method = RequestMethod.POST)
	public int idChk(String user) throws Exception {
		System.out.println("??????????????????");
		int result = userService.idChk(user);
		return result;
	}

	// ?????? ?????? ??????
	@ResponseBody
	@RequestMapping(value="all/mailChk", method = RequestMethod.POST)
	public int mailChk(String mail) throws Exception {
		System.out.println("??????????????????");
		int result = userService.mailChk(mail);
		return result;
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.setValidator(new JoinValidator());  // BoardValidator ??? ??????
	}
	
	
	
	//?????????????????? 
//	@ResponseBody
//	@RequestMapping(value="/userUpdate", method = RequestMethod.POST)
//	public String registerUpdate(UserDTO dto, HttpSession session,Authentication authentication ) throws Exception{
//		
//		 int count = 0;
//	      
//	      // message
//	      StringBuffer message = new StringBuffer();
//	      String status = "FAIL";
//      
//	     PrincipalDetails userDetails = (PrincipalDetails) authentication.getPrincipal();
//	     String id = userDetails.getUsername();
//	     
//	     System.out.println(id);
//	     
//		return "id";
//
//	}
	
// @GetMapping("/all/index")
// public String index (Model model, Principal principal) {
//	 if(principal == null) {
//		 model.addAttribute("message", "Hello Spring Security");
//		 System.out.println("??????");
//	 }
//	 else {
//		 model.addAttribute("user", principal.getName());
//		 System.out.println("user : " + principal.getName());
//	 }
//	 	 return "/icmall/index";
// }
// 
 
 	@RequestMapping("/user/myPage")
	public String myPage(Model model, Principal principal, UserDTO dto) throws Exception {
 		if(principal == null) {
			 model.addAttribute("message", "Hello Spring Security");
			 System.out.println("??????");
		 }
		 else {
			 model.addAttribute("user", principal.getName());
			 System.out.println("user : " + principal.getName());
			 
			 String id = principal.getName();
			 dto.setM_id(id);
			 userService.login(dto);
			 System.out.println("userService: " + userService.login(dto));
			 
			 model.addAttribute("dto", userService.login(dto));
		 }
 		
		return "/icmall/myPage";
	}
 	
 	
	@GetMapping("/user/userUpdate")
	public String userUpdate(Model model, Principal principal, UserDTO dto) throws Exception {
		if(principal == null) {
			 model.addAttribute("message", "Hello Spring Security");
			 System.out.println("??????");
		 }
		 else {
			 model.addAttribute("user", principal.getName());
			 System.out.println("user : " + principal.getName());
			 String id = principal.getName();
			 dto.setM_id(id);
			 
			 userService.login(dto);
			
			 model.addAttribute("dto", userService.login(dto));
			 
//			 RedirectAttributes redirectAttributes
//			 redirectAttributes.addAttribute("red", userService.login(dto));
		 }
		
		
		
		return "icmall/userUpdate";
	}
	
	@PostMapping("/user/userUpdateOk")
	public String userUpdateOk( Principal principal, @Valid UserDTO dto,BindingResult result ,Model model) throws Exception {
		String page = "/userUpdateOk";
		 if(result.hasErrors()) {
			 
//			 UserDTO redPage = userService.login(dto);
//			 @RequestParam("red") UserDTO red,
			 // ???????????? ????????? ?????? ???????????? ?????? ?????? ????????????
			 model.addAttribute("user", principal.getName());
			 System.out.println("user : " + principal.getName());
			 String id = principal.getName();
			 dto.setM_id(id);
			 
			 userService.login(dto);
			 model.addAttribute("dto", userService.login(dto));
			 
//			 page = "/icmall/userUpdate";
			 return "redirect:/icmall/user/userUpdate";
			}
		 // ?????? ????????? ?????????
		 else {
				
//				return "redirect:/icmall/index";
		if(principal == null) {
			 model.addAttribute("message", "Hello Spring Security");
			 System.out.println("??????");
		 }
		 else {
			 // ???????????? ?????????
			 model.addAttribute("user", principal.getName());
			 System.out.println("user : " + principal.getName());
			 String id = principal.getName();
			 dto.setM_id(id);
			 System.out.println("userService : " + dto);
			 // ?????????
			 String rawPassword = dto.getM_password();
			 String encPassword = passwordEncoder.encode(rawPassword);
			 dto.setM_password(encPassword);
			 
			 userService.userUpdate(dto);
			 System.out.println("-----------------------------------" );
			 System.out.println("userService2 : " + dto);	
				
		 }
		
		System.out.println("????????????! : " + page );
	}
		
//		return "redirect:/icmall/index";
		System.out.println("-----------------------");
		System.out.println("return : " + page);
		return "redirect:/icmall/all/index";
	}
	
	// ????????????
//	@RequestMapping(value = "/logout", method = RequestMethod.GET)
//	public String logout(HttpSession session) {
//		session.invalidate();
//		return "redirect:/icmall/index";
//		
//	}
	
	
	// ??????????????????
	 @PostMapping("/user/userDelete")
	 public String userEnable (Model model, Principal principal, UserDTO dto, HttpSession session) throws Exception {
		 System.out.println("?????????????????? : ??????!!!" );
		 
		 
		 
		 if(principal == null) {
			 model.addAttribute("message", "Hello Spring Security");
			 System.out.println("??????");
			 System.out.println("?????????????????? : ??????!!!" );
		 }
		 else {
			 model.addAttribute("user", principal.getName());
			 System.out.println("user : " + principal.getName());
			 String id = principal.getName();
			 dto.setM_id(id);
			 
//			 System.out.println("?????????????????? : " + dto);
			 model.addAttribute("dto", userService.login(dto));
			 
			 //userService.userEnable(dto);
			 
			 System.out.println("????????????!!! : " + dto);
			 
			 userService.deleteMember(dto);
			 
			 userService.UserDelete(dto);
			 
			 session.invalidate();
		 }
		 return "redirect:/icmall/all/index";
		 
	 }
	 
		
		
		
		
		//????????? ???????????? 
//		@GetMapping("getUserList")
//		public String getUserList(Model model, Principal principal, UserDTO dto) throws Exception {
//			
//			
//			return null;
//			
//		}
		
		
		
		
	
		
		
		// ????????????
//		@RequestMapping("all/serviceCenter")
//		public String serviceCenter(Model model, Principal principal, UserDTO dto) {
//			 if(principal == null) {
//				 model.addAttribute("message", "Hello Spring Security");
//				 System.out.println("??????");
//			 }
//			 else {
//				 model.addAttribute("user", principal.getName());
//				 System.out.println("user : " + principal.getName());
//			 }
//			return "icmall/serviceCenter";
//		}
		
			
		
}
