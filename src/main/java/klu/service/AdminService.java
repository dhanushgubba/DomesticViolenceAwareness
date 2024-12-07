package klu.service;

import java.util.List;

import org.springframework.ui.Model;

import klu.model.Admin;
import klu.model.Advisor;
import klu.model.Booking;
import klu.model.Counsellor;
import klu.model.DeletedUser;
import klu.model.Request;
import klu.model.Shelter;
import klu.model.User;
import klu.model.Workshop;

public interface AdminService {

	/*public String addUser(User user);*/
	
	public List<User> viewAllUsers();
	public Admin checkAdminLogin(String uname, String pwd);
	public long usercount();
	
	public List<Request> viewAllRequests();
	public long requestcount();
	
	
	public String addUser(User user);
	/*public String deleteUser(Long id);*/
	public void deleteUser(Long id);
	public String updateUser(User user);
	public User displayUserById(Long id);
	public List<DeletedUser> viewDeletedUsers();
	
	public String addCounsellor(Counsellor counsellor);
	public List<Counsellor> viewAllCounsellors();
	public long counsellorcount();
	public Counsellor findCounsellorById(Long id);
	public void updateCounsellor(Counsellor counsellor);
	public void deleteCounsellor(Long id);
	
	
	public String addAdvisor(Advisor advisor);
	public List<Advisor> viewAllAdvisors();
	
	//image upload and display operations
	public String addShelter(Shelter shelter);
	public List<Shelter> viewAllShelters();
	public Shelter displayShelterById(Long sid);
	public String updateShelter(Shelter shelter);
	public String deleteShelter(Long id);
	
	public boolean assignCounsellor(Long requestId, Long counsellorId);		
	Long findCounsellorIdByRequestId(Long requestId);
	
	
	public List<Booking> viewAllBookings();
	
	public String addWorkshop(Workshop workshop);
	public List<Workshop> viewAllWorkshops();
	public Workshop displayWorkshopById(Long id);
	
}
