package klu.service;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import klu.model.Admin;
import klu.model.Advisor;
import klu.model.Booking;
import klu.model.Counsellor;
import klu.model.CounselorAssignment;
import klu.model.DeletedUser;
import klu.model.Request;
import klu.model.Shelter;
import klu.model.User;
import klu.model.Workshop;
import klu.repository.AdminRepository;
import klu.repository.AdvisorRepository;
import klu.repository.BookingRepository;
import klu.repository.CounsellorRepository;
import klu.repository.CounselorAssignmentRepository;
import klu.repository.DeletedUserRepository;
import klu.repository.RequestRepository;
import klu.repository.ShelterRepository;
import klu.repository.UserRepository;
import klu.repository.WorkshopRepository;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private RequestRepository requestRepository;
	
	@Autowired
	private CounsellorRepository counsellorRepository;

	@Autowired
	private ShelterRepository shelterRepository;
	
	@Autowired
	private CounselorAssignmentRepository counselorAssignmentRepository;
	
	@Autowired
	private BookingRepository bookingRepository;
	
	@Autowired
	private WorkshopRepository workshopRepository;
	
	@Autowired
	private DeletedUserRepository deletedUserRepository;
	
	@Autowired
	private AdvisorRepository advisorRepository;
	
	@Override
	public List<User> viewAllUsers() {
		return userRepository.findAll(); 
	}

	@Override
	public Admin checkAdminLogin(String uname, String pwd) {
		return adminRepository.checkAdminLogin(uname, pwd);
	}

	@Override
	public long usercount() {
		// TODO Auto-generated method stub
		return userRepository.count();
	}

	@Override
	public List<Request> viewAllRequests() {
		// TODO Auto-generated method stub
		return requestRepository.findAll();
	}

	@Override
	public long requestcount() {
		// TODO Auto-generated method stub
		return requestRepository.count();
	}

	@Override
	public List<Counsellor> viewAllCounsellors() {
		// TODO Auto-generated method stub
		return counsellorRepository.findAll();
	}

	@Override
	public long counsellorcount() {
		// TODO Auto-generated method stub
		return counsellorRepository.count();
	}

	public String addUser(User user) {
		// TODO Auto-generated method stub
		userRepository.save(user);
		return "User Added Successfully";
	}
	
	
	/*@Override
	public String deleteUser(Long id) {
		// TODO Auto-generated method stub
		userRepository.deleteById(id);
		return "User Deleted Successfully";
	}*/
	
	public void deleteUser(Long id) {
        // Get the user to be deleted
        User user = userRepository.findById(id).orElse(null);
        
        if (user != null) {
            // Create DeletedUser object to store in backup
            DeletedUser deletedUser = new DeletedUser();
            deletedUser.setFirstname(user.getFirstname());
            deletedUser.setName(user.getLastname());
            deletedUser.setGender(user.getGender());
            deletedUser.setEmail(user.getEmail());
            deletedUser.setUsername(user.getUsername());
            deletedUser.setContact(user.getContact());
            deletedUser.setAddress(user.getAddress());
            deletedUser.setDeletedAt(LocalDateTime.now()); // Store the deletion timestamp
            
            // Save deleted user data to DeletedUser table
            deletedUserRepository.save(deletedUser);
            
            // Now delete the original user
            userRepository.delete(user);
        }
    }
	

    // Fetch a user by ID
    public User getUserById(Long id) {
        return userRepository.findById(id).orElse(null);
    }
	@Override
	public String updateUser(User user) {
		// TODO Auto-generated method stub
		User existinguser = userRepository.findById(user.getId()).orElseThrow(() -> new RuntimeException("User not Found"));
		existinguser.setFirstname(user.getFirstname());
		existinguser.setLastname(user.getLastname());
		existinguser.setUsername(user.getUsername());
		existinguser.setContact(user.getContact());
		existinguser.setAddress(user.getAddress());
		
		userRepository.save(existinguser);
		return "User Updated Successfully";
	}
	
	@Override
	public User displayUserById(Long id) {
		// TODO Auto-generated method stub
		return userRepository.findById(id).get();
	}
	
	@Override
	public String addCounsellor(Counsellor counsellor) {
		// TODO Auto-generated method stub
		counsellorRepository.save(counsellor);
		return "Counsellor Added Successfully";
	}

	@Override
	public Counsellor findCounsellorById(Long id) {
		// TODO Auto-generated method stub
		return counsellorRepository.findById(id).orElse(null);
	}

	@Override
	public void updateCounsellor(Counsellor counsellor) {
		// TODO Auto-generated method stub
		counsellorRepository.save(counsellor);
		
	}

	@Override
	public void deleteCounsellor(Long id) {
		// TODO Auto-generated method stub
		counsellorRepository.deleteById(id);
	}

	@Override
	public String addShelter(Shelter shelter) {
		// TODO Auto-generated method stub
		shelterRepository.save(shelter);
		return "Shelter added Successfully";
	}

	@Override
	public List<Shelter> viewAllShelters() {
		// TODO Auto-generated method stub
		return shelterRepository.findAll();
	}

	@Override
	public Shelter displayShelterById(Long sid) {
		// TODO Auto-generated method stub
		return shelterRepository.findById(sid).get();
	}

	@Override
	public String deleteShelter(Long id) {
		// TODO Auto-generated method stub
		shelterRepository.deleteById(id);
		return "Shelter Deleted Successfully";
	}

	@Override
	public String updateShelter(Shelter shelter) {
	    Shelter existingShelter = shelterRepository.findById(shelter.getId())
	            .orElseThrow(() -> new RuntimeException("Shelter not found"));

	    // Update the fields
	    existingShelter.setName(shelter.getName());
	    existingShelter.setType(shelter.getType());
	    existingShelter.setSupport(shelter.getSupport());
	    existingShelter.setContact(shelter.getContact());
	    existingShelter.setLocation(shelter.getLocation());
	    existingShelter.setDescription(shelter.getDescription());

	    // Update image only if a new one is provided
	    if (shelter.getImage() != null) {
	        existingShelter.setImage(shelter.getImage());
	    }

	    shelterRepository.save(existingShelter);
	    return "Shelter updated successfully";
	}

	@Override
	public boolean assignCounsellor(Long requestId, Long counsellorId) {
		// TODO Auto-generated method stub
		try {
			CounselorAssignment assignment = new CounselorAssignment();
			assignment.setRequestId(requestId);
			assignment.setCounsellorId(counsellorId);
			counselorAssignmentRepository.save(assignment);
			return true;
		}catch(Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Long findCounsellorIdByRequestId(Long requestId) {
		// TODO Auto-generated method stub
		return counselorAssignmentRepository.findCounsellorIdByRequestId(requestId);
	}

	@Override
	public List<Booking> viewAllBookings() {
		// TODO Auto-generated method stub
		return bookingRepository.findAll();
	}

	@Override
	public String addWorkshop(Workshop workshop) {
		// TODO Auto-generated method stub
		workshopRepository.save(workshop);
		return "Workshop Added Successfully";
	}

	@Override
	public List<Workshop> viewAllWorkshops() {
		// TODO Auto-generated method stub
		return workshopRepository.findAll();
	}

	@Override
	public Workshop displayWorkshopById(Long id) {
		// TODO Auto-generated method stub
		return workshopRepository.findById(id).get();
	}

	@Override
	public List<DeletedUser> viewDeletedUsers() {
		// TODO Auto-generated method stub
		return deletedUserRepository.findAll();
	}

	@Override
	public String addAdvisor(Advisor advisor) {
		// TODO Auto-generated method stub
		advisorRepository.save(advisor);
		return "Advisor Saved Successfully";
	}

	@Override
	public List<Advisor> viewAllAdvisors() {
		// TODO Auto-generated method stub
		return advisorRepository.findAll();
	}

}
