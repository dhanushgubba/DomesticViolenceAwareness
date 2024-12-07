package klu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import klu.model.Advisor;
import klu.model.Contact;
import klu.repository.AdvisorRepository;
import klu.repository.ContactRepository;

@Service
public class AdvisorServiceImpl implements AdvisorService{

	@Autowired
	private AdvisorRepository advisorRepository;
	
	
	@Autowired
	private ContactRepository contactRepository;
	
	@Override
	public Advisor checkAdvisorLogin(String uname, String pwd) {
		// TODO Auto-generated method stub
		return advisorRepository.checkAdvisorLogin(uname, pwd);
	}
	@Override
	public String addContact(Contact contact) {
		// TODO Auto-generated method stub
		contactRepository.save(contact);
		return "Contact Saved Successfully";
	}
	
	

}
