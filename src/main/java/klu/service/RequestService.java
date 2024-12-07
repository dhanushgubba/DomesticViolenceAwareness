package klu.service;

import java.util.List;

import klu.model.Request;

public interface RequestService {

	public String userRequest(Request requests);
	
	List<Request> getRequestsByEmail(String email);

}
