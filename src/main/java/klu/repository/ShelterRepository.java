package klu.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import klu.model.Shelter;
@Repository
public interface ShelterRepository extends JpaRepository<Shelter,Long>{
	
}
