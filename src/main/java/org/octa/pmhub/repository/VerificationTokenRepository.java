package org.octa.pmhub.repository;

import java.util.Optional;

import org.octa.pmhub.model.VerificationToken;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface VerificationTokenRepository extends JpaRepository<VerificationToken, Integer>{

	@Query("SELECT new org.octa.pmhub.model.VerificationToken(vt.userId, vt.token, vt.expiryDatetime) FROM VerificationToken vt WHERE vt.token=?1")
	Optional<VerificationToken> findByToken(String token);
	
}

