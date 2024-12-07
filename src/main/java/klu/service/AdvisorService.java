package klu.service;

import klu.model.Admin;
import klu.model.Advisor;
import klu.model.Contact;

public interface AdvisorService {
	
	public Advisor checkAdvisorLogin(String uname, String pwd);
	
	public String addContact(Contact contact);
}
