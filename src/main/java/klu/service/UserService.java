package klu.service;

import java.util.List;
import java.util.Optional;

import klu.model.Advisor;
import klu.model.Blog;
import klu.model.Booking;
import klu.model.Community;
import klu.model.Counsellor;
import klu.model.PasswordResetToken;
import klu.model.RegisterWorkshop;
import klu.model.Shelter;
import klu.model.User;
import klu.model.Workshop;

public interface UserService {

	public String userRegistration(User user);
	
	public User checkUserLogin(String username, String password);
	
	User getUserById(Long id);
	 
	void updateUser(User user);
	
	User getUserByEmail(String email);
	
	public String communityVoice(Community community);
	
	List<Community>findCommunityByEmail(String email);	
	List<Counsellor> displayAllCounsellors();
	
	List<Advisor> displayAllAdvisors();

	public List<Shelter> viewAllShelters();
	public Shelter displayShelterById(Long sid);

	
	List<Booking> getBookingByEmail(String email);
	public Booking displayBookingById(Long bid);
	public String addBooking(Booking booking);
	
	public List<Workshop> viewAllWorkshops();
	public Workshop displayWorkshopById(Long id);
	
	public boolean isUserRegistered(String email);
	public String registerWorkshop(RegisterWorkshop registerworkshop);
	
	public String addBlog(Blog blog);
	public List<Blog> viewAllblogs();
	public Blog displayBlogById(Long id);
	
	/*public String handleForgotPassword(String email);
	public String handleResetPassword(String token, String newPassword);
	PasswordResetToken findByToken(String token);*/
	boolean generatePasswordResetToken(String email);
    boolean validatePasswordResetToken(String token);
    boolean resetPassword(String token, String newPassword);
	
}
