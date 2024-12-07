package klu.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import klu.model.Community;

@Repository
public interface CommunityRepository extends JpaRepository<Community,Long>{

	List<Community> findByEmail(String email);
}
