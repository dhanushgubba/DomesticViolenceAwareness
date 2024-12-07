package klu.controller;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

import javax.sql.rowset.serial.SerialBlob;
import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import klu.model.Admin;
import klu.model.Advisor;
import klu.model.Blog;
import klu.model.Booking;
import klu.model.Community;
import klu.model.Counsellor;
import klu.model.PasswordResetToken;
import klu.model.RegisterWorkshop;
import klu.model.Request;
import klu.model.Shelter;
import klu.model.User;
import klu.model.Workshop;
import klu.repository.PasswordResetTokenRepository;
import klu.repository.UserRepository;
import klu.service.AdminService;
import klu.service.RequestService;
import klu.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private RequestService requestService;
	
	@Autowired
	private AdminService adminService;
	
	@GetMapping("/")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		return mv; 
	}
	@GetMapping("/about")
	public ModelAndView about() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("about");
		return mv;
	}
	@GetMapping("/resources")
	public ModelAndView resources() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("resources");
		return mv;
	}
	@GetMapping("/contact")
	public ModelAndView contact() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("contact");
		return mv;
	}
	
	@GetMapping("/login")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
		return mv;
	}
	
	@GetMapping("/register")
	public ModelAndView register() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("register");
		return mv;
	}

	@PostMapping("/insertuser")
	public ModelAndView insertuser(HttpServletRequest request) 
	{
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		String contact = request.getParameter("contact");
		
		User user = new User();
		user.setFirstname(firstname);
		user.setLastname(lastname);
		user.setGender(gender);
		user.setEmail(email);
		user.setUsername(username);
		user.setPassword(password);
		user.setAddress(address);
		user.setContact(contact);
		
		String message = userService.userRegistration(user);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
		
		return mv;
	}
	
	@PostMapping("/checkuserlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		User user = userService.checkUserLogin(email, password);
		
		if(user!=null) 
		{
			HttpSession session = request.getSession();
			session.setAttribute("user", user); //created a session object
			mv.setViewName("home");
		}
		else {
			mv.setViewName("login");
			mv.addObject("message", "Login Failed");
		}
		return mv;
	}
	@GetMapping("/userhome")
	public ModelAndView home()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	@GetMapping("/userprofile")
	public ModelAndView userprofile() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("userprofile");
		return mv;
	}
	
	@GetMapping("/userresources")
	public ModelAndView userresources() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("userresources");
		return mv;
	}
	
	@GetMapping("/usersupport")
	public ModelAndView usersupport() {
		ModelAndView mv= new ModelAndView();
		mv.setViewName("usersupport");
		return mv;
	}
	
	@GetMapping("/userforum")
	public ModelAndView usercommunity() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("userforum");
		return mv;
	}
	
	@GetMapping("/userrequest")
	public ModelAndView userrequest() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("userrequest");
		return mv;
	}
	
	
	/* @PostMapping("/insertrequest")
	public ModelAndView insertrequest(HttpServletRequest request) {
		
		String name = request.getParameter("name");
		String username = request.getParameter("username");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String contact = request.getParameter("contact");
		String location = request.getParameter("location");
		String urgency = request.getParameter("urgency");
		String relationship = request.getParameter("relationship");
		String nature = request.getParameter("nature");
		String description = request.getParameter("description");
		String support = request.getParameter("support");
		boolean confidential = "on".equals(request.getParameter("confidential"));
		
		
		Request requests = new Request();
		requests.setUsername(username);
		requests.setName(name);
		requests.setPhone(phone);
		requests.setEmail(email);
		requests.setContact(contact);
		requests.setLocation(location);
		requests.setUrgency(urgency);
		requests.setRelationship(relationship);
		requests.setNature(nature);
		requests.setDescription(description);
		requests.setSupport(support);
		requests.setConfidential(confidential);
		
		String message = requestService.userRequest(requests);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("userrequest");
		return mv;
		
	}*/
	@PostMapping("/insertrequest")
	public ModelAndView insertrequest(HttpServletRequest request) {
	    String email = request.getParameter("email");

	    // Check if the email is registered
	    User user = userService.getUserByEmail(email); // Assuming you have this method in your UserService

	    ModelAndView mv = new ModelAndView();
	    if (user == null) {
	        // If the email is not found, return an error message
	        mv.setViewName("userrequest");
	        mv.addObject("message", "Invalid email ID. Please provide a registered email.");
	        return mv;
	    }

	    // If the email is valid, proceed to insert the request
	    String name = request.getParameter("name");
	    String username = request.getParameter("username");
	    String phone = request.getParameter("phone");
	    String contact = request.getParameter("contact");
	    String location = request.getParameter("location");
	    String urgency = request.getParameter("urgency");
	    String relationship = request.getParameter("relationship");
	    String nature = request.getParameter("nature");
	    String description = request.getParameter("description");
	    String support = request.getParameter("support");
	    boolean confidential = "on".equals(request.getParameter("confidential"));

	    Request requests = new Request();
	    requests.setUsername(username);
	    requests.setName(name);
	    requests.setPhone(phone);
	    requests.setEmail(email);
	    requests.setContact(contact);
	    requests.setLocation(location);
	    requests.setUrgency(urgency);
	    requests.setRelationship(relationship);
	    requests.setNature(nature);
	    requests.setDescription(description);
	    requests.setSupport(support);
	    requests.setConfidential(confidential);

	    String message = requestService.userRequest(requests);
	    mv.setViewName("userrequest");
	    mv.addObject("message", message);
	    return mv;
	}

	/*@GetMapping("/viewuserrequest")
	public ModelAndView viewuserrequest(HttpServletRequest request) {
	    // Retrieve the user object from the session
	    User user = (User) request.getSession().getAttribute("user");

	    // If no user object is found in the session, redirect to login page
	    if (user == null) {
	        ModelAndView mv = new ModelAndView("login");
	        mv.addObject("message", "Please log in first.");
	        return mv;
	    }

	    // Fetch requests for the logged-in user based on their email
	    String email = user.getEmail();  // Get email from the user object
	    List<Request> userRequests = requestService.getRequestsByEmail(email);  // Fetch user-specific requests

	    ModelAndView mv = new ModelAndView("viewurequests");
	    mv.addObject("userRequests", userRequests);  // Add the user requests to the view

	    return mv;
	}*/
	
	@GetMapping("/viewuserrequest")
    public ModelAndView viewUserRequest(HttpServletRequest request) {
        // Retrieve the user object from the session
        User user = (User) request.getSession().getAttribute("user");

        // Redirect to login if no user is logged in
        if (user == null) {
            ModelAndView mv = new ModelAndView("login");
            mv.addObject("message", "Please log in first.");
            return mv;
        }

        // Fetch requests for the logged-in user based on their email
        String email = user.getEmail();
        List<Request> userRequests = requestService.getRequestsByEmail(email);

        // Fetch the assigned counsellor ID for each request
        for (Request userRequest : userRequests) {
            Long counsellorId = adminService.findCounsellorIdByRequestId(userRequest.getId());
            userRequest.setAssignedCounsellorId(counsellorId);  // Add a field in the Request entity to hold this value
        }

        // Pass data to the view
        ModelAndView mv = new ModelAndView("viewurequests");
        mv.addObject("userRequests", userRequests);

        return mv;
    }

	
	@GetMapping("/updateprofile/{id}")
    public ModelAndView showUpdateProfilePage(@PathVariable Long id, HttpSession session) {
        User user = userService.getUserById(id); // Fetch the user based on ID
        ModelAndView mv = new ModelAndView("updateprofile");
        mv.addObject("user", user); // Add the user object to the model
        return mv;
    }

    @PostMapping("/updateprofile/{id}")
    public String updateProfile(@PathVariable Long id,
                                @RequestParam("firstname") String firstname,
                                @RequestParam("lastname") String lastname,
                                @RequestParam("gender") String gender,
                                @RequestParam("email") String email,
                                @RequestParam("address") String address,
                                @RequestParam("contact") String contact,
                                HttpSession session) {
        User user = userService.getUserById(id); // Fetch the user
        if (user != null) {
            // Update the user with the new values
            user.setFirstname(firstname);
            user.setLastname(lastname);
            user.setGender(gender);
            user.setEmail(email);
            user.setAddress(address);
            user.setContact(contact);
            userService.updateUser(user);

            // Update the session with the modified user
            session.setAttribute("user", user);

            // Redirect to the profile page
            return "redirect:/userprofile";
        }
        return "redirect:/login"; 
    }
	
    /*@GetMapping("/viewuserrequest")
    public ModelAndView viewurequests() {
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("viewurequests");
    	return mv;
    }*/
    
    @PostMapping("/community")
    public ModelAndView insertcommunity(HttpServletRequest request) {

        String email = request.getParameter("email");
        User user = userService.getUserByEmail(email); 
        ModelAndView mv = new ModelAndView();
        
        if (user == null) {
            mv.setViewName("userforum");
            mv.addObject("message", "Invalid email ID. Please provide a registered email.");
            return mv;
        }
        
        String name = request.getParameter("name");
        String subject = request.getParameter("subject");
        String description = request.getParameter("description");
        
        Community cm = new Community();
        cm.setName(name);
        cm.setEmail(email);
        cm.setSubject(subject);
        cm.setDescription(description);
        
        // Set the createdDate before saving the Community object
        cm.setCreatedDate(LocalDateTime.now());  // Setting the current date and time
        
        String message = userService.communityVoice(cm);  // Assuming communityVoice method saves the community
        mv.setViewName("userforum");
        mv.addObject("message", message);
        
        return mv;
    }
    
    @GetMapping("/viewcommunity")
    public ModelAndView viewcommunity(HttpServletRequest request) {
    	User user = (User) request.getSession().getAttribute("user");
    	if (user == null) {
	        ModelAndView mv = new ModelAndView("login");
	        mv.addObject("message", "Please log in first.");
	        return mv;
	    }
    	String email = user.getEmail();
    	List<Community>userVoice = userService.findCommunityByEmail(email);
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("viewcommunity");
    	mv.addObject("userVoice",userVoice);
    	return mv;
    }
    
    @GetMapping("/viewshelter")
    public ModelAndView viewshelters() {
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("usershelter");
    	List<Shelter> shelters = userService.viewAllShelters();
		mv.addObject("shelters", shelters);
    	return mv;
    }
    
    @GetMapping("displayshelterimages")
	public ResponseEntity<byte[]> displayshelterimage(@RequestParam Long id) throws SQLException {
		Shelter shelter = userService.displayShelterById(id);
		
		byte[] imagesbytes = null;
		imagesbytes = shelter.getImage().getBytes(1,(int)shelter.getImage().length());
		return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imagesbytes);
		
	}
	
	@GetMapping("/userbook")
	public ModelAndView userbook() {
		List<Shelter> shelter = adminService.viewAllShelters();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("shelterslist", shelter);
		mv.setViewName("userbook");
		return mv;
	}
	
	@PostMapping("/bookshelter")
	public ModelAndView bookshelter(HttpServletRequest request,@RequestParam("idproof") MultipartFile file) throws IOException, SerialException, SQLException {
		String shelterName = request.getParameter("shelterName");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		LocalDate checkindate = LocalDate.parse(request.getParameter("checkindate"));
		LocalDate checkoutdate = LocalDate.parse(request.getParameter("checkoutdate"));
		String specialneeds = request.getParameter("specialneeds");
		int numpeople = Integer.parseInt(request.getParameter("numpeople"));
		String emergencyname = request.getParameter("emergencyname");
		String emergencyphone = request.getParameter("emergencyphone");
		boolean agreement = Boolean.parseBoolean(request.getParameter("agreement"));
		

		byte[] bytes = file.getBytes();
		Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
		
		Booking b = new Booking();
		b.setShelterName(shelterName);
		b.setName(name);
		b.setPhone(phone);
		b.setEmail(email);
		b.setCheckindate(checkindate);
		b.setCheckoutdate(checkoutdate);
		b.setSpecialneeds(specialneeds);
		b.setNumpeople(numpeople);
		b.setEmergencyname(emergencyname);
		b.setEmergencyphone(emergencyphone);
		b.setAgreement(agreement);
		b.setIdproof(blob);
		
		String message = userService.addBooking(b);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("bookingsuccess");
		mv.addObject("message",message);
		return mv;
	}
	
	@GetMapping("/viewmybooking")
	public ModelAndView viewmyshelters(HttpServletRequest request) {
		
		User user = (User) request.getSession().getAttribute("user");
	    if (user == null) {
	        ModelAndView mv = new ModelAndView("login");
	        mv.addObject("message", "Please log in first.");
	        return mv;
	    }
	    String email = user.getEmail();  
	    List<Booking> userBookings = userService.getBookingByEmail(email); 
	    ModelAndView mv = new ModelAndView("viewmybooking");
	    mv.addObject("userBookings", userBookings);  
	    return mv;
	}
	@GetMapping("/displayidimage")
	public ResponseEntity<byte[]> displayIdImage(@RequestParam("id") Long id) throws SQLException {
	    Booking booking = userService.displayBookingById(id);
	    byte[] imageBytes = null;

	    if (booking != null && booking.getIdproof() != null) {
	        // Retrieve bytes from the Blob object
	        imageBytes = booking.getIdproof().getBytes(1, (int) booking.getIdproof().length());
	    }

	    if (imageBytes != null) {
	        // Return the image bytes with proper content type
	        return ResponseEntity.ok()
	                .contentType(MediaType.IMAGE_JPEG)
	                .body(imageBytes);
	    } else {
	        // Return an empty response or placeholder image if no data is found
	        return ResponseEntity.notFound().build();
	    }
	}
	
	@GetMapping("/usercounsellorlist")
	public ModelAndView counsellors() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("counsellor");
		
		List<Counsellor> counsellors = userService.displayAllCounsellors();
		mv.addObject("counsellorlist", counsellors);
		return mv;
	}
	
	
	@GetMapping("/userabout")
	public ModelAndView userabout() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("userabout");
		return mv;
	}
	
	
	@GetMapping("/workshops")
    public ModelAndView viewworkshops() {
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("workshops");
    	List<Workshop> workshop = userService.viewAllWorkshops();
		mv.addObject("workshopslist", workshop);
    	return mv;
    }
    
    @GetMapping("displayworkshopimages")
	public ResponseEntity<byte[]> displayworkshopimage(@RequestParam Long id) throws SQLException {
		Workshop workshop = userService.displayWorkshopById(id);
		byte[] imagesbytes = null;
		imagesbytes = workshop.getImage().getBytes(1,(int)workshop.getImage().length());
		return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imagesbytes);
		
	}
	
	@PostMapping("/registerworkshop")
	public ModelAndView registerWorkshop(HttpServletRequest request) {
	    String email = request.getParameter("email");
	    String name = request.getParameter("name");
	    String workshopTitle = request.getParameter("workshopTitle");
	    String venue = request.getParameter("venue");
	    String speaker = request.getParameter("speaker");

	    RegisterWorkshop registerWorkshop = new RegisterWorkshop();
	    registerWorkshop.setEmail(email);
	    registerWorkshop.setName(name);
	    registerWorkshop.setWorkshopTitle(workshopTitle);
	    registerWorkshop.setVenue(venue);
	    registerWorkshop.setSpeaker(speaker);

	    // Check if user is already registered
	    if (userService.isUserRegistered(email)) {
	        // User is already registered, return appropriate message
	        ModelAndView mv = new ModelAndView();
	        mv.addObject("message", "You have already registered for this event");
	        mv.setViewName("registrationConfirmation");  // Set your view for showing the message
	        return mv;
	    }

	    // If not registered, proceed with registration
	    String message = userService.registerWorkshop(registerWorkshop);

	    ModelAndView mv = new ModelAndView();
	    mv.addObject("message", message);
	    mv.setViewName("registrationConfirmation");  // Set the view for confirmation
	    return mv;
	}
	
	
	@GetMapping("/lawpolicies")
	public ModelAndView lawpolicy() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("lawpolicy");
		return mv;
	}
	
	@GetMapping("/blogs")
	public ModelAndView blogs() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("blogs");
		return mv;
	}
	
	@PostMapping("/addblog")
	public ModelAndView addblog(@RequestParam("name") String name,
	                             @RequestParam("title") String title,
	                             @RequestParam("content") String content,
	                             @RequestParam("datetime") LocalDateTime datetime,
	                             @RequestParam("blogimage") MultipartFile blogimage) throws SerialException, SQLException, IOException {
	    ModelAndView mv = new ModelAndView();

	    Blob imageBlob = null;
	    if (blogimage != null && !blogimage.isEmpty()) {
	        imageBlob = new SerialBlob(blogimage.getBytes());
	    }

	    Blog blog = new Blog();
	    blog.setName(name);
	    blog.setTitle(title);
	    blog.setContent(content);
	    blog.setDatetime(datetime);
	    blog.setBlogimage(imageBlob);

	    String message = userService.addBlog(blog);
	    
	    mv.addObject("message", "Blog added successfully!");
	    mv.setViewName("blogs");
	    
	    return mv;
	}

	@GetMapping("/viewallblogs")
	public ModelAndView viewallblogs() {
		ModelAndView mv = new ModelAndView();
		List<Blog> blogs = userService.viewAllblogs();
		mv.addObject("blogslist", blogs);
		mv.setViewName("viewallblogs");
		return mv;
	}
	
	@GetMapping("/displayblogimage")
	public ResponseEntity<byte[]> displayblogimage(@RequestParam Long id) throws SQLException {
	    Blog blog = userService.displayBlogById(id);
	    byte[] imagesbytes = blog.getBlogimage().getBytes(1, (int) blog.getBlogimage().length());
	    return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imagesbytes);    
	}
	
	@GetMapping("/forgot-password")
    public String showForgotPasswordPage() {
        return "forgot-password"; // Create JSP page
    }

    // Handle Forgot Password Request
    @PostMapping("/forgot-password")
    public String handleForgotPassword(@RequestParam("email") String email, Model model) {
        boolean isEmailSent = userService.generatePasswordResetToken(email);

        if (isEmailSent) {
            model.addAttribute("message", "A password reset link has been sent to your email.");
        } else {
            model.addAttribute("error", "No user found with that email address.");
        }
        return "forgot-password";
    }

    // Show Reset Password Page
    @GetMapping("/reset-password")
    public String showResetPasswordPage(@RequestParam("token") String token, Model model) {
        boolean isValid = userService.validatePasswordResetToken(token);

        if (!isValid) {
            model.addAttribute("error", "Invalid or expired token.");
            return "error"; // Create an error.jsp
        }

        model.addAttribute("token", token);
        return "reset-password"; // Create JSP page
    }

    // Handle Password Reset
    @PostMapping("/reset-password")
    public String handleResetPassword(@RequestParam("token") String token,
                                      @RequestParam("newPassword") String newPassword,
                                      Model model) {

        boolean isReset = userService.resetPassword(token, newPassword);

        if (isReset) {
            model.addAttribute("message", "Password reset successfully. You can now log in.");
        } else {
            model.addAttribute("error", "Invalid or expired token.");
        }

        return "reset-password";
    }
    
    @GetMapping("/useradvisorlist")
	public ModelAndView advisors() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("advisor");
		
		List<Advisor> advisors = userService.displayAllAdvisors();
		mv.addObject("advisorlist", advisors);
		return mv;
	}
	    
	@GetMapping("/userlogout") 
	public ModelAndView userlogout() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
		return mv;
	}
}
