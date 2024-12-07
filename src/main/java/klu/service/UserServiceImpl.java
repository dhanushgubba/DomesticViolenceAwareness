package klu.service;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
import klu.repository.AdvisorRepository;
import klu.repository.BlogRepository;
import klu.repository.BookingRepository;
import klu.repository.CommunityRepository;
import klu.repository.CounsellorRepository;
import klu.repository.PasswordResetTokenRepository;
import klu.repository.RegisterWorkshopRepository;
import klu.repository.ShelterRepository;
import klu.repository.UserRepository;
import klu.repository.WorkshopRepository;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private CommunityRepository communityRepository;
	
	@Autowired
	private ShelterRepository shelterRepository;
	
	@Autowired
	private BookingRepository bookingRepository;
	
	@Autowired
	private CounsellorRepository counsellorRepository;
	
	@Autowired
	private WorkshopRepository workshopRepository;
	
	@Autowired
	private RegisterWorkshopRepository registerworkshopRepository;
	
	@Autowired
	private BlogRepository blogRepository;
	
	 @Autowired
	 private PasswordResetTokenRepository passwordResetTokenRepository;
	 
	 @Autowired
	 private AdvisorRepository advisorRepository;

	 @Autowired
	 private EmailService emailService;
	@Override
	public String userRegistration(User user) 
	{
		userRepository.save(user);
		return "User Registered Successfully";
	}

	@Override
	public User checkUserLogin(String username, String password) {
		// TODO Auto-generated method stub
		return userRepository.checkUserLogin(username, password);
	}

    @Override
    public User getUserById(Long id) {
        return userRepository.findById(id).orElse(null);
    }

    @Override
    public void updateUser(User user) {
        userRepository.save(user); // Save the updated user to the database
    }

	@Override
	public User getUserByEmail(String email) {
		// TODO Auto-generated method stub
		return userRepository.findByEmail(email);
	}

	@Override
	public String communityVoice(Community community) {
		// TODO Auto-generated method stub
		communityRepository.save(community);
		return "Your Response saved Successfully";
	}

	@Override
	public List<Community> findCommunityByEmail(String email) {
		// TODO Auto-generated method stub
		return communityRepository.findByEmail(email);
	}

	/*@Override
	public List<Shelter> getAllShelters() {
		// TODO Auto-generated method stub
		return shelterRepository.findAll();
	}

	@Override
	public Shelter displayShelterById(Long id) {
		// TODO Auto-generated method stub
		return shelterRepository.findById(id).orElse(null);
	}*/
	
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
	public String addBooking(Booking booking) {
		// TODO Auto-generated method stub
		bookingRepository.save(booking);
		return "Shelter Booked Successfully";
	}

	@Override
	public List<Booking> getBookingByEmail(String email) {
		// TODO Auto-generated method stub
		return bookingRepository.findByEmail(email);
	}

	@Override
	public Booking displayBookingById(Long bid) {
		// TODO Auto-generated method stub
		return bookingRepository.findById(bid).get();
	}

	@Override
	public List<Counsellor> displayAllCounsellors() {
		// TODO Auto-generated method stub
		return counsellorRepository.findAll();
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
	public String registerWorkshop(RegisterWorkshop registerworkshop) {
		// TODO Auto-generated method stub
		
		Optional<RegisterWorkshop> existingRegistration = registerworkshopRepository.findByEmail(registerworkshop.getEmail());
		if(existingRegistration.isPresent()) {
			return "You have already registered for this event";
		}
		registerworkshopRepository.save(registerworkshop);
		return "Successfully Registered the Workshop";
	}

	@Override
	public boolean isUserRegistered(String email) {
		// TODO Auto-generated method stub
		Optional<RegisterWorkshop> existingRegistration = registerworkshopRepository.findByEmail(email);
		return existingRegistration.isPresent();
	}

	@Override
	public String addBlog(Blog blog) {
		// TODO Auto-generated method stub
		blogRepository.save(blog);
		return "Blog Saved Successfully";
	}

	@Override
	public List<Blog> viewAllblogs() {
		// TODO Auto-generated method stub
		return blogRepository.findAll();
	}

	@Override
	public Blog displayBlogById(Long id) {
		// TODO Auto-generated method stub
		return blogRepository.findById(id).get();
	}

	/*@Override
	public String handleForgotPassword(String email) {
		// TODO Auto-generated method stub
		 User user = userRepository.findByEmail(email);

	        if (user != null) {
	            // Generate a unique token for password reset
	            String token = UUID.randomUUID().toString();
	            PasswordResetToken resetToken = new PasswordResetToken();
	            resetToken.setToken(token);
	            resetToken.setEmail(email);
	            resetToken.setExpiryDate(LocalDateTime.now().plusHours(1)); // Token expires in 1 hour

	            passwordResetTokenRepository.save(resetToken);

	            // Send the reset password email
	            emailService.sendPasswordResetEmail(email, token);
	            return "A password reset link has been sent to your email.";
	        } else {
	            return "No user found with that email address.";
	        }
	}

	@Override
	public String handleResetPassword(String token, String newPassword) {
		// TODO Auto-generated method stub
		PasswordResetToken resetToken = passwordResetTokenRepository.findByToken(token);

        if (resetToken == null || resetToken.getExpiryDate().isBefore(LocalDateTime.now())) {
            return "Invalid or expired token.";
        }

        User user = userRepository.findByEmail(resetToken.getEmail());
        if (user != null) {
            user.setPassword(newPassword); // Set new password
            userRepository.save(user);

            passwordResetTokenRepository.delete(resetToken); // Delete the used token

            return "Password reset successfully. You can now log in.";
        }

        return "User not found.";
	}

	@Override
	public PasswordResetToken findByToken(String token) {
		// TODO Auto-generated method stub
		return passwordResetTokenRepository.findByToken(token);
	}*/
	@Override
    public boolean generatePasswordResetToken(String email) {
        User user = userRepository.findByEmail(email);

        if (user != null) {
            String token = UUID.randomUUID().toString();
            PasswordResetToken resetToken = new PasswordResetToken();
            resetToken.setToken(token);
            resetToken.setEmail(email);
            resetToken.setExpiryDate(LocalDateTime.now().plusHours(1));

            passwordResetTokenRepository.save(resetToken);
            emailService.sendPasswordResetEmail(email, token);

            return true;
        }
        return false;
    }

    @Override
    public boolean validatePasswordResetToken(String token) {
        PasswordResetToken resetToken = passwordResetTokenRepository.findByToken(token);
        return resetToken != null && resetToken.getExpiryDate().isAfter(LocalDateTime.now());
    }

    @Override
    public boolean resetPassword(String token, String newPassword) {
        PasswordResetToken resetToken = passwordResetTokenRepository.findByToken(token);

        if (resetToken != null && resetToken.getExpiryDate().isAfter(LocalDateTime.now())) {
            User user = userRepository.findByEmail(resetToken.getEmail());
            if (user != null) {
                user.setPassword(newPassword);  // Consider encrypting the password
                userRepository.save(user);
                passwordResetTokenRepository.delete(resetToken);
                return true;
            }
        }
        return false;
    }

	@Override
	public List<Advisor> displayAllAdvisors() {
		// TODO Auto-generated method stub
		return advisorRepository.findAll();
	}

	
}
