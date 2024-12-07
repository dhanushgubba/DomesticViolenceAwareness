package klu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import klu.model.Admin;
import klu.model.Advisor;
import klu.model.Contact;
import klu.repository.AdvisorRepository;
import klu.service.AdvisorService;

@Controller
public class AdvisorController {
	
	@Autowired
	private AdvisorService advisorService;
	
	@GetMapping("/advisorlogin")
	public ModelAndView advisorlogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("advisorlogin");
		return mv;
	}
	
	@PostMapping("/checkadvisorlogin")
	public ModelAndView checkadvisorlogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		String aduname = request.getParameter("aduname");
		String adpwd = request.getParameter("adpwd");
		
		Advisor advisor = advisorService.checkAdvisorLogin(aduname, adpwd);
		
		if(advisor!=null) 
		{
			HttpSession session = request.getSession();
			session.setAttribute("advisor",advisor);
			mv.setViewName("advisorhome");	
		}
		else {
			mv.setViewName("advisorlogin");
			mv.addObject("message", "Login Failed");
		}
		return mv;
	}
	
	@GetMapping("/advisorhome")
	public ModelAndView advisorhome() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("advisorhome");
		return mv;
	}

	@GetMapping("advisorresources")
	public ModelAndView advisorresources() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("advisorresources");
		return mv;
	}
	@GetMapping("/advisorprofile")
	public ModelAndView advisorprofile() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("advisorprofile");
		return mv;
	}
	
	@GetMapping("/legalnews")
	public ModelAndView legalnews() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("legalnews");
		return mv;
	}
	@GetMapping("/knowledgebase")
	public ModelAndView knowlegebase() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("knowledgebase");
		return mv;
	}
	@GetMapping("/support")
	public ModelAndView support() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("support");
		return mv;
	}
	
	@PostMapping("/insertsupport")
	public ModelAndView insertsupport(HttpServletRequest request) {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String issue = request.getParameter("issue");
		String description = request.getParameter("description");
		
		Contact contact = new Contact();
		contact.setName(name);
		contact.setEmail(email);
		contact.setIssue(issue);
		contact.setDescription(description);
		
		 // Save advisor using service layer
	    String message;
	    try {
	        advisorService.addContact(contact);
	        message = "Contact added successfully!";
	    } catch (Exception e) {
	        message = "Error adding advisor: " + e.getMessage();
	    }

	    // Prepare the response view
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("support");
	    mv.addObject("message", message);
	    return mv;
	}
}
