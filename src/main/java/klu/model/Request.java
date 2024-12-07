package klu.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;

@Entity
@Table(name = "request_table")
public class Request {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(name = "username")
	private String username;
	@Column(name = "name",nullable=false)
	private String name;
	@Column(name = "phone",nullable=false)
	private String phone;
	@Column(name = "email",nullable=false)
	private String email;
	@Column(name = "contact",nullable=false)
	private String contact;
	@Column(name = "location",nullable=false)
	private String location;
	@Column(name = "urgency",nullable=false)
	private String urgency;
	@Column(name = "relationship",nullable=false)
	private String relationship;
	@Column(name = "nature",nullable=false)
	private String nature;
	@Column(name = "description",nullable=false)
	private String description;
	@Column(name = "support",nullable=false,length = 550)
	private String support;
	@Column(name = "confidential")
	private boolean confidential;
	
	@Transient
	private Long assignedCounsellorId;
	
	public Long getAssignedCounsellorId() {
		return assignedCounsellorId;
	}
	public void setAssignedCounsellorId(Long assignedCounsellorId) {
		this.assignedCounsellorId = assignedCounsellorId;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getUrgency() {
		return urgency;
	}
	public void setUrgency(String urgency) {
		this.urgency = urgency;
	}
	public String getRelationship() {
		return relationship;
	}
	public void setRelationship(String relationship) {
		this.relationship = relationship;
	}
	public String getNature() {
		return nature;
	}
	public void setNature(String nature) {
		this.nature = nature;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getSupport() {
		return support;
	}
	public void setSupport(String support) {
		this.support = support;
	}
	public boolean isConfidential() {
		return confidential;
	}
	public void setConfidential(boolean confidential) {
		this.confidential = confidential;
	}
	@Override
	public String toString() {
		return "Request [id=" + id + ", username=" + username + ", name=" + name + ", phone=" + phone + ", email="
				+ email + ", contact=" + contact + ", location=" + location + ", urgency=" + urgency + ", relationship="
				+ relationship + ", nature=" + nature + ", description=" + description + ", support=" + support
				+ ", confidential=" + confidential + ", assignedCounsellorId=" + assignedCounsellorId + "]";
	}
	
	
	
}
