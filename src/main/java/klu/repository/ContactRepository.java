package klu.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import klu.model.Contact;

@Repository
public interface ContactRepository extends JpaRepository<Contact,Long>{

}
