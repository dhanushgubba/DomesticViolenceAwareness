package klu.model;

import java.sql.Blob;
import java.time.LocalDate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "bookshelter_table")
public class Booking {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(name = "shelterName")
	private String shelterName;
	@Column(name = "name")
	private String name;
	@Column(name = "phone")
	private String phone;
	@Column(name = "email")
	private String email;
	@Column(name = "idproof")
	private Blob idproof;
	@Column(name = "checkindate")
	private LocalDate checkindate;
	@Column(name = "checkoutdate")
	private LocalDate checkoutdate;
	@Column(name = "specialneeds")
	private String specialneeds;
	@Column(name = "numpeople")
	private int numpeople;
	@Column(name = "emergencyname")
	private String emergencyname;
	@Column(name = "emergencyphone")
	private String emergencyphone;
	@Column(name = "agreement")
	private boolean agreement;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getShelterName() {
		return shelterName;
	}
	public void setShelterName(String shelterName) {
		this.shelterName = shelterName;
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
	public Blob getIdproof() {
		return idproof;
	}
	public void setIdproof(Blob idproof) {
		this.idproof = idproof;
	}
	public LocalDate getCheckindate() {
		return checkindate;
	}
	public void setCheckindate(LocalDate checkindate) {
		this.checkindate = checkindate;
	}
	public LocalDate getCheckoutdate() {
		return checkoutdate;
	}
	public void setCheckoutdate(LocalDate checkoutdate) {
		this.checkoutdate = checkoutdate;
	}
	public String getSpecialneeds() {
		return specialneeds;
	}
	public void setSpecialneeds(String specialneeds) {
		this.specialneeds = specialneeds;
	}
	public int getNumpeople() {
		return numpeople;
	}
	public void setNumpeople(int numpeople) {
		this.numpeople = numpeople;
	}
	public String getEmergencyname() {
		return emergencyname;
	}
	public void setEmergencyname(String emergencyname) {
		this.emergencyname = emergencyname;
	}
	public String getEmergencyphone() {
		return emergencyphone;
	}
	public void setEmergencyphone(String emergencyphone) {
		this.emergencyphone = emergencyphone;
	}
	public boolean isAgreement() {
		return agreement;
	}
	public void setAgreement(boolean agreement) {
		this.agreement = agreement;
	}
	@Override
	public String toString() {
		return "Booking [id=" + id + ", shelterName=" + shelterName + ", name=" + name + ", phone=" + phone + ", email="
				+ email + ", idproof=" + idproof + ", checkindate=" + checkindate + ", checkoutdate=" + checkoutdate
				+ ", specialneeds=" + specialneeds + ", numpeople=" + numpeople + ", emergencyname=" + emergencyname
				+ ", emergencyphone=" + emergencyphone + ", agreement=" + agreement + "]";
	}
}
