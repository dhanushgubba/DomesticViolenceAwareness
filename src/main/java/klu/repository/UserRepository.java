package klu.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import klu.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long>{

	@Query("select u from User u where u.email=?1 and u.password=?2")
	public User checkUserLogin(String email, String password);
	/*query returns object which object(User) object */
	
	 User findByEmail(String email);
	
}
