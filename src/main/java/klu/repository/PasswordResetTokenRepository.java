package klu.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import klu.model.PasswordResetToken;

public interface PasswordResetTokenRepository extends JpaRepository<PasswordResetToken, Long>{
	PasswordResetToken findByToken(String token);
}
