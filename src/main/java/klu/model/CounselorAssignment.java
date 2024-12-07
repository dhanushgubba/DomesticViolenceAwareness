package klu.model;

import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "counselor_assignment")
public class CounselorAssignment {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(name="request_id")
	private Long requestId;
	@Column(name="counsellor_id")
	private Long counsellorId;
	
	@Column(name = "assigned_date")
	private LocalDateTime assignedDate = LocalDateTime.now();
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	
	public Long getRequestId() {
		return requestId;
	}
	public void setRequestId(Long requestId) {
		this.requestId = requestId;
	}
	public Long getCounsellorId() {
		return counsellorId;
	}
	public void setCounsellorId(Long counsellorId) {
		this.counsellorId = counsellorId;
	}
	public LocalDateTime getAssignedDate() {
		return assignedDate;
	}
	public void setAssignedDate(LocalDateTime assignedDate) {
		this.assignedDate = assignedDate;
	}
	@Override
	public String toString() {
		return "CounselorAssignment [id=" + id + ", requestId=" + requestId + ", counsellorId=" + counsellorId
				+ ", assignedDate=" + assignedDate + "]";
	}
	
	
	
	
}
