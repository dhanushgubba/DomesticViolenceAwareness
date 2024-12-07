package klu.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import klu.model.Admin;
import klu.model.Advisor;

@Repository
public interface AdvisorRepository extends JpaRepository<Advisor,Long>{
	
	@Query("select ad from Advisor ad where ad.username=?1 and ad.password=?2")
	public Advisor checkAdvisorLogin(String uname, String pwd);

}
