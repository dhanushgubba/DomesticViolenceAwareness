package klu.model;

import jakarta.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "advisors")
public class Advisor {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;  // Unique identifier

    // Personal Details
    @Column(name = "first_name", nullable = false, length = 50)
    private String firstname;

    @Column(name = "last_name", nullable = false, length = 50)
    private String lastname;

    @Column(name = "email", unique = true, nullable = false)
    private String email;

    @Column(name = "phone_number", nullable = false, length = 15)
    private String phonenumber;

    @Column(name = "date_of_birth")
    private LocalDate dateofbirth;

    // Professional Details
    @Column(name = "qualification", nullable = false)
    private String qualification;

    @Column(name = "specialization", length = 100)
    private String specialization;

    @Column(name = "years_of_experience")
    private int yearsofexperience;

    @Column(name = "bar_association_membership")
    private String barassociationmembership;

    // Office Details
    @Column(name = "office_address", length = 255)
    private String officeaddress;

    @Column(name = "city", length = 50)
    private String city;

    @Column(name = "state", length = 50)
    private String state;

    @Column(name = "postal_code", length = 10)
    private String postalcode;

    // Additional Info
    @Column(name = "bio", length = 1000)
    private String bio;

    // Security Details
    @Column(name = "advisor_username", unique = true, nullable = false)
    private String username;

    @Column(name = "advisor_password", nullable = false)
    private String password;

    // Getters and Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }

    public LocalDate getDateofbirth() {
        return dateofbirth;
    }

    public void setDateofbirth(LocalDate dateofbirth) {
        this.dateofbirth = dateofbirth;
    }

    public String getQualification() {
        return qualification;
    }

    public void setQualification(String qualification) {
        this.qualification = qualification;
    }

    public String getSpecialization() {
        return specialization;
    }

    public void setSpecialization(String specialization) {
        this.specialization = specialization;
    }

    public int getYearsofexperience() {
        return yearsofexperience;
    }

    public void setYearsofexperience(int yearsofexperience) {
        this.yearsofexperience = yearsofexperience;
    }

    public String getBarassociationmembership() {
        return barassociationmembership;
    }

    public void setBarassociationmembership(String barassociationmembership) {
        this.barassociationmembership = barassociationmembership;
    }

    public String getOfficeaddress() {
        return officeaddress;
    }

    public void setOfficeaddress(String officeaddress) {
        this.officeaddress = officeaddress;
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

    public String getBio() {
        return bio;
    }

    public void setBio(String bio) {
        this.bio = bio;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    // toString Method
    @Override
    public String toString() {
        return "Advisor [id=" + id + ", firstname=" + firstname + ", lastname=" + lastname + ", email=" + email
                + ", phonenumber=" + phonenumber + ", dateofbirth=" + dateofbirth + ", qualification=" + qualification
                + ", specialization=" + specialization + ", yearsofexperience=" + yearsofexperience
                + ", barassociationmembership=" + barassociationmembership + ", officeaddress=" + officeaddress
                + ", city=" + city + ", state=" + state + ", postalcode=" + postalcode + ", bio=" + bio + ", username="
                + username + ", password=" + password + "]";
    }
}
