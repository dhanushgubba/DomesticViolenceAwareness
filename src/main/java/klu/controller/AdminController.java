package klu.controller;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.util.List;

import javax.sql.rowset.serial.SerialBlob;
import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import klu.model.Admin;
import klu.model.Advisor;
import klu.model.Booking;
import klu.model.Counsellor;
import klu.model.DeletedUser;
import klu.model.Request;
import klu.model.Shelter;
import klu.model.User;
import klu.model.Workshop;
import klu.repository.DeletedUserRepository;
import klu.service.AdminService;

@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;
	

	@GetMapping("/adminlogin")
	public ModelAndView adminlogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	
	@GetMapping("/adminhome")
	public ModelAndView adminhome()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminhome");
		long count = adminService.usercount();
		mv.addObject("count", count);
		return mv;
	}
	
	@GetMapping("/viewallusers")
	public ModelAndView viewallusers() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewallusers");
		
		long count = adminService.usercount();
		mv.addObject("count", count);
		
		List<User> users = adminService.viewAllUsers();
		mv.addObject("userslist",users);
		return mv;	
	}
	
	@PostMapping("/checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		String auname = request.getParameter("auname");
		String apwd = request.getParameter("apwd");
		
		Admin admin = adminService.checkAdminLogin(auname, apwd);
		
		if(admin!=null) 
		{
			HttpSession session = request.getSession();
			session.setAttribute("admin",admin);
			mv.setViewName("adminhome");
			long count = adminService.usercount();
			mv.addObject("count", count);
		}
		else {
			mv.setViewName("adminlogin");
			mv.addObject("message", "Login Failed");
		}
		return mv;
	}
	
	@GetMapping("/viewallrequests")
	public ModelAndView viewallrequests() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewallrequests");
		
		long count = adminService.requestcount();
		mv.addObject("count", count);
		
		List<Request> requests = adminService.viewAllRequests();
		mv.addObject("requestslist", requests);
		return mv;
	}
	
	@GetMapping("/viewallcounsellors")
	public ModelAndView viewallcounsellors() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewallcounsellors");
		
		long count = adminService.counsellorcount();
		mv.addObject("count", count);
		
		List<Counsellor> counsellors = adminService.viewAllCounsellors();
		mv.addObject("counsellorslist", counsellors);
		return mv;
	}
	
	@GetMapping("/adduser")
	public ModelAndView addUserForm() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adduser");
		return mv;
	}
	
	@PostMapping("/insertusers")
	public ModelAndView addUser(HttpServletRequest request) {
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String address = request.getParameter("address");
		String contact = request.getParameter("contact");
		String password = request.getParameter("password");
		
		User user = new User();
		user.setFirstname(firstname);
		user.setLastname(lastname);
		user.setGender(gender);
		user.setEmail(email);
		user.setUsername(username);
		user.setAddress(address);
		user.setContact(contact);
		user.setPassword(password);
		
		String message = adminService.addUser(user);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adduser");
		mv.addObject("message", message);
		return mv;	
	}
	
	
	
	@GetMapping("userdelete")
	public String deleteuser(@RequestParam Long id) {
		adminService.deleteUser(id);
		return "redirect:/viewallusers";
	}
	
	@GetMapping("userupdate")
	public ModelAndView userupdate(@RequestParam("id") Long id) {
		User user = adminService.displayUserById(id); // Fetch shelter by ID
	    ModelAndView mv = new ModelAndView("updateuser");
	    mv.addObject("user", user); // Pass the shelter object to the JSP
	    return mv;
	}
	
	@PostMapping("/userupdate")
	public String saveUpdatedUser(
	        @RequestParam("id") Long id,
	        @RequestParam("firstname") String firstname,
	        @RequestParam("lastname") String lastname,
	        @RequestParam("username") String username,
	        @RequestParam("contact") String contact,
	        @RequestParam("address") String address) {
	    try {
	        User user = new User();
	        user.setId(id);
	        user.setFirstname(firstname);
	        user.setLastname(lastname);
	        user.setUsername(username);
	        user.setContact(contact);
	        user.setAddress(address);
	        adminService.updateUser(user);  // Ensure this method is correctly updating the user
	    } catch (Exception e) {
	        e.printStackTrace();
	        return "error";  // Return an error page if an exception occurs
	    }
	    return "redirect:/viewallusers";  // Redirect to the view-all-users page
	}


	
	
	@GetMapping("/addcounsellor")
	public ModelAndView addcounsellor() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("addcounsellor");
		return mv;
	}
	
	@PostMapping("/insertcounsellors")
	public ModelAndView insertcounsellor(HttpServletRequest request) {
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		
		String dobString = request.getParameter("dob");
	    LocalDate dob = null;

	    try {
	        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd"); // Specify your date format
	        dob = LocalDate.parse(dobString, formatter); // Convert the string to LocalDate
	    } catch (DateTimeParseException e) {
	        e.printStackTrace(); // Log error or handle appropriately
	    }
		
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String postalcode = request.getParameter("postalcode");
		String experience = request.getParameter("experience");
		String address = request.getParameter("address");
		String qualification = request.getParameter("qualification");
		String specialization = request.getParameter("specialization");
		String certification = request.getParameter("certfication");
		String licenceno = request.getParameter("licenceno");
		String languages = request.getParameter("languages");
		String availability = request.getParameter("availability");
		String status = request.getParameter("status");
		String hcases = request.getParameter("hcases");
		String counsellingmode = request.getParameter("counsellingmode");
		String therapyissues = request.getParameter("therapyissues");
		
		Counsellor counsellor = new Counsellor();
		counsellor.setName(name);
		counsellor.setGender(gender);
		counsellor.setDob(dob);
		counsellor.setEmail(email);
		counsellor.setPhone(phone);
		counsellor.setCity(city);
		counsellor.setState(state);
		counsellor.setPostalcode(postalcode);
		counsellor.setExperience(experience);
		counsellor.setAddress(address);
		counsellor.setQualification(qualification);
		counsellor.setSpecialization(specialization);
		counsellor.setCertification(certification);
		counsellor.setLicenceno(licenceno);
		counsellor.setLanguages(languages);
		counsellor.setAvailability(availability);
		counsellor.setStatus(status);
		counsellor.setHcases(hcases);
		counsellor.setCounsellingmode(counsellingmode);
		counsellor.setTherapyissues(therapyissues);
		
		String message = adminService.addCounsellor(counsellor);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("addcounsellor");
		mv.addObject("message", message);
		return mv;	
	}
	
	@GetMapping("/editcounsellor/{id}")
	public ModelAndView editCounsellor(@PathVariable("id") Long id) {
	    ModelAndView mv = new ModelAndView();
	    Counsellor counsellor = adminService.findCounsellorById(id);

	    if (counsellor != null) {
	        mv.setViewName("editcounsellor"); // Make sure this matches your JSP filename
	        mv.addObject("counsellor", counsellor);
	    } else {
	        mv.setViewName("viewallcounsellors");
	        mv.addObject("message", "Counsellor not found.");
	    }

	    return mv;
	}

	@PostMapping("/updatecounsellor/{id}")
	public String updateCounsellor(@PathVariable("id") Long id, HttpServletRequest request) {
	    // Extract data from the form
	    String name = request.getParameter("name");
	    String gender = request.getParameter("gender");
	    LocalDate dob = LocalDate.parse(request.getParameter("dob"));
	    String email = request.getParameter("email");
	    String phone = request.getParameter("phone");
	    String city = request.getParameter("city");
	    String state = request.getParameter("state");
	    String postalcode = request.getParameter("postalcode");
	    String experience = request.getParameter("experience");
	    String address = request.getParameter("address");
	    String qualification = request.getParameter("qualification");
	    String specialization = request.getParameter("specialization");
	    String certification = request.getParameter("certification");
	    String licenceno = request.getParameter("licenceno");
	    String languages = request.getParameter("languages");
	    String availability = request.getParameter("availability");
	    String status = request.getParameter("status");
	    String hcases = request.getParameter("hcases");
	    String counsellingmode = request.getParameter("counsellingmode");
	    String therapyissues = request.getParameter("therapyissues");

	    // Find the counsellor by ID
	    Counsellor counsellor = adminService.findCounsellorById(id);

	    if (counsellor != null) {
	        // Update counsellor details
	        counsellor.setName(name);
	        counsellor.setGender(gender);
	        counsellor.setDob(dob);
	        counsellor.setEmail(email);
	        counsellor.setPhone(phone);
	        counsellor.setCity(city);
	        counsellor.setState(state);
	        counsellor.setPostalcode(postalcode);
	        counsellor.setExperience(experience);
	        counsellor.setAddress(address);
	        counsellor.setQualification(qualification);
	        counsellor.setSpecialization(specialization);
	        counsellor.setCertification(certification);
	        counsellor.setLicenceno(licenceno);
	        counsellor.setLanguages(languages);
	        counsellor.setAvailability(availability);
	        counsellor.setStatus(status);
	        counsellor.setHcases(hcases);
	        counsellor.setCounsellingmode(counsellingmode);
	        counsellor.setTherapyissues(therapyissues);
	       
	        adminService.updateCounsellor(counsellor);
	        
	      
	        return "redirect:/viewallcounsellors";
	    } else {
	       
	        return "redirect:/viewallcounsellors";
	    }
	}
	
	/*@GetMapping("/deletecounsellor/{id}")
	public ModelAndView deleteCounsellor(@PathVariable("id") Long id) {
	    ModelAndView mv = new ModelAndView();
	    
	    // Call service method to delete the counsellor by ID
	    adminService.deleteCounsellor(id);
	    
	    // Redirect to the counsellor list page after deletion
	    mv.setViewName("redirect:/viewallcounsellors");
	    mv.addObject("message", "Counsellor deleted successfully.");
	    
	    return mv;
	}*/
	@PostMapping("/deletecounsellor/{id}")
	public ModelAndView deleteCounsellor(@PathVariable("id") Long id) {
	    ModelAndView mv = new ModelAndView();
	    
	    // Call service method to delete the counsellor by ID
	    adminService.deleteCounsellor(id);
	    
	    // Redirect to the counsellor list page after deletion
	    mv.setViewName("redirect:/viewallcounsellors");
	    mv.addObject("message", "Counsellor deleted successfully.");
	    
	    return mv;
	}
	
	@GetMapping("/listcounsellors")
	public ModelAndView listcounsellors() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("listcounsellors");
		
		long count = adminService.counsellorcount();
		mv.addObject("count", count);
		
		List<Counsellor> counsellors = adminService.viewAllCounsellors();
		mv.addObject("counsellorslist", counsellors);
		return mv;
	}
	
	@GetMapping("addshelter")
	public String addshelter() {
		return "addshelter";
	}
	
	@PostMapping("/insertshelter")
	public ModelAndView addShelter(@RequestParam("name") String name,
	                               @RequestParam("type") String type,
	                               @RequestParam("support") String support,
	                               @RequestParam("contact") String contact,
	                               @RequestParam("location") String location,
	                               @RequestParam("description") String description,
	                               @RequestParam("simage") MultipartFile simage) throws IOException, SerialException, SQLException {
	    
	    // Convert MultipartFile to Blob
	    Blob imageBlob = new SerialBlob(simage.getBytes());

	    Shelter shelter = new Shelter();
	    shelter.setName(name);
	    shelter.setType(type);
	    shelter.setSupport(support);
	    shelter.setContact(contact);
	    shelter.setLocation(location);
	    shelter.setDescription(description);
	    shelter.setImage(imageBlob);

	    String message = adminService.addShelter(shelter);
	    
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("sheltersuccess");
	    mv.addObject("message", message);  // Provide feedback message
	    return mv;
	}

	@GetMapping("/viewallshelters")
	public ModelAndView viewallshelters() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewallshelters");
		List<Shelter> shelters = adminService.viewAllShelters();
		mv.addObject("shelters", shelters);
		return mv;
	}
	
	@GetMapping("displayshelterimage")
	public ResponseEntity<byte[]> displayshelterimage(@RequestParam Long id) throws SQLException {
		Shelter shelter = adminService.displayShelterById(id);
		
		byte[] imagesbytes = null;
		imagesbytes = shelter.getImage().getBytes(1,(int)shelter.getImage().length());
		return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imagesbytes);
		
	}
	
	@GetMapping("delete")
	public String delete(@RequestParam Long id) {
		adminService.deleteShelter(id);
		return "redirect:/viewallshelters";
	}
	
	@GetMapping("/update")
	public ModelAndView updateshelter(@RequestParam("id") Long id) {
	    Shelter shelter = adminService.displayShelterById(id); // Fetch shelter by ID
	    ModelAndView mv = new ModelAndView("updateshelter");
	    mv.addObject("shelter", shelter); // Pass the shelter object to the JSP
	    return mv;
	}
	@PostMapping("/update")
	public String saveUpdatedShelter(
	        @RequestParam("id") Long id,
	        @RequestParam("name") String name,
	        @RequestParam("type") String type,
	        @RequestParam("support") String support,
	        @RequestParam("contact") String contact,
	        @RequestParam("location") String location,
	        @RequestParam("description") String description,
	        @RequestParam("simage") MultipartFile image) {

	    try {
	        Shelter shelter = new Shelter();
	        shelter.setId(id);
	        shelter.setName(name);
	        shelter.setType(type);
	        shelter.setSupport(support);
	        shelter.setContact(contact);
	        shelter.setLocation(location);
	        shelter.setDescription(description);

	        // Handle image as Blob
	        if (!image.isEmpty()) {
	            shelter.setImage(new SerialBlob(image.getBytes())); // Convert image bytes to Blob
	        }

	        adminService.updateShelter(shelter);
	    } catch (Exception e) {
	        e.printStackTrace();
	        return "error"; // Redirect to an error page in case of exceptions
	    }

	    return "redirect:/viewallshelters"; // Redirect to shelter listing page
	}
	
	@PostMapping("/assigncounsellor")
	public String assignCounsellor(@RequestParam("requestId") Long requestId, @RequestParam("counsellorId") Long counsellorId, Model model) {
	    boolean success = adminService.assignCounsellor(requestId, counsellorId);
	    if (success) {
	        model.addAttribute("message", "Counsellor assigned successfully!");
	    } else {
	        model.addAttribute("error", "Failed to assign counsellor. Please try again.");
	    }
	    return "redirect:/viewallrequests"; // Redirect to the requests page
	}
	
	@GetMapping("/viewallbookings")
	public ModelAndView viewallbookings() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewallbookings");
		List<Booking> bookings = adminService.viewAllBookings();
		mv.addObject("bookings", bookings);
		return mv;
	}
	
	@GetMapping("/addworkshop")
	public String addworkshops() {
		return "addworkshop";
	}
	
	@PostMapping("/insertworkshop") 
	public ModelAndView insertworkshop( @RequestParam("title") String title,
		    @RequestParam("description") String description,
		    @RequestParam("datetime") String datetime,
		    @RequestParam("venue") String venue,
		    @RequestParam("mode") String mode,
		    @RequestParam("contact") String contact,
		    @RequestParam("speaker") String speaker,
		    @RequestParam("resources") String resources,
		    @RequestParam("image") MultipartFile image) throws SerialException, SQLException, IOException {
			
		Blob imageBlob = new SerialBlob(image.getBytes());
		
		Workshop workshop = new Workshop();
		workshop.setTitle(title);
		workshop.setDescription(description);
		workshop.setDatetime(LocalDateTime.parse(datetime));
		workshop.setVenue(venue);
		workshop.setMode(mode);
		workshop.setContact(contact);
		workshop.setSpeaker(speaker);
		workshop.setResources(resources);
		workshop.setImage(imageBlob);
		
		String message = adminService.addWorkshop(workshop);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("addworkshop");
		mv.addObject("message", message);  // Provide feedback message
	    return mv;
	}

	@GetMapping("/viewallworkshops")
	public ModelAndView viewallworkshops() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewallworkshops");
		List<Workshop>workshops = adminService.viewAllWorkshops();
		mv.addObject("workshops", workshops);
		return mv;
	}
	
	@GetMapping("displayworkshopimage")
	public ResponseEntity<byte[]> displayworkshopimage(@RequestParam Long id) throws SQLException {
		Workshop workshop = adminService.displayWorkshopById(id);
		byte[] imagesbytes = null;
		imagesbytes = workshop.getImage().getBytes(1,(int)workshop.getImage().length());
		return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imagesbytes);
	}
	
	@GetMapping("/viewalldeletedusers")
	public ModelAndView viewDeletedUsers() {
	    ModelAndView mv = new ModelAndView("viewdeletedusers");
	    
	    List<DeletedUser> deletelist = adminService.viewDeletedUsers();
	    mv.addObject("deletelist", deletelist);
	    
	    return mv;
	}
	
	
	@GetMapping("/addadvisor")
	public ModelAndView addAdvisorForm() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("addadvisor");
		return mv;
	}
	
	@PostMapping("/insertadvisor")
	public ModelAndView addAdvisor(HttpServletRequest request) {
	    // Retrieve form data from the request
		
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
	    String email = request.getParameter("email");
	    String phonenumber = request.getParameter("phonenumber");
	    LocalDate dateofbirth = LocalDate.parse(request.getParameter("dateofbirth"));
	    String qualification = request.getParameter("qualification");
	    String specialization = request.getParameter("specialization");
	    int yearsofexperience = Integer.parseInt(request.getParameter("yearsofexperience"));
	    String barassociationmembership = request.getParameter("barassociationmembership");
	    String officeaddress = request.getParameter("officeaddress");
	    String city = request.getParameter("city");
	    String state = request.getParameter("state");
	    String postalcode = request.getParameter("postalcode");
	    String bio = request.getParameter("bio");
	    String username = request.getParameter("username");
	    String password = request.getParameter("password");

	    // Create an Advisor object and set its properties
	    Advisor advisor = new Advisor();
	    advisor.setFirstname(firstname);
	    advisor.setLastname(lastname);
	    advisor.setEmail(email);
	    advisor.setPhonenumber(phonenumber);
	    advisor.setDateofbirth(dateofbirth);
	    advisor.setQualification(qualification);
	    advisor.setSpecialization(specialization);
	    advisor.setYearsofexperience(yearsofexperience);
	    advisor.setBarassociationmembership(barassociationmembership);
	    advisor.setOfficeaddress(officeaddress);
	    advisor.setCity(city);
	    advisor.setState(state);
	    advisor.setPostalcode(postalcode);
	    advisor.setBio(bio);
	    advisor.setUsername(username);
	    advisor.setPassword(password);

	    // Save advisor using service layer
	    String message;
	    try {
	        adminService.addAdvisor(advisor);
	        message = "Advisor added successfully!";
	    } catch (Exception e) {
	        message = "Error adding advisor: " + e.getMessage();
	    }

	    // Prepare the response view
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("addadvisor");
	    mv.addObject("message", message);
	    return mv;
	}

	@GetMapping("/viewalladvisors")
	public ModelAndView viewalladvisors() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewalladvisors");
		
	
		List<Advisor> advisors = adminService.viewAllAdvisors();
		mv.addObject("advisorslist",advisors);
		return mv;	
	}

}
