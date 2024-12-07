package klu.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import klu.model.CounselorAssignment;

@Repository
public interface CounselorAssignmentRepository extends JpaRepository<CounselorAssignment, Long>{
	
	 @Query("SELECT a.counsellorId FROM CounselorAssignment a WHERE a.requestId = :requestId")
	Long findCounsellorIdByRequestId(@Param("requestId") Long requestId);
}
