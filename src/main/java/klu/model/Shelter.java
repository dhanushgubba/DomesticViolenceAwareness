package klu.model;

import java.sql.Blob;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "shelter_table")
public class Shelter {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	@Column(name = "name",nullable = false)
	private String name;
	@Column(name = "type", nullable = false)
	private String type;
	@Column(name = "support", nullable = false)
	private String support;
	@Column(name = "contact", nullable = false)
	private String contact;
	@Column(name = "location",nullable = false)
	private String location;
	@Column(name = "description",nullable = false)
	private String description;
	@Column(name = "simage", nullable = false)
	private Blob image;
	
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getSupport() {
		return support;
	}
	public void setSupport(String support) {
		this.support = support;
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Blob getImage() {
		return image;
	}
	public void setImage(Blob image) {
		this.image = image;
	}
	@Override
	public String toString() {
		return "Shelter [id=" + id + ", name=" + name + ", type=" + type + ", support=" + support + ", contact="
				+ contact + ", location=" + location + ", description=" + description + ", image=" + image + "]";
	}
	
	
}
