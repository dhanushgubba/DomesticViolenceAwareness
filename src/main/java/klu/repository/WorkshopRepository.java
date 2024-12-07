package klu.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import klu.model.Workshop;

public interface WorkshopRepository extends JpaRepository<Workshop, Long> {

}
