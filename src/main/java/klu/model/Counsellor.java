package klu.model;

import java.time.LocalDate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "counsellor_table")
public class Counsellor {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	@Column(name = "name")
	private String name;
	@Column(name = "gender")
	private String gender;
	@Column(name = "dob")
	private LocalDate dob;
	@Column(name = "phone", unique = true)
	private String phone;
	@Column(name = "email", unique = true)
	private String email;
	@Column(name = "address")
	private String address;
	@Column(name = "city")
	private String city;
	@Column(name = "state")
	private String state;
	@Column(name = "postalcode")
	private String postalcode;
	@Column(name = "qualification")
	private String qualification;
	@Column(name = "experience")
	private String experience;
	@Column(name = "specialization")
	private String specialization;
	@Column(name = "certification")
	private String certification;
	@Column(name = "licenceno")
	private String licenceno;
	@Column(name = "languages")
	private String languages;
	@Column(name = "availability")
	private String availability;
	@Column(name = "status")
	private String status;
	@Column(name = "hcases")
	private String hcases;
	@Column(name = "counsellingmode")
	private String counsellingmode;
	@Column(name = "therapyissues")
	private String therapyissues;
	@Column(name = "password")
	private String password;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public LocalDate getDob() {
		return dob;
	}
	public void setDob(LocalDate dob) {
		this.dob = dob;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getPostalcode() {
		return postalcode;
	}
	public void setPostalcode(String postalcode) {
		this.postalcode = postalcode;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getSpecialization() {
		return specialization;
	}
	public void setSpecialization(String specialization) {
		this.specialization = specialization;
	}
	public String getCertification() {
		return certification;
	}
	public void setCertification(String certification) {
		this.certification = certification;
	}
	public String getLicenceno() {
		return licenceno;
	}
	public void setLicenceno(String licenceno) {
		this.licenceno = licenceno;
	}
	public String getLanguages() {
		return languages;
	}
	public void setLanguages(String languages) {
		this.languages = languages;
	}
	public String getAvailability() {
		return availability;
	}
	public void setAvailability(String availability) {
		this.availability = availability;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getHcases() {
		return hcases;
	}
	public void setHcases(String hcases) {
		this.hcases = hcases;
	}
	public String getCounsellingmode() {
		return counsellingmode;
	}
	public void setCounsellingmode(String counsellingmode) {
		this.counsellingmode = counsellingmode;
	}
	public String getTherapyissues() {
		return therapyissues;
	}
	public void setTherapyissues(String therapyissues) {
		this.therapyissues = therapyissues;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Counsellor [id=" + id + ", name=" + name + ", gender=" + gender + ", dob=" + dob + ", phone=" + phone
				+ ", email=" + email + ", address=" + address + ", city=" + city + ", state=" + state + ", postalcode="
				+ postalcode + ", qualification=" + qualification + ", experience=" + experience + ", specialization="
				+ specialization + ", certification=" + certification + ", licenceno=" + licenceno + ", languages="
				+ languages + ", availability=" + availability + ", status=" + status + ", hcases=" + hcases
				+ ", counsellingmode=" + counsellingmode + ", therapyissues=" + therapyissues + ", password=" + password
				+ "]";
	}
}
