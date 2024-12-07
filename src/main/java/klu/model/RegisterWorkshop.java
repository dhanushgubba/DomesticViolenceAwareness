package klu.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "register_workshop")
public class RegisterWorkshop {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "email")
	private String email;
	
	@Column(name = "workshopTitle")
	private String workshopTitle;
	
	@Column(name = "venue")
	private String venue;
	
	@Column(name = "speaker")
	private String speaker;
	
	private boolean isRegistered;
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getWorkshopTitle() {
		return workshopTitle;
	}

	public void setWorkshopTitle(String workshopTitle) {
		this.workshopTitle = workshopTitle;
	}

	public String getVenue() {
		return venue;
	}

	public void setVenue(String venue) {
		this.venue = venue;
	}

	public String getSpeaker() {
		return speaker;
	}

	public void setSpeaker(String speaker) {
		this.speaker = speaker;	
	}

	public boolean isRegistered() {
		return isRegistered;
	}

	public void setRegistered(boolean isRegistered) {
		this.isRegistered = isRegistered;
	}

	@Override
	public String toString() {
		return "RegisterWorkshop [id=" + id + ", name=" + name + ", email=" + email + ", workshopTitle=" + workshopTitle
				+ ", venue=" + venue + ", speaker=" + speaker + ", isRegistered=" + isRegistered + "]";
	}
}
