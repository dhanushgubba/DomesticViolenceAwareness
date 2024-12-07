package klu.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import klu.model.Request;

@Repository
public interface RequestRepository extends JpaRepository<Request, Long>{

	List<Request> findByUsername(String username);
	
	List<Request> findByEmail(String email);
}
