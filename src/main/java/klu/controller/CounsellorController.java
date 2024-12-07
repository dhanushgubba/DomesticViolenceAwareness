package klu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import klu.model.Counsellor;
import klu.model.Request;
import klu.model.User;
import klu.service.AdminService;
import klu.service.CounsellorService;

@Controller
public class CounsellorController {
	
	@Autowired
	private CounsellorService counsellorService;
	
	@Autowired
	private AdminService adminService;

	@GetMapping("/counsellorlogin")
	public ModelAndView counsellorlogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("counsellorlogin");
		return mv;
	}
	
	@PostMapping("/checkcounsellorlogin")
	public ModelAndView checkcounsellorlogin(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		Counsellor counsellor = counsellorService.checkCousellorLogin(email, password);
		if(counsellor!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("counsellor", counsellor);
			mv.setViewName("counsellorhome");
		}
		else {
			mv.setViewName("adminloginfail");
			mv.addObject("message", "Login Failed");
		}
		return mv;
	}
	@GetMapping("counsellorhome")
	public ModelAndView counsellorhome() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("counsellorhome");
		return mv;
	}
	@GetMapping("counsellorprofile")
	public ModelAndView counsellorprofile() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("counsellorprofile");
		return mv;
	}
	
	@GetMapping("/clients")
	public ModelAndView clients() {
	    // Fetch all requests and assigned counselors (no user-specific filtering)
	    List<Request> allRequests = counsellorService.CounsellorRequests();
	    
	    // Prepare the ModelAndView
	    ModelAndView mv = new ModelAndView("clients");
	    mv.addObject("clientrequests", allRequests); // Add all requests to the view
	    
	    return mv;
	}
	
	@GetMapping("/counsellorresources")
	public ModelAndView counsellorresources() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("counsellorresources");
		return mv;
	}

}
