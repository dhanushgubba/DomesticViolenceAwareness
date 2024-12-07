package klu.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import klu.model.RegisterWorkshop;

@Repository
public interface RegisterWorkshopRepository extends JpaRepository<RegisterWorkshop, Long>{

	 Optional<RegisterWorkshop> findByEmail(String email);
}
