package klu.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import klu.model.DeletedUser;


@Repository
public interface DeletedUserRepository extends JpaRepository<DeletedUser, Long> {
}
